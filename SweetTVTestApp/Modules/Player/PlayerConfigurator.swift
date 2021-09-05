

import UIKit

protocol PlayerConfiguratorProtocol: AnyObject {
    func configure(url: String, channelID: Int32?, updateTime: uint?) -> PlayerViewController
}

class PlayerConfigurator: PlayerConfiguratorProtocol {
    
    func configure(url: String, channelID: Int32? = nil, updateTime: uint? = nil) -> PlayerViewController {
        let view = PlayerViewController()
        view.urlString = url
        view.channelID = channelID
        view.updateStream = updateTime
        let presenter = PlayerPresenter(view: view)
        view.presenter = presenter
        let interactor = PlayerInteractor(presenter: presenter)
        let router = PlayerRouter(viewController: view)
        presenter.interactor = interactor
        presenter.router = router
        return view
        
    }
}
