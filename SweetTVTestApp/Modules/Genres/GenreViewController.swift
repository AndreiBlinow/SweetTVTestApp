

import UIKit

protocol GenreViewProtocol: AnyObject {
    var table: UITableView { get }
    var genresList: [String] { get set }
}



class GenreViewController: UIViewController, GenreViewProtocol, UITableViewDelegate, UITableViewDataSource {
    
    var genresList = [String]()
    var presenter: GenrePresenterProtocol!
    
    
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
        title = "Genres"
        addConstraints()
        presenter.getGenreList()
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.genreClicked(index: indexPath.row)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genresList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath as IndexPath)
        cell.textLabel!.text = "\(genresList[indexPath.row])"
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

