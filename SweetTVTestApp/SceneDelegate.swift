//
//  SceneDelegate.swift
//  SweetTVTestApp
//
//  Created by AndreiBlinov on 25.08.2033.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    //var navController = UINavigationController()
    let signupViewController = SignupConfigurator().configure()
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        self.window = UIWindow(windowScene: windowScene)
        self.window?.rootViewController = self.signupViewController
        
        self.window?.backgroundColor = UIColor.white
        self.window?.makeKeyAndVisible()
    }
}

