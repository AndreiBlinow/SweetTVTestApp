

import Foundation



protocol PlayerRouterProtocol: AnyObject {
    
    
}
        
class PlayerRouter: PlayerRouterProtocol {
    weak var viewController: PlayerViewController!
    
    init(viewController: PlayerViewController) {
        self.viewController = viewController
    }
    
}
