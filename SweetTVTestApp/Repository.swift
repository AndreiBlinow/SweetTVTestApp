//
//  Repositoryy.swift
//  SweetTVTestApp
//
//  Created by AndreiBlinov on 09.09.2033.
//

import UIKit
import GRPC
import SwiftProtobuf
import Foundation
import NIO
import NIOHPACK

//class Repositoryy {
//    var phoneRequest = SignupService_SetPhoneRequest()
//    //var clientConnection: ClientConnection?
//
//    var signupServiceClient: SignupService_SignupServiceClient?
//
//    var tvServiceChannel: TvService_TvServiceClient?
//
////    var tvServiceStream: TvService_TvServiceClient?
//
//    var token = "3934c3d0c38aec95a8d4a0385cb47ddd"
//
//    let eventLoopGroup = MultiThreadedEventLoopGroup(numberOfThreads: 1)
//    var channel: ClientConnection?
//
//
//    init() {
//        createService()
//        phoneRequest.phone = "380964485373"
//        phoneRequest.device.type = .dtAndroidPlayer
//        phoneRequest.device.mac = "34FCEFD9C4B2"
//    }
//
//    func createService() {
//        let host = "api.sweet.tv"
//        let port = 443
//        let group = MultiThreadedEventLoopGroup(numberOfThreads: 1)
//        let channel = ClientConnection.secure(group: group).connect(host: host, port: port)
//        self.channel = channel
//    }
//}

class DataRepository {
    static let shared = DataRepository()
    private var token: String
    private var phoneNum: String
    private let callOptions: CallOptions
    private let channel: ClientConnection
    
    private init() {
        self.token = ""
        self.phoneNum = ""
        self.callOptions = CallOptions(customMetadata: ["authentication": token])
        self.channel = ClientConnection.secure(group: MultiThreadedEventLoopGroup(numberOfThreads: 1)).connect(host: "api.sweet.tv", port: 443)
    }
    func setToken(token: String){
        self.token = token
    }
    func getToken() -> String{
        return self.token
    }
    func getTvService() -> TvService_TvServiceClient {
        return TvService_TvServiceClient(channel: channel as! GRPCChannel, defaultCallOptions: callOptions)
    }
//
    func getMovieService() -> MovieService_MovieServiceClient {
        return MovieService_MovieServiceClient(channel: channel as! GRPCChannel, defaultCallOptions: callOptions)
    }
//
    func getSignupService() -> SignupService_SignupServiceClient {
        return SignupService_SignupServiceClient(channel: channel as! GRPCChannel)
    }
//
//
}
