//
//  GenreConfigurator.swift
//  SweetTVTestApp
//
//  Created by AndreiBlinov on 09.09.2033.
//

import UIKit

protocol GenreConfiguratorProtocol: class {
    func configure(with viewController: GenreViewController)
}

class GenreConfigurator: GenreConfiguratorProtocol {
    
    func configure(with viewController: GenreViewController) {
        
        let presenter = GenrePresenter(view: viewController)
        let interactor = GenreInteractor(presenter: presenter)
        let router = GenreRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}
