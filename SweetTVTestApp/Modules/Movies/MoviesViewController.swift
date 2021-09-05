
import UIKit

protocol MoviesViewProtocol: AnyObject {
    
}

class MoviesViewController: UIViewController, MoviesViewProtocol, UITableViewDelegate, UITableViewDataSource{
        
    var presenter: MoviesPresenterProtocol!
    var genreID: Int32?
    var movieList = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let genreId = genreID else {
            return
        }
        
        movieList = presenter.getMoviesList(genreID: genreId)
        
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
        presenter.movieClicked(index: indexPath.row)
        print(indexPath.row)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath as IndexPath)
        cell.textLabel!.text = "\(movieList[indexPath.row])"
        return cell
    }
}


