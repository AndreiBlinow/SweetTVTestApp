//
//  GenreRouter.swift
//  SweetTVTestApp
//
//  Created by AndreiBlinov on 09.09.2033.
//

import UIKit

protocol MoviesRouterProtocol: AnyObject {
    func closeCurrentViewController(movieId: Int32, ownerId: Int32)
}


class MoviesRouter: MoviesRouterProtocol {
    
    weak var viewController: MoviesViewController!
    
    init(viewController: MoviesViewController) {
        self.viewController = viewController
    }
    
    func closeCurrentViewController(movieId: Int32, ownerId: Int32) {
        
        let linkRequest = getLink(movieId: movieId, ownerId: ownerId)
        let link = linkRequest.url
        let playerView = PlayerConfigurator().configure(url: link)
        viewController.present(playerView, animated: false)
    }
    
    func getLink(movieId: Int32, ownerId: Int32) -> MovieService_GetLinkResponse {
        let service = DataRepository.shared.getMovieService()
        var linkRequest = MovieService_GetLinkRequest()
        linkRequest.auth = DataRepository.shared.getToken()
        linkRequest.movieID = movieId
        linkRequest.ownerID = ownerId
        let call = service.getLink(linkRequest)
        let response = try! call.response.wait()
        return response
    }
}
