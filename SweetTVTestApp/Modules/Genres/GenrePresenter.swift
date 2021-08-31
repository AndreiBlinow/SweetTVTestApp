//
//  ChannelsPresenter.swift
//  SweetTVTestApp
//
//  Created by AndreiBlinov on 09.09.2033.
//

protocol GenrePresenterProtocol: class {
    var router: GenreRouterProtocol! { set get }
    var genreList: [String] { set get }
    func getGenreList () -> [String]
    func genreClicked(genreName: String)
}
        
class GenrePresenter: GenrePresenterProtocol {
    
    weak var view: GenreViewProtocol!
    var interactor: GenreInteractorProtocol!
    var router: GenreRouterProtocol!
    var genreList: [String]
    
    required init(view: GenreViewProtocol) {
        self.view = view
        genreList = [String]()
    }

    func genreClicked(genreName: String){
        router.closeCurrentViewController()
    }
    func getGenreList() -> [String] {
        var genres = interactor.getListOfGenries()
        genreList = genres.map{ $0.title }
        return genreList
    }
    
}
