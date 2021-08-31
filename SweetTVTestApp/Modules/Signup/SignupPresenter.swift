

protocol SignupPresenterProtocol: AnyObject {
    func phoneNumberEntered(phone: String) -> SignupService_SetPhoneResponse
    func confirmationCodeEntered(code: Int32) -> SignupService_SetCodeResponse
    var router: SignupRouterProtocol! { set get }
    
}
        
class SignupPresenter: SignupPresenterProtocol {
    
    weak var view: SignupViewProtocol!
    var interactor: SignupInteractorProtocol!
    var router: SignupRouterProtocol!
    
    
    required init(view: SignupViewProtocol) {
        self.view = view
        
    }
    
    func phoneNumberEntered(phone: String) -> SignupService_SetPhoneResponse {
        var response = SignupService_SetPhoneResponse()
        response = interactor.makeAuthCall(phoneNumber: phone)
        print(response.status)
        return response
    }
    
    func confirmationCodeEntered(code: Int32) -> SignupService_SetCodeResponse {
        var response: SignupService_SetCodeResponse
        response = interactor.makeConfirmationCall(code: code)
        DataRepository.shared.setToken(token: response.authToken)
        if response.status == .ok {
            print(response.status)
        }
        return response
    }
    
    
}
