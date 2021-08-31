

import UIKit
import GRPC
import SwiftProtobuf
import Foundation
import NIO

protocol PlayerViewProtocol: AnyObject {
    //func setUrlButtonTitle(with title: String)
}

class PlayerViewController: UIViewController, PlayerViewProtocol {
    
    var presenter: PlayerPresenterProtocol!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
}
