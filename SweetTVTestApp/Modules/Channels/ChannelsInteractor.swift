
import UIKit
import GRPC
import SwiftProtobuf
import Foundation
import NIO
import NIOHPACK

protocol ChannelsInteractorProtocol: AnyObject {
    func getListOfChannels() -> [TvService_Channel]
    func makeOpenStreamCall(idOfChannel: Int32) -> TvService_OpenStreamResponse
}


class ChannelsInteractor: ChannelsInteractorProtocol {
    let tvServiceChannel = DataRepository.shared.getTvService()
    weak var presenter: ChannelsPresenterProtocol!
    var repository = DataRepository.shared
    
    required init(presenter: ChannelsPresenterProtocol) {
        self.presenter = presenter
    }
    
    func getListOfChannels() -> [TvService_Channel] {

        var request = TvService_GetChannelsRequest()
        request.auth = repository.getToken()
        request.needEpg = false
        request.needCategories = true
        request.needList = true
        request.needIcons = false
        request.needBigIcons = false
        request.needHash = true
        request.needOffsets = false
        
        print("REQUEST MESSAGE \(request)")
        let call = tvServiceChannel.getChannels(request)
        do {
            let reply = try call.response.wait()
            return reply.list
            print(reply)
            }
            catch let error {
                return []
            }
//        print("CALL SUCCESS WITH RESPONSE \(response)")
//        return response.list
    }
    
    func makeOpenStreamCall(idOfChannel: Int32) -> TvService_OpenStreamResponse {
        var openStreamRequest = TvService_OpenStreamRequest()
        openStreamRequest.auth = repository.getToken()
        openStreamRequest.channelID = idOfChannel

        print("REQUEST MESSAGE \(openStreamRequest)")
        let call = tvServiceChannel.openStream(openStreamRequest)
        let response = try! call.response.wait()
        return response
    }
}

