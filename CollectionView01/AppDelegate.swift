//
//  AppDelegate.swift
//  CollectionView01
//
//  Created by Keen on 19/02/20.
//  Copyright © 2020 iosapp. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let viewController = ViewController()
        window?.rootViewController = UINavigationController(rootViewController: viewController)
        return true
    }
}
