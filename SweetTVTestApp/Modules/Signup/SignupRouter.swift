
import UIKit

protocol SignupRouterProtocol: AnyObject {
    func closeCurrentViewController()
}


class SignupRouter: SignupRouterProtocol {
    
    weak var viewController: SignupViewController!
    
    init(viewController: SignupViewController) {
        self.viewController = viewController
    }
    
    func closeCurrentViewController() {
        viewController.dismiss(animated: true, completion: nil)
    }
}
