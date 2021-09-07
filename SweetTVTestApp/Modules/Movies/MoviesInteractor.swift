import UIKit

protocol MoviesInteractorProtocol: AnyObject {
    func getListOfMovies(genre: Int32)
}


class MoviesInteractor: MoviesInteractorProtocol {
    
    weak var presenter: MoviesPresenterProtocol!
    var repository = DataRepository.shared
    let movieService: MovieService_MovieServiceClient
    
    required init(presenter: MoviesPresenterProtocol) {
        self.presenter = presenter
        movieService = repository.getMovieService()
    }
    
    func getMoviesIDs(genre: Int32) -> [Int32] {
        
        var movieIDsRequest = MovieService_GetGenreMoviesRequest()
        movieIDsRequest.auth = DataRepository.shared.getToken()
        movieIDsRequest.genreID = genre
        
        let call = movieService.getGenreMovies(movieIDsRequest)
        let response = try! call.response.wait()
        return response.movies
    }
    
    func getListOfMovies(genre: Int32) {
        
        var movieListRequest = MovieService_GetMovieInfoRequest()
        movieListRequest.auth = repository.getToken()  
        movieListRequest.offset = 30
        movieListRequest.needExtendedInfo = false
        movieListRequest.limit = 100
        
        
        DispatchQueue.global(qos: .userInteractive).async { [weak self] in
            
            guard let self = self else {return}
            movieListRequest.movies = self.getMoviesIDs(genre: genre)
            
            guard let call = try? self.movieService.getMovieInfo(movieListRequest) else {
                return
            }
            call.response.whenSuccess { response in
                DispatchQueue.main.async {
                    self.presenter.setMoviesList(list: response.movies)
                }
            }
        }
    }
}

