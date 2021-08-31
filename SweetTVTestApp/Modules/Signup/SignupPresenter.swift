

protocol SignupPresenterProtocol: AnyObject {
    func phoneNumberEntered(phone: String) -> String
    func confirmationCodeEntered(code: String) -> String
    var router: SignupRouterProtocol! { set get }
    
}
        
class SignupPresenter: SignupPresenterProtocol {
    
    weak var view: SignupViewProtocol!
    var interactor: SignupInteractorProtocol!
    var router: SignupRouterProtocol!
    
    
    
    required init(view: SignupViewProtocol) {
        self.view = view
        
    }
    
    func phoneNumberEntered(phone: String) -> String {
        var response = SignupService_SetPhoneResponse()
        response = interactor.makeAuthCall(phoneNumber: phone)
        print(response.status)
        if response.status == .ok {
            return "ok"
        }
        return ""
    }
    
    func confirmationCodeEntered (code: String) -> String {
        guard let confCode = Int32( code ) else {
            return ""
        }
        let response = interactor.makeConfirmationCall(code: confCode)
        
        if response.status == .ok {
            DataRepository.shared.setToken(token: response.authToken)
            router.userSignedUP()
            return "ok"
        }
        return ""
    }
    
    
}
