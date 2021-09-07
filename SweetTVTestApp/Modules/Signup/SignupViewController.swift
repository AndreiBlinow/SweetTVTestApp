
import UIKit

protocol SignupViewProtocol: AnyObject {
    func showSMSField()
    func showAlert()
}

class SignupViewController: UIViewController, SignupViewProtocol, UITextFieldDelegate {
   
    var presenter: SignupPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setConstraints()
    }
    
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
        let alco = UIAlertController(title: "Error", message: "Wrong values", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default)
        alco.addAction(action)
        return alco
    }()
    
    private func setConstraints() {
        view.addSubview(self.phoneTextfield)
        view.addSubview(self.confirmationCodetextField)
        view.addSubview(self.signUpbutton)
        NSLayoutConstraint.activate([
            phoneTextfield.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            phoneTextfield.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 90),
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
        
    func showSMSField() {
        confirmationCodetextField.isHidden = false
        phoneTextfield.isUserInteractionEnabled = false
    }

    func showAlert() {
        present(alertController, animated: true){
            self.phoneTextfield.text = ""
            self.phoneTextfield.isUserInteractionEnabled = true
            self.confirmationCodetextField.text = ""
            self.confirmationCodetextField.isHidden = true
        }
    }
}
