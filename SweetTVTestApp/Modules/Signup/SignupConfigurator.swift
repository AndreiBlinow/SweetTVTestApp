

import UIKit

protocol SignupConfiguratorProtocol: AnyObject {
    func configure() -> SignupViewController
}

class SignupConfigurator: SignupConfiguratorProtocol {
    
    func configure() -> SignupViewController {
        let view = SignupViewController()
        let presenter = SignupPresenter(view: view)
        view.presenter = presenter
        let interactor = SignupInteractor(presenter: presenter)
        let router = SignupRouter(viewController: view)
        presenter.interactor = interactor
        presenter.router = router
        return view
    }
}
