import UIKit

protocol SignupInteractorProtocol: AnyObject {
    func makeAuthCall(phoneNumber: String)
    func makeConfirmationCall(code: Int32)
}

class SignupInteractor: SignupInteractorProtocol {
    
    weak var presenter: SignupPresenterProtocol!
    let signupService = DataRepository.shared.getSignupService()
    var phone = ""
    
    required init(presenter: SignupPresenterProtocol) {
        self.presenter = presenter
    }
    func makeAuthCall(phoneNumber: String){
        self.phone = phoneNumber
        var phoneRequest = SignupService_SetPhoneRequest()
        phoneRequest.phone = phoneNumber
        phoneRequest.device.type = .dtAndroidPlayer
        phoneRequest.device.mac = "34FCEFD9C4B2"
        
        DispatchQueue.global(qos: .userInteractive).async { [weak self] in
            
            guard let self = self else {return}
            guard let call = try? self.signupService.setPhone(phoneRequest) else {
                return
            }
            call.response.whenSuccess { response in
                DispatchQueue.main.async {
                    if response.status == .ok {
                        self.presenter.userPhoneNumberSet()
                    } else {
                        self.presenter.signUpError()
                    }
                }
            }
        }
    }
    
    func makeConfirmationCall(code: Int32) {
        
        var confirmationRequest = SignupService_SetCodeRequest()
        confirmationRequest.phone = self.phone
        confirmationRequest.confirmationCode = code
        
        DispatchQueue.global(qos: .userInteractive).async { [weak self] in
            
            guard let self = self else {return}
            guard let call = try? self.signupService.setCode(confirmationRequest) else {
                return
            }
            call.response.whenSuccess { response in
                DispatchQueue.main.async {
                    if response.status == .ok {
                        DataRepository.shared.setToken(token: response.authToken)
                        self.presenter.userCodeSet()
                    } else {
                        self.presenter.signUpError()
                    }
                }
            }
        }
    }
}

