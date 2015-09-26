//
//  BarItem.swift
//  YMWeibo_swiftVersion
//
//  Created by 樊彦明 on 15/9/27.
//  Copyright © 2015年 developer_YM. All rights reserved.
//

import UIKit
extension UIBarButtonItem{
    
    // 快速便利构造器
    convenience  init(imageName: String) {
        self.init()
        let button = UIButton()
        button.setImage(UIImage(named: imageName), forState: UIControlState.Normal)
        button.setImage(UIImage(named: imageName + "_highlighted"), forState: UIControlState.Highlighted)
        
        // 设置frame
        button.sizeToFit()
        self.customView = button
    }
    
    // 创建一个类方法
    class func createButton(imageName: String) -> (UIBarButtonItem) {
        
        let button = UIButton()
        button.setImage(UIImage(named: imageName), forState: UIControlState.Normal)
        button.setImage(UIImage(named: imageName + "_highlighted"), forState: UIControlState.Highlighted)
        
        // 设置frame
        button.sizeToFit()
        return UIBarButtonItem(customView: button)
    }
}