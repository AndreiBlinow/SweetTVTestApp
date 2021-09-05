
protocol MoviesPresenterProtocol: AnyObject {
    var router: MoviesRouterProtocol! { set get }
    var movies: [MovieService_Movie] { set get }
    func getMoviesList(genreID: Int32) -> [String]
    func movieClicked(index: Int)
}
        
class MoviesPresenter: MoviesPresenterProtocol {
    
    var router: MoviesRouterProtocol!
    weak var view: MoviesViewProtocol!
    var interactor: MoviesInteractorProtocol!
    var movies: [MovieService_Movie]
    
    required init(view: MoviesViewProtocol) {
        self.view = view
        movies = [MovieService_Movie]()
    }

    func movieClicked(index: Int){
        let pair = movies[index].externalIDPairs.first(where: \.preferred)
        let movieId = pair?.externalID
        let ownerId = pair?.ownerID
        guard let movId = movieId else {
            return
        }
        guard let ownId = ownerId else {
            return
        }
        router.showMovie(movieId: movId, ownerId: ownId)
    }
    func getMoviesList(genreID: Int32) -> [String] {
        movies = interactor.getListOfMovies(genre: genreID)
        let moviesList = movies.map{ $0.title }
        return moviesList
    }
}
