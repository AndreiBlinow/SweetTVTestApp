

import UIKit

protocol ChannelsRouterProtocol: AnyObject {
    func playStream(url: String, id: Int32, updateTime: uint)
    func showGenres()
}


class ChannelsRouter: ChannelsRouterProtocol {
    
    weak var viewController: ChannelsViewController!
    
    init(viewController: ChannelsViewController) {
        self.viewController = viewController
    }
    
    func playStream(url: String, id: Int32, updateTime: uint) {
        let playerView = PlayerConfigurator().configure(url: url, channelID: id, updateTime: updateTime)
        viewController.present(playerView, animated: false)
    }
    
    func showGenres() {
        let genresViewController = GenreConfigurator().configure()
        viewController.navigationController?.pushViewController(genresViewController, animated: true)
    }
}
