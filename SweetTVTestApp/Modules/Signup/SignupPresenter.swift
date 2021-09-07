

protocol SignupPresenterProtocol: AnyObject {
    func phoneNumberEntered(phone: String)
    func confirmationCodeEntered(code: String)
    var router: SignupRouterProtocol! { set get }
    func userPhoneNumberSet()
    func userCodeSet()
    func signUpError()
}
        
class SignupPresenter: SignupPresenterProtocol {
    
    weak var view: SignupViewProtocol!
    var interactor: SignupInteractorProtocol!
    var router: SignupRouterProtocol!
    
    required init(view: SignupViewProtocol) {
        self.view = view
    }
    
    func phoneNumberEntered(phone: String) {
       interactor.makeAuthCall(phoneNumber: phone)
    }
    
    func confirmationCodeEntered (code: String) {
        guard let confCode = Int32( code ) else {
            return
        }
        interactor.makeConfirmationCall(code: confCode)
    }
    
    func userPhoneNumberSet(){
        view.showSMSField()
    }
    
    func userCodeSet(){
        router.userSignedUP()
    }
    
    func signUpError(){
        view.showAlert()
    }
}
