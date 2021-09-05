
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
        
        let navController = UINavigationController(rootViewController: channelsView)
        navController.modalPresentationStyle = .fullScreen
        
        viewController.present(navController, animated: true)

        viewController.navigationController?.pushViewController(channelsView, animated: true)
        
    }
}
