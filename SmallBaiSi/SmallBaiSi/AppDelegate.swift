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
        
        // 统一设置TabBar和NavigationBar
        setTabBarAndNavigationBar()
        
        // 创建窗口, 设置窗口的根控制器, 显示窗口
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let tabBarVc : HGMainController = HGMainController()
        self.window?.rootViewController = tabBarVc
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
    // MARK:- 统一设置TabBar和NavigationBar
    fileprivate func setTabBarAndNavigationBar() {
        
        // 统一设置TabBar
        // 其实就是设置其的富文本属性
        let hg_tabBarItem : UITabBarItem = UITabBarItem.appearance()
        
        hg_tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName : UIColor.black], for: UIControlState.selected)
        hg_tabBarItem.setTitleTextAttributes([NSFontAttributeName : UIFont.systemFont(ofSize: 13)], for: UIControlState.normal)
    }
}

