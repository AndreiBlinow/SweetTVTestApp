

protocol GenrePresenterProtocol: AnyObject {
    var router: GenreRouterProtocol! { set get }
    var genres: [MovieService_Genre] {get set}
    func getGenreList ()
    func genreClicked(index: Int)
    func setGenresList(genresList: [MovieService_Genre])
}
        
class GenrePresenter: GenrePresenterProtocol {
    
    weak var view: GenreViewProtocol!
    var interactor: GenreInteractorProtocol!
    var router: GenreRouterProtocol!
    var genres: [MovieService_Genre]
    
    required init(view: GenreViewProtocol) {
        self.view = view
        genres = [MovieService_Genre]()
    }

    func genreClicked(index: Int){
        let id = genres[index].id
        router.playMovie(genreID: id)
    }
    func setGenresList(genresList: [MovieService_Genre]) {
        self.genres = genresList
        view.genresList = genres.map{ $0.title }
        view.table.reloadData()
    }
    func getGenreList() {
        interactor.getListOfGenries()
    }
    
}
