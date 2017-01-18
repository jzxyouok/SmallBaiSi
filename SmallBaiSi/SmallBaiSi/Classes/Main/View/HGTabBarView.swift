//
//  HGTabBarView.swift
//  SmallBaiSi
//
//  Created by 顾宏钟 on 17/1/18.
//  Copyright © 2017年 hongzhong. All rights reserved.
//

import UIKit

class HGTabBarView: UIView {
    
    // MARK:- 定义属性
    fileprivate var itemArray: NSMutableArray
    
    // MARK:- 自定义构造函数
    init(frame: CGRect, itemArray: NSMutableArray) {
        
        self.itemArray = itemArray
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
        
        self.setTabBarItemArray(tabBarItemArray: self.itemArray)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        var x : CGFloat = 0
        let y : CGFloat = 0
        let w : CGFloat = self.bounds.width/CGFloat(self.itemArray.count)
        let h : CGFloat = self.bounds.height
        
        for index in 0..<self.itemArray.count {
            
            // 创建自定义的tabBarItem
            x = (self.bounds.width/CGFloat(self.itemArray.count)) * CGFloat(index)
            let tabBarItemBtn = self.subviews[index]
            if index == 2 {
                tabBarItemBtn.frame = CGRect(x: x - 8, y: y, width: w, height: h)
            } else {
                tabBarItemBtn.frame = CGRect(x: x, y: y, width: w, height: h)
            }
        }
    }
    
}

extension HGTabBarView {
    
    func setTabBarItemArray(tabBarItemArray : NSArray) {
        
        for index in 0..<self.itemArray.count {
            
            // 创建按钮
            let tabBarItemBtn = UIButton(type: UIButtonType.custom)
            // 取出模型
            let item : UITabBarItem = tabBarItemArray[index] as! UITabBarItem
            // 设置文字
            tabBarItemBtn.setTitle(item.title, for: UIControlState.normal)
            tabBarItemBtn.setTitle(item.title, for: UIControlState.selected)
            // 设置正常状态下的图片
            tabBarItemBtn.setImage(item.image, for: UIControlState.normal)
            // 设置选中状态下的图片
            tabBarItemBtn.setImage(item.selectedImage, for: UIControlState.selected)
            self.addSubview(tabBarItemBtn)
        }
    }
}
