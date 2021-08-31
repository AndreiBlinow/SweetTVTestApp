
protocol MoviesPresenterProtocol: class {
    var router: MoviesRouterProtocol! { set get }
    var moviesList: [String] { set get }
    func getMoviesList () -> [String]
    func movieClicked(genreName: String)
}
        
class MoviesPresenter: MoviesPresenterProtocol {
    var moviesList: [String]
    
    var router: MoviesRouterProtocol!
    weak var view: MoviesViewProtocol!
    var interactor: MoviesInteractorProtocol!
    
    required init(view: MoviesViewProtocol) {
        self.view = view
        moviesList = [String]()
    }

    func movieClicked(genreName: String){
        router.closeCurrentViewController()
    }
    func getMoviesList() -> [String] {
        var movies = interactor.getListOfMovies()
        moviesList = movies.map{ $0.title }
        return moviesList
    }
}