

import UIKit
import GRPC
import SwiftProtobuf
import Foundation
import NIO

protocol SignupViewProtocol: AnyObject {
    //func setUrlButtonTitle(with title: String)
}

class SignupViewController: UIViewController, SignupViewProtocol {
    
    var presenter: SignupPresenterProtocol!
    //    let configurator: SignupConfiguratorProtocol = SignupConfigurator()
    var textField = UITextField()
    var signUpbutton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .red
        btn.setTitle("Confirm", for: .normal)
        btn.addTarget(self, action: #selector(authNewUser), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    var alertController = UIAlertController(title: "Error", message: "Wrong Number", preferredStyle: .alert)
    var userPhoneNumber = ""
    var confirmationCode = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createSignUpTextTextField()
        createAlert()
        setConstraints()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        textField.becomeFirstResponder()
    }
    
    func createSignUpTextTextField() {
        textField.borderStyle = .roundedRect
        textField.contentVerticalAlignment = .center
        textField.textAlignment = .center
        textField.placeholder = "Enter your phone number 380*********"
        textField.keyboardType = .numbersAndPunctuation
//        textField.becomeFirstResponder()
        textField.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    func createAlert(){
        let action = UIAlertAction(title: "Ok", style: .default) { (action) in
            
        }
        alertController.addAction(action)
    }
    
    private func setConstraints() {
        view.addSubview(self.textField)
        view.addSubview(self.signUpbutton)
        NSLayoutConstraint.activate([
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            textField.widthAnchor.constraint(equalToConstant: 200),
            textField.heightAnchor.constraint(equalToConstant: 31),
            signUpbutton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signUpbutton.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 30),
            signUpbutton.widthAnchor.constraint(equalToConstant: 100),
            signUpbutton.heightAnchor.constraint(equalToConstant: 31),
        ])
    }
    
    
    @objc func authNewUser() {
        if userPhoneNumber == "" {
            var phoneNumber = textField.text
            guard let number = Int(phoneNumber!) else {
                self.present(alertController, animated: true) {
                    self.textField.text = ""
                }
                return
            }
            if number > 380000000000 && number < 390000000000 {
                userPhoneNumber = textField.text!
                presenter.phoneNumberEntered(phone: phoneNumber ?? "")
                self.textField.placeholder = "Enter confirmation code"
            }else {
                self.present(alertController, animated: true) {
                    self.textField.text = ""
                }
            }
        } else {
            var confirmationCode = textField.text
            guard let number = Int(confirmationCode!) else {
                self.present(alertController, animated: true) {
                    self.textField.text = ""
                }
                return
            }
            if number < 10000 {
                confirmationCode = textField.text!
                guard let code =  Int32(confirmationCode ?? "") else {
                    return
                }
                presenter.confirmationCodeEntered(code: code)
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    self.present(ChannelsViewController(), animated: false)
                }
                self.textField.placeholder = "Enter confirmation code"
            }else {
                self.present(alertController, animated: true) {
                    self.textField.text = ""
                }
            }
        }
    }
}
