//
//  GenreConfigurator.swift
//  SweetTVTestApp
//
//  Created by AndreiBlinov on 09.09.2033.
//

import UIKit

protocol MoviesConfiguratorProtocol: class {
    func configure(with viewController: MoviesViewController)
}

class MoviesConfigurator: MoviesConfiguratorProtocol {
    
    func configure(with viewController: MoviesViewController) {
        
        let presenter = MoviesPresenter(view: viewController)
        let interactor = MoviesInteractor(presenter: presenter)
        let router = MoviesRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}
