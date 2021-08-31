

import UIKit
import GRPC
import SwiftProtobuf
import Foundation
import NIO


protocol PlayerInteractorProtocol: AnyObject {
    
}
        
class PlayerInteractor: PlayerInteractorProtocol {
    weak var presenter: PlayerPresenterProtocol!
    
    required init(presenter: PlayerPresenterProtocol) {
        self.presenter = presenter
    }
    
    
}
