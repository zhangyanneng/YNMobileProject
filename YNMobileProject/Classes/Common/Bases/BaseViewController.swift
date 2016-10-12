//
//  BaseViewController.swift
//  YNSwiftProject
//
//  Created by zyn on 16/9/17.
//  Copyright © 2016年 张艳能. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        checkNetworkStatues()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    //MARK: -- 检查网络
    fileprivate func checkNetworkStatues() {
        
        let reachabilitys = Reachability()
        
        guard let reachability = reachabilitys  else {
            YNLog("Reachability初始化失败!")
            return
        }
        // 检测网络连接状态
        if reachability.isReachable {
            YNLog("网络连接：可用")
        } else {
            YNLog("网络连接：不可用")
        }
        // 检测网络类型
        if reachability.isReachableViaWiFi {
            YNLog("网络类型：Wifi")
        } else if reachability.isReachableViaWWAN {
            YNLog("网络类型：移动网络")
        } else {
            YNLog("网络类型：无网络连接")
        }
    }


}
