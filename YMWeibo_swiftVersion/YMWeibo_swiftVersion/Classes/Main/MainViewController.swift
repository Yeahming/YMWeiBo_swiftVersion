//
//  MainViewController.swift
//  YMWeibo_swiftVersion
//
//  Created by 樊彦明 on 15/9/27.
//  Copyright © 2015年 developer_YM. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //添加所有子控制器
        setupChildViewControllers()
        // Do any additional setup after loading the view.
    }
    // MARK: - 添加所有子控制器
    func setupChildViewControllers(){
        // home
        setupEachChildViewController(HomeTableViewController(), imageName: "tabbar_home", title: "主页")
        // Message
        setupEachChildViewController(MessageTableViewController(), imageName: "tabbar_message_center", title: "消息")
        // discover
        setupEachChildViewController(DiscoverTableViewController(), imageName: "tabbar_discover", title: "发现")
        // me
        setupEachChildViewController(MessageTableViewController(), imageName: "tabbar_profile", title: "我")
        
    }
    // MARK: - 添加每个子控制器
    func setupEachChildViewController(VC: UIViewController, imageName: String, title: String){
        // 设置显示相关
        VC.title = title
        VC.tabBarItem.image = UIImage(named: imageName)
        VC.tabBarItem.selectedImage = UIImage(named: imageName + "_highlighted")
        // 包装导航控制器
        let naviVC = WrapNaciViewController()
        naviVC.addChildViewController(VC)
        // 设置工具条风格
        tabBar.tintColor = UIColor.orangeColor()
        // 添加到tabbar控制器
        addChildViewController(naviVC)
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
