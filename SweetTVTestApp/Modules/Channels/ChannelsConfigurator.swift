

import UIKit

protocol ChannelsConfiguratorProtocol: class {
    func configure(with viewController: ChannelsViewController)
}

class ChannelsConfigurator: ChannelsConfiguratorProtocol {
    
    func configure(with viewController: ChannelsViewController) {
        
        let presenter = ChannelsPresenter(view: viewController)
        let interactor = ChannelsInteractor(presenter: presenter)
        let router = ChannelsRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}
