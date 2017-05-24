//
//  AppDelegate.swift
//  FluentTexture
//
//  Created by Thanh Dang on 5/24/17.
//  Copyright © 2017 Thanh Dang. All rights reserved.
//

import UIKit
import Then

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds).then {
            $0.backgroundColor = .white
            $0.rootViewController = Hero1ViewController()
            $0.makeKeyAndVisible()
        }

        
        return true
    }
    
}
