
protocol PlayerRouterProtocol: AnyObject {
    func closeView()
    
}
        
class PlayerRouter: PlayerRouterProtocol {
    weak var viewController: PlayerViewController!
    
    init(viewController: PlayerViewController) {
        self.viewController = viewController
    }
    
    func closeView(){
        viewController.dismiss(animated: false, completion: nil)
    }
}
