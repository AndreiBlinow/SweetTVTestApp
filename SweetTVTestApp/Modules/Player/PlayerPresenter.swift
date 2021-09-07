import UIKit

protocol PlayerPresenterProtocol: AnyObject {
    func closeStream(id: Int32)
    func closePlayer()
}
        
class PlayerPresenter: PlayerPresenterProtocol {
    weak var view: PlayerViewProtocol!
    var interactor: PlayerInteractorProtocol!
    var router: PlayerRouterProtocol!
    
    required init(view: PlayerViewProtocol) {
        self.view = view
        
    }
    
    func closeStream(id: Int32) {
        let service = DataRepository.shared.getTvService()
        var closeStreamRequest = TvService_CloseStreamRequest()
        closeStreamRequest.auth = DataRepository.shared.getToken()
        closeStreamRequest.streamID = id
        
        DispatchQueue.global(qos: .userInteractive).async { [weak self] in
            
            guard let call = try? service.closeStream(closeStreamRequest) else {
                return
            }
            call.response.whenSuccess { response in
                print(response)
            }
        }
    }
    
    func closePlayer() {
        router.closeView()
    }
}
