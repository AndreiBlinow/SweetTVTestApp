

protocol PlayerPresenterProtocol: AnyObject {
    
}
        
class PlayerPresenter: PlayerPresenterProtocol {
    weak var view: PlayerViewProtocol!
    var interactor: PlayerInteractorProtocol!
    var router: PlayerRouterProtocol!
    
    required init(view: PlayerViewProtocol) {
        self.view = view
        
    }
    
    
}
