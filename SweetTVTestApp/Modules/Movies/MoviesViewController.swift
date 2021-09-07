
import UIKit

protocol MoviesViewProtocol: AnyObject {
    var table: UITableView { get set }
    var movieList: [String] { get set }
}

class MoviesViewController: UIViewController, MoviesViewProtocol, UITableViewDelegate, UITableViewDataSource{
        
    var presenter: MoviesPresenterProtocol!
    var genreID: Int32?
    var movieList = [String]()
    
    lazy var table: UITableView = {
        let tableView = UITableView(frame: .zero)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addConstraints()
        guard let genreId = genreID else {
            return
        }
        presenter.getMoviesList(genreID: genreId)
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
    
    func addConstraints() {
        NSLayoutConstraint.activate([
            table.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            table.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            table.topAnchor.constraint(equalTo: view.topAnchor, constant: UIApplication.shared.statusBarFrame.size.height),
            table.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}


