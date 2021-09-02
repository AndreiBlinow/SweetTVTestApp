

protocol SignupPresenterProtocol: AnyObject {
    func phoneNumberEntered(phone: String)
    func confirmationCodeEntered(code: String)
    var router: SignupRouterProtocol! { set get }
    
}
        
class SignupPresenter: SignupPresenterProtocol {
    
    weak var view: SignupViewProtocol!
    var interactor: SignupInteractorProtocol!
    var router: SignupRouterProtocol!
    
    required init(view: SignupViewProtocol) {
        self.view = view
    }
    
    func phoneNumberEntered(phone: String) {
       let response = interactor.makeAuthCall(phoneNumber: phone)
        print(response.status)
        if response.status == .ok {
            view.showSMSFiled()
        }
    }
    
    func confirmationCodeEntered (code: String) {
        guard let confCode = Int32( code ) else {
            return
        }
        let response = interactor.makeConfirmationCall(code: confCode)
        
        if response.status == .ok {
            DataRepository.shared.setToken(token: response.authToken)
            router.userSignedUP()
        }
    }
    
    
}
