
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
        let channelsView = ChannelsConfigurator().configure()
        viewController.navigationController?.pushViewController(channelsView, animated: true)
        viewController.dismiss(animated: false, completion: nil)
    }
}
