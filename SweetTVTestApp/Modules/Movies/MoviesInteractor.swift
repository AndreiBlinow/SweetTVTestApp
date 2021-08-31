
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
    var repository = Repositoryy()
    
    required init(presenter: MoviesPresenterProtocol) {
        self.presenter = presenter
    }
    
    
    
    func getMoviesIDs() -> [Int32] {
        let headers: HPACKHeaders = ["authentication": DataRepository.shared.getToken()]
        //let headers: HPACKHeaders = ["authentication": "94b515fded1cad1773e8df95544abcb5"]
        let callOptions = CallOptions(customMetadata: headers)
        let movieServiceChannel = MovieService_MovieServiceClient(channel: repository.channel as! GRPCChannel, defaultCallOptions: callOptions)
        
        var movieIDsRequest = MovieService_GetGenreMoviesRequest()
        movieIDsRequest.auth = DataRepository.shared.getToken()
        //channelListRequest.auth = "94b515fded1cad1773e8df95544abcb5"
        
        print("REQUEST MESSAGE \(movieIDsRequest)")
        let call = movieServiceChannel.getGenreMovies(movieIDsRequest, callOptions: callOptions)
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
        movieListRequest.auth = repository.token
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

