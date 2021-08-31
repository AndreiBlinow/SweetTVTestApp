

import UIKit

protocol PlayerConfiguratorProtocol: AnyObject {
    func configure() -> PlayerViewController
}

class PlayerConfigurator: PlayerConfiguratorProtocol {
    
    func configure() -> PlayerViewController {
        let view = PlayerViewController()
        let presenter = PlayerPresenter(view: view)
        view.presenter = presenter
        let interactor = PlayerInteractor(presenter: presenter)
        let router = PlayerRouter(viewController: view)
        presenter.interactor = interactor
        presenter.router = router
        return view
        
    }
}
