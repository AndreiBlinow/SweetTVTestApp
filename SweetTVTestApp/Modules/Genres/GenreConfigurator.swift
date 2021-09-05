//
//  GenreConfigurator.swift
//  SweetTVTestApp
//
//  Created by AndreiBlinov on 09.09.2033.
//



protocol GenreConfiguratorProtocol: AnyObject {
    func configure() -> GenreViewController
}

class GenreConfigurator: GenreConfiguratorProtocol {
    
    func configure() -> GenreViewController {
        let view = GenreViewController()
        let presenter = GenrePresenter(view: view)
        view.presenter = presenter
        let interactor = GenreInteractor(presenter: presenter)
        let router = GenreRouter(viewController: view)
        presenter.interactor = interactor
        presenter.router = router
        return view
    }
}
