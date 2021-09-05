

import UIKit
import GRPC
import SwiftProtobuf
import Foundation
import NIO
import AVKit
import AVFoundation

protocol PlayerViewProtocol: AnyObject {
    
}

class PlayerViewController: UIViewController, PlayerViewProtocol {
    
    var presenter: PlayerPresenterProtocol!
    var urlString: String?
    var channelID: Int32?
    var updateStream: uint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        let value = UIInterfaceOrientation.landscapeLeft.rawValue
//            UIDevice.current.setValue(value, forKey: "orientation")
//
        
        let tvService = DataRepository.shared.getTvService()
        
        
        guard let urlString = urlString else {
            return
        }
        let url = URL(string: urlString)
        
        let player = AVPlayer(url: url!)
        player.rate = 1
        let playerFrame = self.view.layer.bounds
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        playerViewController.view.frame = playerFrame
            
        addChild(playerViewController)
        view.addSubview(playerViewController.view)
        playerViewController.didMove(toParent: self)
        playerViewController.entersFullScreenWhenPlaybackBegins = true
        playerViewController.showsPlaybackControls = true

        player.play()
        
        let timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(true)
//
//        if let channelId = channelID {
//            let service = DataRepository.shared.getTvService()
//            var closeStreamRequest = TvService_CloseStreamRequest()
//            closeStreamRequest.auth = DataRepository.shared.getToken()
//            closeStreamRequest.streamID = channelId
//            let call = service.closeStream(closeStreamRequest)
//            let response = try! call.response.wait()
//            print(response)
//        }
//    }
    
    @objc func updateStreame(){
        var request = TvService_UpdateStreamRequest()
        request.auth = DataRepository.shared.getToken()
        request.streamID = 
        tvService.updateStream(TvService_UpdateStreamRequest)
    }
    
}
