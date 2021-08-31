
import UIKit

protocol SignupRouterProtocol: AnyObject {
    func userSignedUP()
}


class SignupRouter: SignupRouterProtocol {
    
    weak var viewController: SignupViewController!
    
    init(viewController: SignupViewController) {
        self.viewController = viewController
    }
    
    func userSignedUP() {
        viewController.dismiss(animated: true, completion: nil)
    }
}
