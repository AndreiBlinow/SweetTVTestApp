

protocol GenrePresenterProtocol: class {
    var router: GenreRouterProtocol! { set get }
    var genres: [MovieService_Genre] {get set}
    func getGenreList () -> [String]
    func genreClicked(index: Int)
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
        var id = genres[index].id
        print(id)
        router.playMovie(genreID: id)
    }
    func getGenreList() -> [String] {
        genres = interactor.getListOfGenries().filter {$0.title != "Сериалы"}
        print(genres)
        var genreList = genres.map{ $0.title }
        return genreList
    }
    
}
