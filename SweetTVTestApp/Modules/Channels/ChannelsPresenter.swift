
protocol ChannelsPresenterProtocol: AnyObject {
    var router: ChannelsRouterProtocol! { set get }
    var channels: [TvService_Channel] {get set}
    func channelClicked(index: Int)
    func getChannelsNameList()
    func showGenresView()
    func setChannelsList(channels: [TvService_Channel])
    func playStream(stream: TvService_OpenStreamResponse)
}
        
class ChannelsPresenter: ChannelsPresenterProtocol {
    
    weak var view: ChannelsViewProtocol!
    var interactor: ChannelsInteractorProtocol!
    var router: ChannelsRouterProtocol!
    var channels: [TvService_Channel]
    var stream: TvService_OpenStreamResponse
    
    required init(view: ChannelsViewProtocol) {
        self.view = view
        channels = [TvService_Channel]()
        stream = TvService_OpenStreamResponse()
    }
    
    func channelClicked(index: Int) {
        interactor.makeOpenStreamCall(idOfChannel: channels[index].id)
    }
    
    func getChannelsNameList(){
        interactor.getListOfChannels()
    }
    
    func playStream(stream: TvService_OpenStreamResponse) {
        self.stream = stream
        let httpStream = stream.httpStream
        let host = httpStream.host.address
        let port = httpStream.host.port
        let url = httpStream.url
        let streamId = stream.streamID
        let streamUpdate = stream.updateInterval
        let stream = "http://\(host):\(port)\(url)"
        router.playStream(url: stream, streamId: streamId, updateTime: streamUpdate)
    }
    
    func setChannelsList(channels: [TvService_Channel]){
        self.channels = channels
        view.channelsNameList = channels.map{$0.name}
        view.table.reloadData()
    }
    func showGenresView () {
        router.showGenres()
    }
}
