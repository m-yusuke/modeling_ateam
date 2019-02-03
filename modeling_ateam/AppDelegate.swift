//
//  AppDelegate.swift
//  modeling_ateam
//
//  Created by yusuke minei on 2018/11/22.
//  Copyright © 2018 yusuke minei. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var result : [String : Int] = ["akamine" : 0, "yamada" : 0, "kono": 0, "nagatani" : 0 , "nagayama" : 0, "yoshida" : 0, "NAL" : 0, "nakamura" : 0, "kunita" : 0, "kang" : 0, "endo" : 0, "tamaki" : 0, "okazaki" : 0, "miyazato" : 0, "wada" : 0]
    var Question1status : [String : Bool] = ["prog" : false,"liner" : false,"sep" : false, "comsys" : false, "alg" : false, "os" : false, "db" : false, "datascience" : false, "info" : false, "arch" : false, "mathii" : false, "mathiii" : false, "ai" : false]
    var Question2status : [String : Bool] = ["yoshida" : false, "kunita" : false, "miyazato" : false, "akamine" : false]


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application         
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

