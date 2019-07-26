//
//  AppDelegate.swift
//  Lexis
//
//  Created by Beslan Tularov on 23/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var rootController: UINavigationController {
        
        let navigation = UINavigationController()
        window = UIWindow(frame: UIScreen.main.bounds)
        window!.rootViewController = navigation
        window!.makeKeyAndVisible()
        return self.window!.rootViewController as! UINavigationController
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        produceApplicationCoordinator().start()
        return true
    }
    
    private func produceApplicationCoordinator() -> Coordinator {
        let router = RouterImp(rootController: self.rootController)
        let coordinatorFactory = CoordinatorFactoryImp()
        let flowCoordinator = FlowFactoryImp()
        
        return ApplicationCoordinator(router: router,
                                      coordinatorFactory: coordinatorFactory,
                                      flowFactory: flowCoordinator)
    }
}

