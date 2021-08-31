//
//  GenreViewController.swift
//  SweetTVTestApp
//
//  Created by AndreiBlinov on 09.09.2033.
//

//
//  ChannelsViewController.swift
//  SweetTVTestApp
//
//  Created by AndreiBlinov on 09.09.2033.
//

import UIKit
import GRPC
import SwiftProtobuf
import Foundation
import NIO

protocol GenreViewProtocol: class {
    //func setUrlButtonTitle(with title: String)
}



class GenreViewController: UIViewController, GenreViewProtocol, UITableViewDelegate, UITableViewDataSource{
        
    var presenter: GenrePresenterProtocol!
    let configurator: GenreConfiguratorProtocol = GenreConfigurator()
    var genreList = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var myTableView: UITableView!
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        
        myTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        myTableView.dataSource = self
        myTableView.delegate = self
        self.view.addSubview(myTableView)
        
        
        configurator.configure(with: self)
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.genreClicked(genreName: genreList[indexPath.row])
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genreList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        genreList = presenter.getGenreList()
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath as IndexPath)
        cell.textLabel!.text = "\(genreList[indexPath.row])"
        return cell
    }
}

