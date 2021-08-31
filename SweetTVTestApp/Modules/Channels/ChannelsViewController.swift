

import UIKit
import GRPC
import SwiftProtobuf
import Foundation
import NIO

protocol ChannelsViewProtocol: class {
    //func setUrlButtonTitle(with title: String)
}



class ChannelsViewController: UIViewController, ChannelsViewProtocol, UITableViewDelegate, UITableViewDataSource{
        
    var presenter: ChannelsPresenterProtocol!
    
    var channelsNameList = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        channelsNameList = presenter.getChannelsNameList()
        var myTableView: UITableView!
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        
        myTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        myTableView.dataSource = self
        myTableView.delegate = self
        self.view.addSubview(myTableView)
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.channelClicked(index: indexPath.row)
//        self.present(PlayerViewController(), animated: false, completion: nil)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return channelsNameList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath as IndexPath)
        cell.textLabel!.text = "\(channelsNameList[indexPath.row])"
        //cell.textLabel!.text = "\(channelListResponse[indexPath.row].name)"
        return cell
    }
}
