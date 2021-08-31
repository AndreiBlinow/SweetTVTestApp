//
//
//import UIKit
//import GRPC
//import SwiftProtobuf
//import Foundation
//import NIO
//import NIOHPACK
//import AVKit
//import AVFoundation
//
//class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//
//    private var channelListResponse: [TvService_Channel] = []
//    var myTableView: UITableView!
//    let reposytory = Reposytory()
//
//    var cellIndentifier = "Cell"
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//
//        //reposytory.makeAuthRequestCall()
//        //reposytory.makeConfirmationCall(code: 6830)
//        //reposytory.makeChannelListRequestCall()
////        channelListResponse = reposytory.makeChannelListRequestCall().list
//////
//////
////        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
////        let displayWidth: CGFloat = self.view.frame.width
////        let displayHeight: CGFloat = self.view.frame.height
////
////        myTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
////        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
////        myTableView.dataSource = self
////        myTableView.delegate = self
////        self.view.addSubview(myTableView)
//
//        let videoURL = URL(string: "https://hls6.sweet.tv/stream/3czzkpeugf5bu4rc6xb83qh74hjn9akczy52bf6pmp6krst8fnhng52ds2pniskg9apbvyfa2dprs4xm4294jwbgypf99a7hv3yjwvsvrvcghvv2idchu3qmkvqkhzyqppv45973sj7skwbhu6qhvtzxwbcbwnwcj398ym7p")
//        let player = AVPlayer(url: videoURL!)
//        let playerLayer = AVPlayerLayer(player: player)
//        playerLayer.frame = self.view.bounds
//        self.view.layer.addSublayer(playerLayer)
//        player.play()
//
//
//
//    }
//
//
//
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
////        let result = reposytory.makeOpenStreamCall(idOfChannel: channelListResponse[indexPath.row].id)
//        //print("Num: \(result)")
//        //print("Value: \(channelListResponse[indexPath.row].name)")
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return channelListResponse.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
//        cell.textLabel!.text = "\(channelListResponse[indexPath.row].name)"
//        return cell
//    }
//}
//
//class Reposytory {
//
//    var phoneRequest = SignupService_SetPhoneRequest()
//    var clientConnection: ClientConnection?
//    var signupServiceClient: SignupService_SignupServiceClient?
//    var tvServiceChannel: TvService_TvServiceClient?
//
//    var tvServiceStream: TvService_TvServiceClient?
//
//    var token = "3934c3d0c38aec95a8d4a0385cb47ddd"
//
//    let eventLoopGroup = MultiThreadedEventLoopGroup(numberOfThreads: 1)
//    private var channel: ClientConnection?
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
//
//    func makeAuthRequestCall() {
//
////        if self.signupServiceClient == nil {
////            self.signupServiceClient = SignupService_SignupServiceClient(channel: channel as! GRPCChannel)
////        }
////        guard let signupServiceClient = self.signupServiceClient else {
////            print("SERVICE HASN'T BEEN CREATED YET")
////            return
////        }
//
////        print("REQUEST MESSAGE \(phoneRequest)")
////        let call = signupServiceClient?.setPhone(phoneRequest)
////        let response = try! call?.response.wait()
////        print("CALL SUCCESS WITH RESPONSE \(response)")
//    }
//
//    func makeConfirmationCall(code: Int32) {
//
//        if self.signupServiceClient == nil {
//            self.signupServiceClient = SignupService_SignupServiceClient(channel: channel as! GRPCChannel)
//        }
//        guard let signupServiceClient = self.signupServiceClient else {
//            print("SERVICE HASN'T BEEN CREATED YET")
//            return
//        }
//        var codeRequest = SignupService_SetCodeRequest()
//        codeRequest.phone = "380964485373"
//        codeRequest.confirmationCode = code
//        print("REQUEST MESSAGE \(codeRequest)")
//        let call = signupServiceClient.setCode(codeRequest)
//        let response = try! call.response.wait()
//        print("CALL SUCCESS WITH RESPONSE \(response)")
//        token = response.authToken
//    }
//
//    func makeChannelListRequestCall() -> TvService_GetChannelsResponse {
//        let headers: HPACKHeaders = ["authentication": token]
//        //let headers: HPACKHeaders = ["authentication": "94b515fded1cad1773e8df95544abcb5"]
//        let callOptions = CallOptions(customMetadata: headers)
//        if self.tvServiceChannel == nil {
//            self.tvServiceChannel = TvService_TvServiceClient(channel: channel as! GRPCChannel, defaultCallOptions: callOptions)
//        }
//        guard let tvServiceChannel = self.tvServiceChannel else {
//            print("SERVICE HASN'T BEEN CREATED YET")
//            return TvService_GetChannelsResponse()
//        }
//        var channelListRequest = TvService_GetChannelsRequest()
//        channelListRequest.auth = token
//        //channelListRequest.auth = "94b515fded1cad1773e8df95544abcb5"
//        channelListRequest.needIcons = false
//        channelListRequest.needEpg = false
//        channelListRequest.needOffsets = false
//
//        print("REQUEST MESSAGE \(channelListRequest)")
//        let call = tvServiceChannel.getChannels(channelListRequest, callOptions: callOptions)
//        let response = try! call.response.wait()
//        print("CALL SUCCESS WITH RESPONSE \(response)")
//        return response
//    }
//
//    
//}
//
//
//
//
//
