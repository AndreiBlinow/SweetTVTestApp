
import UIKit
import GRPC
import SwiftProtobuf
import Foundation
import NIO
import NIOHPACK

protocol GenreInteractorProtocol: class {
    func getListOfGenries() -> [MovieService_Genre]
}


class GenreInteractor: GenreInteractorProtocol {
    
    weak var presenter: GenrePresenterProtocol!
    var repository = DataRepository.shared
    
    required init(presenter: GenrePresenterProtocol) {
        self.presenter = presenter
    }
    
    func getListOfGenries() -> [MovieService_Genre] {
        
        let movieServiceChannel = repository.getMovieService()
        
        var movieGenreRequest = MovieService_GetConfigurationRequest()
        movieGenreRequest.auth = repository.getToken()
        
        print("REQUEST MESSAGE \(movieGenreRequest)")
        let call = movieServiceChannel.getConfiguration(movieGenreRequest)
        let response = try! call.response.wait()
        print("CALL SUCCESS WITH RESPONSE \(response)")
        return response.genres
    }
}

