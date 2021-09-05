

protocol ChannelsConfiguratorProtocol: AnyObject {
    func configure() -> ChannelsViewController
}

class ChannelsConfigurator: ChannelsConfiguratorProtocol {
    
    func configure() -> ChannelsViewController {
        let view = ChannelsViewController()
        let presenter = ChannelsPresenter(view: view)
        view.presenter = presenter
        let interactor = ChannelsInteractor(presenter: presenter)
        let router = ChannelsRouter(viewController: view)
        presenter.interactor = interactor
        presenter.router = router
        return view
    }
}
