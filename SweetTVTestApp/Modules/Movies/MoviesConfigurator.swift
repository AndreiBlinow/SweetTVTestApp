

import UIKit

protocol MoviesConfiguratorProtocol: AnyObject {
    func configure(genreID: Int32) -> MoviesViewController
}

class MoviesConfigurator: MoviesConfiguratorProtocol {
    
    func configure(genreID: Int32) -> MoviesViewController {
        let view = MoviesViewController()
        let presenter = MoviesPresenter(view: view)
        view.presenter = presenter
        let interactor = MoviesInteractor(presenter: presenter)
        let router = MoviesRouter(viewController: view)
        presenter.interactor = interactor
        presenter.router = router
        return view
    }
}
