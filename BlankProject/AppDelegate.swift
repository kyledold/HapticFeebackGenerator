//
//  AppDelegate.swift
//  BlankProject
//
//  Created by Kyle Dold on 31/05/2019.
//  Copyright © 2019 Kyle Dold. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {HapticFeebackGenerator.successFeedback()
        return true
    }
}

