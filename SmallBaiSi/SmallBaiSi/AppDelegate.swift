//
//  AppDelegate.swift
//  SmallBaiSi
//
//  Created by 顾宏钟 on 17/1/16.
//  Copyright © 2017年 hongzhong. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // 创建窗口, 设置窗口的根控制器, 显示窗口
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let tabBarVc : HGMainController = HGMainController()
        self.window?.rootViewController = tabBarVc
        self.window?.makeKeyAndVisible()
        
        return true
    }

}

