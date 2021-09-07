import UIKit

protocol ChannelsInteractorProtocol: AnyObject {
    func getListOfChannels()
    func makeOpenStreamCall(idOfChannel: Int32)
}


class ChannelsInteractor: ChannelsInteractorProtocol {
    let tvServiceChannel = DataRepository.shared.getTvService()
    weak var presenter: ChannelsPresenterProtocol!
    var repository = DataRepository.shared
    
    required init(presenter: ChannelsPresenterProtocol) {
        self.presenter = presenter
    }
    
    func getListOfChannels() {
        
        var request = TvService_GetChannelsRequest()
        request.auth = repository.getToken()
        request.needEpg = false
        request.needCategories = true
        request.needList = true
        request.needIcons = false
        request.needBigIcons = false
        request.needHash = true
        request.needOffsets = false
        
        DispatchQueue.global(qos: .userInteractive).async { [weak self] in
            
            guard let self = self else {return}
            guard let call = try? self.tvServiceChannel.getChannels(request) else {
                return
            }
            call.response.whenSuccess { response in
                DispatchQueue.main.async {
                    self.presenter.setChannelsList(channels: response.list)
                }
            }
        }
    }
    
    func makeOpenStreamCall(idOfChannel: Int32){
        var openStreamRequest = TvService_OpenStreamRequest()
        openStreamRequest.auth = repository.getToken()
        openStreamRequest.channelID = idOfChannel

        DispatchQueue.global(qos: .userInteractive).async { [weak self] in
            
            guard let self = self else {return}
            guard let call = try? self.tvServiceChannel.openStream(openStreamRequest) else {
                return
            }
            call.response.whenSuccess { response in
                DispatchQueue.main.async {
                    self.presenter.playStream(stream: response)
                }
            }
        }
    }
}

