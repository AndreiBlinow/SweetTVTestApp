
import UIKit
import GRPC
import SwiftProtobuf
import Foundation
import NIO

protocol MoviesViewProtocol: class {
    //func setUrlButtonTitle(with title: String)
}

class MoviesViewController: UIViewController, MoviesViewProtocol, UITableViewDelegate, UITableViewDataSource{
        
    var presenter: MoviesPresenterProtocol!
    
    var movieList = [String]()
    
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
        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.movieClicked(genreName: movieList[indexPath.row])
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        movieList = presenter.getMoviesList()
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath as IndexPath)
        cell.textLabel!.text = "\(movieList[indexPath.row])"
        return cell
    }
}


