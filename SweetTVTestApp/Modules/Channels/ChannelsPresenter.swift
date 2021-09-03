
protocol ChannelsPresenterProtocol: class {
    var router: ChannelsRouterProtocol! { set get }
    var channels: [TvService_Channel] {get set}
    func channelClicked(index: Int)
    func getChannelsNameList() -> [String]
}
        
class ChannelsPresenter: ChannelsPresenterProtocol {
    
    weak var view: ChannelsViewProtocol!
    var interactor: ChannelsInteractorProtocol!
    var router: ChannelsRouterProtocol!
    var channels: [TvService_Channel]
    
    required init(view: ChannelsViewProtocol) {
        self.view = view
        channels = [TvService_Channel]()
    }
    
    // MARK: - AboutPresenterProtocol methods
    func channelClicked(index: Int) {
        let response = interactor.makeOpenStreamCall(idOfChannel: channels[index].id)
        let httpStream = response.httpStream
        let host = httpStream.host.address
        let port = httpStream.host.port
        let url = httpStream.url
        let streamId = response.streamID
        let stream = "http://\(host):\(port)\(url)"
        print(stream)
        router.closeCurrentViewController(url: stream, id: streamId)
    }
    func getChannelsNameList() -> [String] {
        channels = interactor.getListOfChannels()
        return channels.map{$0.name}
    }
    
}
