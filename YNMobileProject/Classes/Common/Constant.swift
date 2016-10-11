//
//  Constant.swift
//  YNSwiftProject
//
//  Created by zyn on 16/9/18.
//  Copyright © 2016年 张艳能. All rights reserved.
//

import UIKit

/// 输出日志

/// - parameter message:  日志消息

/// - parameter logError: 错误标记，默认是 false，如果是 true，发布时仍然会输出

/// - parameter file:     文件名

/// - parameter method:   方法名

/// - parameter line:     代码行数

func YNLog<T>(message: T,
              logError: Bool = false,
              file: String = #file,
              method: String = #function,
              line: Int = #line)
{
    if logError {
        print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
    } else {
        #if DEBUG
            print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
        #endif
    }
}

//MARK:-- 授权认证

let AppKey = ""
let AppSecret = ""

//MARK:-- 颜色
/// RGB颜色
func RGB(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
    return UIColor(red: r / 255, green: g / 255, blue: b / 255, alpha: 1)
}

/// 随机颜色
func RandomColor() -> UIColor {
    return RGB(r: CGFloat(arc4random_uniform(255)), g: CGFloat(arc4random_uniform(255)), b: CGFloat(arc4random_uniform(255)))
}

//MARK:屏幕宽高
let kScreenWidth = UIScreen.main.bounds.size.width
let KScreenHeight = UIScreen.main.bounds.size.height
let kScreenSize = UIScreen.main.bounds.size
let kScreenBounds = UIScreen.main.bounds


