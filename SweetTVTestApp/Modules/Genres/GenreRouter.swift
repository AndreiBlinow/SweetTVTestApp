//
//  GenreRouter.swift
//  SweetTVTestApp
//
//  Created by AndreiBlinov on 09.09.2033.
//

import UIKit

protocol GenreRouterProtocol: class {
    func closeCurrentViewController()
}


class GenreRouter: GenreRouterProtocol {
    
    weak var viewController: GenreViewController!
    
    init(viewController: GenreViewController) {
        self.viewController = viewController
    }
    
    func closeCurrentViewController() {
        viewController.dismiss(animated: true, completion: nil)
    }
}
