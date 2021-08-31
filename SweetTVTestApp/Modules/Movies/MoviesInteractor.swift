
import UIKit
import GRPC
import SwiftProtobuf
import Foundation
import NIO
import NIOHPACK

protocol MoviesInteractorProtocol: class {
    func getListOfMovies() -> [MovieService_Movie]
}


class MoviesInteractor: MoviesInteractorProtocol {
    
    weak var presenter: MoviesPresenterProtocol!
    var repository = DataRepository.shared
    
    required init(presenter: MoviesPresenterProtocol) {
        self.presenter = presenter
    }
    
    
    
    func getMoviesIDs() -> [Int32] {
        
        let movieService = repository.getMovieService()
        
        var movieIDsRequest = MovieService_GetGenreMoviesRequest()
        movieIDsRequest.auth = DataRepository.shared.getToken()
        
        
        print("REQUEST MESSAGE \(movieIDsRequest)")
        let call = movieService.getGenreMovies(movieIDsRequest)
        let response = try! call.response.wait()
        print("CALL SUCCESS WITH RESPONSE \(response)")
        return response.movies
    }
    
    func getListOfMovies() -> [MovieService_Movie] {
        let headers: HPACKHeaders = ["authentication": DataRepository.shared.getToken()]
        //let headers: HPACKHeaders = ["authentication": "94b515fded1cad1773e8df95544abcb5"]
        let callOptions = CallOptions(customMetadata: headers)
        let movieServiceChannel = DataRepository.shared.getMovieService()
        
        
        var movieListRequest = MovieService_GetMovieInfoRequest()
        movieListRequest.auth = repository.getToken()  
        movieListRequest.offset = 30
        movieListRequest.needExtendedInfo = false
        movieListRequest.limit = 100
        movieListRequest.movies = getMoviesIDs()
        
        print("REQUEST MESSAGE \(movieListRequest)")
        let call = movieServiceChannel.getMovieInfo(movieListRequest, callOptions: callOptions)
        let response = try! call.response.wait()
        print("CALL SUCCESS WITH RESPONSE \(response)")
        return response.movies
    }
}

