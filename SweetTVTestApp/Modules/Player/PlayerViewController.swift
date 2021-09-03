

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
        playerLayer.frame = self.view.bounds
        playerLayer.videoGravity = .resizeAspectFill
        
        self.view.layer.addSublayer(playerLayer)
        
        player.play()
    }
    
    var closeButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .red
        btn.setTitle("Confirm", for: .normal)
        btn.addTarget(self, action: #selector(closePlayer), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private func setConstraints() {
        view.addSubview(self.closeButton)
        
        NSLayoutConstraint.activate([
            closeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            closeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20),
            closeButton.widthAnchor.constraint(equalToConstant: 30),
            closeButton.heightAnchor.constraint(equalToConstant: 31),
        ])
    }
    
    @objc func closePlayer() {
        if let id = channelID {
            presenter.closeStream(id: id)
        }
        presenter.closePlayer()
    }
}
