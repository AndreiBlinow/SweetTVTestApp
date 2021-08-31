//
//  ChannelsRouter.swift
//  SweetTVTestApp
//
//  Created by AndreiBlinov on 09.09.2033.
//

import UIKit

protocol ChannelsRouterProtocol: AnyObject {
    func closeCurrentViewController()
}


class ChannelsRouter: ChannelsRouterProtocol {
    
    weak var viewController: ChannelsViewController!
    
    init(viewController: ChannelsViewController) {
        self.viewController = viewController
    }
    
    func closeCurrentViewController() {
        viewController.dismiss(animated: true, completion: nil)
    }
}
