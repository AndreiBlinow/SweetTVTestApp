
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
    var repository = Repositoryy()
    
    required init(presenter: GenrePresenterProtocol) {
        self.presenter = presenter
    }
    
    func getListOfGenries() -> [MovieService_Genre] {
        
        let movieServiceChannel = DataRepository.shared.getMovieService()
        
        var movieGenreRequest = MovieService_GetConfigurationRequest()
        movieGenreRequest.auth = DataRepository.shared.getToken()
        
        print("REQUEST MESSAGE \(movieGenreRequest)")
        let call = movieServiceChannel.getConfiguration(movieGenreRequest)
        let response = try! call.response.wait()
        print("CALL SUCCESS WITH RESPONSE \(response)")
        return response.genres
    }
}

