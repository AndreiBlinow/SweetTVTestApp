

import UIKit
import GRPC
import SwiftProtobuf
import Foundation
import NIO

protocol SignupViewProtocol: AnyObject {
    //func setUrlButtonTitle(with title: String)
    func showSMSFiled()
}

class SignupViewController: UIViewController, SignupViewProtocol, UITextFieldDelegate {
   
    var presenter: SignupPresenterProtocol!
    var phoneNumberSet = false
    //    let configurator: SignupConfiguratorProtocol = SignupConfigurator()
    var phoneTextfield: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .roundedRect
        tf.contentVerticalAlignment = .center
        tf.textAlignment = .center
        tf.placeholder = "Enter your phone number 380*********"
        tf.keyboardType = .numbersAndPunctuation
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    var confirmationCodetextField: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .roundedRect
        tf.contentVerticalAlignment = .center
        tf.textAlignment = .center
        tf.placeholder = "Enter confirmation code"
        tf.keyboardType = .numbersAndPunctuation
        //        textField.becomeFirstResponder()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isHidden = true
        return tf
    }()
    
    var signUpbutton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .red
        btn.setTitle("Confirm", for: .normal)
        btn.addTarget(self, action: #selector(authNewUser), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    var alertController: UIAlertController = {
        let alco = UIAlertController(title: "Error", message: "Wrong Number", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default) { (action) in
            
        }
        alco.addAction(action)
        return alco
    }()
    
    
    var userPhoneNumber = ""
    var confirmationCode = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setConstraints()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        phoneTextfield.becomeFirstResponder()
    }
    
    private func setConstraints() {
        view.addSubview(self.phoneTextfield)
        view.addSubview(self.confirmationCodetextField)
        view.addSubview(self.signUpbutton)
        NSLayoutConstraint.activate([
            phoneTextfield.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            phoneTextfield.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            phoneTextfield.widthAnchor.constraint(equalToConstant: 200),
            phoneTextfield.heightAnchor.constraint(equalToConstant: 31),
            confirmationCodetextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),confirmationCodetextField.topAnchor.constraint(equalTo: phoneTextfield.bottomAnchor, constant: 30),confirmationCodetextField.widthAnchor.constraint(equalToConstant: 200),confirmationCodetextField.heightAnchor.constraint(equalToConstant: 31),
            signUpbutton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signUpbutton.topAnchor.constraint(equalTo: confirmationCodetextField.bottomAnchor, constant: 30),
            signUpbutton.widthAnchor.constraint(equalToConstant: 100),
            signUpbutton.heightAnchor.constraint(equalToConstant: 31),
        ])
    }
    
    @objc func authNewUser() {
        if phoneTextfield.isUserInteractionEnabled {
            guard let phone = phoneTextfield.text else {
                return
            }
            presenter.phoneNumberEntered(phone: phone)
           
        } else {
            guard let code = confirmationCodetextField.text else {
                return
            }
            presenter.confirmationCodeEntered(code: code)
        }
        
    }
        
    //    @objc func authNewUser() {
    //
    //        if !phoneNumberSet {
    //            guard let phone = phoneTextfield.text else {
    //                return
    //            }
    //            if !setPhoneNumber(number: phone) {
    //                self.present(alertController, animated: true, completion: nil)
    //            }
    //        } else {
    //            guard let code = confirmationCodetextField.text else {
    //                return
    //            }
    //            setConfirmationCode(code: code)
    //        }
    //    }
    
    func showSMSFiled() {
        confirmationCodetextField.isHidden = false
        phoneTextfield.isUserInteractionEnabled = false
    }
    
//    func setPhoneNumber(number: String) -> Bool {
//        let setPhoneResult = presenter.phoneNumberEntered(phone: number)
//        if setPhoneResult == "ok" {
//            phoneNumberSet = true
//            phoneTextfield.allowsEditingTextAttributes = false
//            confirmationCodetextField.isHidden = false
//            return true
//        } else {return false}
//    }
    
//    func setConfirmationCode(code: String) -> Bool {
//        let setCodeResult = presenter.confirmationCodeEntered(code: code)
//        if setCodeResult != "ok" {
//            self.present(alertController, animated: true, completion: nil)
//            return false
//        }
//        return true
//    }
    
}
