

import UIKit

protocol GenreViewProtocol: class {
    //func setUrlButtonTitle(with title: String)
}



class GenreViewController: UIViewController, GenreViewProtocol, UITableViewDelegate, UITableViewDataSource{
        
    var presenter: GenrePresenterProtocol!
    
    var genreList = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Genres"
   
        genreList = presenter.getGenreList()
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
        presenter.genreClicked(index: indexPath.row)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genreList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath as IndexPath)
        cell.textLabel!.text = "\(genreList[indexPath.row])"
        return cell
    }
}

