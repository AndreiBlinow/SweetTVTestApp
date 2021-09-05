

import AVKit
import AVFoundation

protocol PlayerViewProtocol: AnyObject {
    
}

class PlayerViewController: UIViewController, PlayerViewProtocol {
    
    var presenter: PlayerPresenterProtocol!
    var urlString: String?
    var streamID: Int32?
    var updateStream: uint?
    
    var tvService = DataRepository.shared.getTvService()
    var request = TvService_UpdateStreamRequest()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
            UIDevice.current.setValue(value, forKey: "orientation")
    
        if let updateTime = updateStream {
            
        }
        
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
        
        if let streamId = streamID {
            let timer = Timer.scheduledTimer(timeInterval: Double(updateStream!), target: self, selector: #selector(fire), userInfo: nil, repeats: true)
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)

        if let streamId = streamID {
            tvService = DataRepository.shared.getTvService()
            var closeStreamRequest = TvService_CloseStreamRequest()
            closeStreamRequest.auth = DataRepository.shared.getToken()
            closeStreamRequest.streamID = streamId
            let call = tvService.closeStream(closeStreamRequest)
            let response = try! call.response.wait()
            print(response)
        }
    }
    
    @objc func fire(){
        request.auth = DataRepository.shared.getToken()
        if let streamId = streamID {
            request.streamID = streamId
        }
        let call = tvService.updateStream(request)
        let response = try! call.response
        print("timer fired")
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeLeft
    }
    override var shouldAutorotate: Bool {
        return true
    }
}

