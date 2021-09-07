

import UIKit

protocol ChannelsViewProtocol: AnyObject {
    var table: UITableView { get }
    var channelsNameList: [String] { get set }
}



class ChannelsViewController: UIViewController, ChannelsViewProtocol, UITableViewDelegate, UITableViewDataSource{
        
    var presenter: ChannelsPresenterProtocol!
    
    var channelsNameList = [String]()
    
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
        title = "Channels"
        presenter.getChannelsNameList()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Genres", style: .plain, target: self, action: #selector(showGenres))
    }
    
    func addConstraints() {
        NSLayoutConstraint.activate([
            table.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            table.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            table.topAnchor.constraint(equalTo: view.topAnchor, constant: UIApplication.shared.statusBarFrame.size.height),
            table.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.channelClicked(index: indexPath.row)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return channelsNameList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath as IndexPath)
        cell.textLabel!.text = "\(channelsNameList[indexPath.row])"
        return cell
    }
    
    @objc func showGenres (){
        presenter.showGenresView()
    }
}
