
protocol MoviesPresenterProtocol: AnyObject {
    var router: MoviesRouterProtocol! { set get }
    var moviesList: [MovieService_Movie] { set get }
    func getMoviesList(genreID: Int32)
    func movieClicked(index: Int)
    func setMoviesList(list: [MovieService_Movie])
}
        
class MoviesPresenter: MoviesPresenterProtocol {
    
    var router: MoviesRouterProtocol!
    weak var view: MoviesViewProtocol!
    var interactor: MoviesInteractorProtocol!
    var moviesList: [MovieService_Movie]
    
    required init(view: MoviesViewProtocol) {
        self.view = view
        moviesList = [MovieService_Movie]()
    }

    func movieClicked(index: Int){
        let pair = moviesList[index].externalIDPairs.first(where: \.preferred)
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
    
    func setMoviesList(list: [MovieService_Movie]) {
        self.moviesList = list
        view.movieList = moviesList.map{ $0.title }
        view.table.reloadData()
    }
    
    func getMoviesList(genreID: Int32) {
        interactor.getListOfMovies(genre: genreID)
    }
}
