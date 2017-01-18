//
//  HGMainController.swift
//  SmallBaiSi
//
//  Created by 顾宏钟 on 17/1/16.
//  Copyright © 2017年 hongzhong. All rights reserved.
//

import UIKit

class HGMainController: UITabBarController {
    
    // MARK:- 懒加载属性
    // 定义数组存放tabBarItem
    fileprivate lazy var itemArray : NSMutableArray = {
        let itemArray = NSMutableArray()
        return itemArray
    }()
    // 把HGTabBarView懒加载进来
    fileprivate lazy var tabBarView : HGTabBarView = {
        
        let tabBarViewFrame = self.tabBar.frame
        let tabBarView = HGTabBarView(frame: tabBarViewFrame, itemArray: self.itemArray)
        return tabBarView
    }()
    
    // MARK:- 系统回调函数
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.blue
        
        // 添加所有的子控制器
        self.addAllChildViewController()
        
        // 设置tabBar上按钮的内容
        self.setTabBarContent()
        
        // 移除系统tabBar
        self.tabBar.removeFromSuperview()
        // 添加View作为tabBar
        self.view.addSubview(tabBarView)
    }

}

extension HGMainController {
    
    // MARK:- 添加所有的子控制器
    fileprivate func addAllChildViewController() {
        
        // 精华
        let essenceVC : HGEssenceController = HGEssenceController()
        essenceVC.view.backgroundColor = UIColor.red
        let essenceNav : UINavigationController = UINavigationController(rootViewController: essenceVC)
        self.addChildViewController(essenceNav)
        // 最新
        let newVC : HGEssenceController = HGEssenceController()
        newVC.view.backgroundColor = UIColor.yellow
        let newNav : UINavigationController = UINavigationController(rootViewController: newVC)
        self.addChildViewController(newNav)
        // 发布
        let publishVC : HGEssenceController = HGEssenceController()
        self.addChildViewController(publishVC)
        // 关注
        let followVC : HGEssenceController = HGEssenceController()
        followVC.view.backgroundColor = UIColor.darkGray
        let followNav : UINavigationController = UINavigationController(rootViewController: followVC)
        self.addChildViewController(followNav)
        // 我
        let meVC : HGEssenceController = HGEssenceController()
        meVC.view.backgroundColor = UIColor.black
        let meNav : UINavigationController = UINavigationController(rootViewController: meVC)
        self.addChildViewController(meNav)
    }
    
    // MARK:- 设置tabBar上按钮的内容
    fileprivate func setTabBarContent() {
        
        // 精华
        self.setOneTabBarContent(index : 0, title: "精华", image: UIImage(named : "tabBar_essence_icon")!, selectImage: UIImage(named : "tabBar_essence_click_icon")!)
        // 新帖
        self.setOneTabBarContent(index : 1, title: "新帖", image: UIImage(named : "tabBar_new_icon")!, selectImage: UIImage(named : "tabBar_new_click_icon")!)
        // 发布
        self.setOneTabBarContent(index: 2, image: UIImage(named : "tabBar_publish_icon")!, selectImage: UIImage(named : "tabBar_publish_click_icon")!)
        self.childViewControllers[2].tabBarItem.isEnabled = false
        // 关注
        self.setOneTabBarContent(index : 3, title: "关注", image: UIImage(named : "tabBar_me_icon")!, selectImage: UIImage(named : "tabBar_me_click_icon")!)
        // 我
        self.setOneTabBarContent(index : 4, title: "我", image: UIImage(named : "tabBar_friendTrends_icon")!, selectImage: UIImage(named : "tabBar_friendTrends_click_icon")!)
    }
    // MARK:- 设置tabBar上其中一个按钮内容的抽取
    fileprivate func setOneTabBarContent(index : Int, title : String? = nil, image : UIImage? = nil, selectImage : UIImage? = nil) {
        
        let vc = self.childViewControllers[index]
        vc.tabBarItem.title = title
        vc.tabBarItem.image = image
        vc.tabBarItem.selectedImage = selectImage
        self.itemArray.add(vc.tabBarItem)
        
    }
}
