
protocol SignupInteractorProtocol: AnyObject {
    func makeAuthCall(phoneNumber: String) -> SignupService_SetPhoneResponse
    func makeConfirmationCall(code: Int32) -> SignupService_SetCodeResponse
}


class SignupInteractor: SignupInteractorProtocol {
    
    weak var presenter: SignupPresenterProtocol!
    let signupService = DataRepository.shared.getSignupService()
    var phone = ""
    
    required init(presenter: SignupPresenterProtocol) {
        self.presenter = presenter
    }
    func makeAuthCall(phoneNumber: String) -> SignupService_SetPhoneResponse {
        self.phone = phoneNumber
        var phoneRequest = SignupService_SetPhoneRequest()
        phoneRequest.phone = phoneNumber
        phoneRequest.device.type = .dtAndroidPlayer
        phoneRequest.device.mac = "34FCEFD9C4B2"
        
        print("REQUEST MESSAGE \(phoneRequest)")
        let call = signupService.setPhone(phoneRequest)
        var response = SignupService_SetPhoneResponse()
        response = try! call.response.wait()
        print("CALL SUCCESS WITH RESPONSE \(response)")
        return response
    }
    
    func makeConfirmationCall(code: Int32) -> SignupService_SetCodeResponse {
        
        var confirmationRequest = SignupService_SetCodeRequest()
        confirmationRequest.phone = self.phone
        confirmationRequest.confirmationCode = code
        
        print("REQUEST MESSAGE \(confirmationRequest)")
        let call = signupService.setCode(confirmationRequest)
        let response = try! call.response.wait()
        print("CALL SUCCESS WITH RESPONSE \(response)")
        return response
    }
    

    
}

