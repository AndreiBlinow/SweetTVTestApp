import UIKit

protocol GenreInteractorProtocol: AnyObject {
    func getListOfGenries()
}


class GenreInteractor: GenreInteractorProtocol {
    
    weak var presenter: GenrePresenterProtocol!
    required init(presenter: GenrePresenterProtocol) {
        self.presenter = presenter
    }
    
    func getListOfGenries(){
        let repository = DataRepository.shared
        let movieService = repository.getMovieService()
        
        var movieGenreRequest = MovieService_GetConfigurationRequest()
        movieGenreRequest.auth = repository.getToken()
        
        DispatchQueue.global(qos: .userInteractive).async { [weak self] in
            
            guard let self = self else {return}
            guard let call = try? movieService.getConfiguration(movieGenreRequest) else {
                return
            }
            call.response.whenSuccess { response in
                DispatchQueue.main.async {
                    self.presenter.setGenresList(genresList: response.genres.filter {$0.title != "Сериалы"})
                }
            }
        }
    }
}

