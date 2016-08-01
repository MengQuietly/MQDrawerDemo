//
//  MQMainViewController.swift
//  MQDrawerDemo
//
//  Created by mengmeng on 16/8/1.
//  Copyright © 2016年 mengQuietly. All rights reserved.
//

import UIKit

class MQMainViewController: MQDrawerTool {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        setUpMainView()
        setUpMainViewWithNav()
    }
    
    // MARK: - 设置不带 navigation 的视图
    func setUpMainView(){
        let table = MQTableMainController()
        table.view.frame = self.view.bounds
        // 设计原理：若A 控制器的View 成为 B控制器View 的子控件，注意 A 控制器一定要成为B控制器的子控制器（防止控制器被销毁）
        self.addChildViewController(table)
        // 主视图展示 tableview
        mainView.addSubview(table.view)
    }
    
    // MARK: - 设置带 navigation 的视图
    func setUpMainViewWithNav(){
        let table = MQTableMainController()
        let nav = UINavigationController(rootViewController: table)
        nav.navigationBar.translucent = false
        nav.navigationBar.barTintColor = UIColor.redColor()
        table.title = "展示数据"
        nav.view.frame = self.view.bounds
        // 设计原理：若A 控制器的View 成为 B控制器View 的子控件，注意 A 控制器一定要成为B控制器的子控制器（防止控制器被销毁）
        self.addChildViewController(nav)
        // 主视图展示 tableview
        mainView.addSubview(nav.view)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
