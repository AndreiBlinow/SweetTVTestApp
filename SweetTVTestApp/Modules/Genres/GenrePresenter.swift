//
//  ChannelsPresenter.swift
//  SweetTVTestApp
//
//  Created by AndreiBlinov on 09.09.2033.
//

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
        router.closeCurrentViewController(genreID: id)
    }
    func getGenreList() -> [String] {
        genres = interactor.getListOfGenries()
        var genreList = genres.map{ $0.title }
        return genreList
    }
    
}
