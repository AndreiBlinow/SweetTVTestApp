

import UIKit

protocol GenreRouterProtocol: AnyObject {
    func playMovie(genreID: Int32)
}


class GenreRouter: GenreRouterProtocol {
    
    weak var viewController: GenreViewController!
    
    init(viewController: GenreViewController) {
        self.viewController = viewController
    }
    
    func playMovie(genreID: Int32) {
        
        let moviesView = MoviesConfigurator().configure(genreID: genreID)
        
        viewController.navigationController?.pushViewController(moviesView, animated: false)
        
    }
}
