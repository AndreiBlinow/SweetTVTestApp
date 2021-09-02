
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
//        let channelsView = ChannelsConfigurator().configure()
        let genresView = GenreConfigurator().configure()
        
        viewController.navigationController?.dismiss(animated: true, completion: nil)
        
        
        
        viewController.navigationController?.pushViewController(genresView, animated: true)
        
    }
}
