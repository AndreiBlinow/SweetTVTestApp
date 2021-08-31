

import UIKit

protocol PlayerConfiguratorProtocol: AnyObject {
    func configure(url: String) -> PlayerViewController
}

class PlayerConfigurator: PlayerConfiguratorProtocol {
    
    func configure(url: String) -> PlayerViewController {
        let view = PlayerViewController()
        view.urlString = url
        let presenter = PlayerPresenter(view: view)
        view.presenter = presenter
        let interactor = PlayerInteractor(presenter: presenter)
        let router = PlayerRouter(viewController: view)
        presenter.interactor = interactor
        presenter.router = router
        return view
        
    }
}
