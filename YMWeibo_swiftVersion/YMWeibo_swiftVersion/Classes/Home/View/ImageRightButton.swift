//
//  ImageRightButton.swift
//  YMWeibo_swiftVersion
//
//  Created by 樊彦明 on 15/9/27.
//  Copyright © 2015年 developer_YM. All rights reserved.
//

import UIKit

class ImageRightButton: UIButton {
    

    override func layoutSubviews() {
        super.layoutSubviews()
        titleLabel?.frame.origin.x = 0
        imageView?.frame.origin.x = (titleLabel?.frame.size.width)!
        titleLabel?.textColor = UIColor.blackColor()
        sizeToFit()
    }
    

}
