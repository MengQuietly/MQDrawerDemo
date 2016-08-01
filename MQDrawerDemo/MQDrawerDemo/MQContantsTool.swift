//
//  MQContantsTool.swift
//  MQDrawerDemo
//
//  Created by mengmeng on 16/8/1.
//  Copyright © 2016年 mengQuietly. All rights reserved.
//

import UIKit

// MARK: - 常量工具类
 /// 屏幕宽
let screenW = UIScreen.mainScreen().bounds.size.width
 /// 屏幕高
let screenH = UIScreen.mainScreen().bounds.size.height

 /// mainView 下移的最大值
let maxY:CGFloat = 80.0

 /// 左移 > 屏幕宽一半 时，mainView x 定位
let mainViewWithRight:CGFloat = 275
 /// 右移 < 屏幕宽一半 时，mainView x 定位
let mainViewWithLeft:CGFloat = -250
