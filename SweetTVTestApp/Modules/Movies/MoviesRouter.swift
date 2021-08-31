//
//  GenreRouter.swift
//  SweetTVTestApp
//
//  Created by AndreiBlinov on 09.09.2033.
//

import UIKit

protocol MoviesRouterProtocol: class {
    func closeCurrentViewController()
}


class MoviesRouter: MoviesRouterProtocol {
    
    weak var viewController: MoviesViewController!
    
    init(viewController: MoviesViewController) {
        self.viewController = viewController
    }
    
    func closeCurrentViewController() {
        viewController.dismiss(animated: true, completion: nil)
    }
}
