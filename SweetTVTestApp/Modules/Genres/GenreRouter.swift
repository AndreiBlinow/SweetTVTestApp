

import UIKit

protocol GenreRouterProtocol: AnyObject {
    func closeCurrentViewController(genreID: Int32)
}


class GenreRouter: GenreRouterProtocol {
    
    weak var viewController: GenreViewController!
    
    init(viewController: GenreViewController) {
        self.viewController = viewController
    }
    
    func closeCurrentViewController(genreID: Int32) {
        
        let moviesView = MoviesConfigurator().configure(genreID: genreID)
        
        viewController.navigationController?.pushViewController(moviesView, animated: false)
        
        //viewController.present(moviesView, animated: false)
              
    }
}
