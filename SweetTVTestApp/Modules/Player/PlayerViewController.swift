

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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let urlString = urlString else {
            return
        }
        let url = URL(string: urlString)
        
        let asset = AVAsset(url: url!)
        let playerItem = AVPlayerItem(asset: asset)
        let player = AVPlayer(playerItem: playerItem)
        
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds //bounds of the view in which AVPlayer should be displayed
        playerLayer.videoGravity = .resizeAspect
        
        self.view.layer.addSublayer(playerLayer)
        player.play()
    }
    
    
    
}
