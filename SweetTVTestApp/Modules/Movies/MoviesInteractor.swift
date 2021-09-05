

protocol MoviesInteractorProtocol: AnyObject {
    func getListOfMovies(genre: Int32) -> [MovieService_Movie]
}


class MoviesInteractor: MoviesInteractorProtocol {
    
    weak var presenter: MoviesPresenterProtocol!
    var repository = DataRepository.shared
    
    required init(presenter: MoviesPresenterProtocol) {
        self.presenter = presenter
    }
    
    
    
    func getMoviesIDs(genre: Int32) -> [Int32] {
        
        let movieService = repository.getMovieService()
        
        var movieIDsRequest = MovieService_GetGenreMoviesRequest()
        movieIDsRequest.auth = DataRepository.shared.getToken()
        movieIDsRequest.genreID = genre
        
        
        print("REQUEST MESSAGE \(movieIDsRequest)")
        let call = movieService.getGenreMovies(movieIDsRequest)
        let response = try! call.response.wait()
        print("CALL SUCCESS WITH RESPONSE \(response)")
        return response.movies
    }
    
    func getListOfMovies(genre: Int32) -> [MovieService_Movie] {
        
        let movieServiceChannel = DataRepository.shared.getMovieService()
        
        var movieListRequest = MovieService_GetMovieInfoRequest()
        movieListRequest.auth = repository.getToken()  
        movieListRequest.offset = 30
        movieListRequest.needExtendedInfo = false
        movieListRequest.limit = 100
        movieListRequest.movies = getMoviesIDs(genre: genre)
        
        print("REQUEST MESSAGE \(movieListRequest)")
        let call = movieServiceChannel.getMovieInfo(movieListRequest)
        let response = try! call.response.wait()
        print("CALL SUCCESS WITH RESPONSE \(response)")
        return response.movies
    }
}

