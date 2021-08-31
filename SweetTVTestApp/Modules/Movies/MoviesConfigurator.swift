//
//  GenreConfigurator.swift
//  SweetTVTestApp
//
//  Created by AndreiBlinov on 09.09.2033.
//

import UIKit

protocol MoviesConfiguratorProtocol: class {
    func configure() -> MoviesViewController
}

class MoviesConfigurator: MoviesConfiguratorProtocol {
    
    func configure() -> MoviesViewController {
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
