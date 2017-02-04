//
//  UIView+Frame.swift
//  SmallBaiSi
//
//  Created by 顾宏钟 on 17/2/4.
//  Copyright © 2017年 hongzhong. All rights reserved.
//

import UIKit

extension UIView {
    
    var hg_x : CGFloat {
        
        get {
            return frame.origin.x
        }
        
        set(newVale) {
            
            var tempFrame : CGRect = frame  // 空的frame = 系统原来的frame
            tempFrame.origin.x = newVale    // 系统原来的frame = 新的frame
            frame = tempFrame               // 系统原来的frame = 新的frame
        }
    }
    
    // y
    var hg_y : CGFloat {
        
        get {
            return self.frame.origin.y
        }
        
        set(newValue) {
            
            var tempFrame : CGRect = frame
            tempFrame.origin.y = newValue
            frame = tempFrame
        }
    }
    
    // width
    var hg_width : CGFloat {
        
        get {
            return frame.size.width
        }
        
        set(newValue) {
            var tempFrame : CGRect = frame
            tempFrame.size.width = newValue
            frame = tempFrame
        }
    }
    
    // height
    var hg_height : CGFloat {
        
        get {
            return self.frame.size.height
        }
        
        set(newValue) {
            
            var tempFrame = frame
            tempFrame.size.height = newValue
            frame = tempFrame
        }
    }
}
