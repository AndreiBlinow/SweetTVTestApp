//
//  ChannelsRouter.swift
//  SweetTVTestApp
//
//  Created by AndreiBlinov on 09.09.2033.
//

import UIKit

protocol ChannelsRouterProtocol: AnyObject {
    func closeCurrentViewController(url: String)
}


class ChannelsRouter: ChannelsRouterProtocol {
    
    weak var viewController: ChannelsViewController!
    
    init(viewController: ChannelsViewController) {
        self.viewController = viewController
    }
    
    func closeCurrentViewController(url: String) {
        let playerView = PlayerConfigurator().configure(url: url)
        viewController.present(playerView, animated: false)
    }
}
