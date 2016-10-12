//
//  UIImage+Extension.swift
//  YNMobileProject
//
//  Created by zyn on 16/10/11.
//  Copyright © 2016年 张艳能. All rights reserved.
//

import UIKit

extension UIImage {
    
    /**
     *  屏幕截图
     *
     *  @return 截图后的图片
     */
    class func getScreenshots() -> UIImage {
        let window = UIApplication.shared.keyWindow!
        //开启图形上下文
        UIGraphicsBeginImageContextWithOptions(window.bounds.size, false, 1)
        //把window内容画上去
        window.drawHierarchy(in: window.bounds, afterScreenUpdates: false)
        //获取当前上下文的图片
        let image = UIGraphicsGetImageFromCurrentImageContext()
        //结束上下文
        UIGraphicsEndPDFContext()
        
        return image!
    }
    /**
     *  拉伸图片(拉伸中间位置)
     *
     *  @return 拉伸后的图片
     */
    func resizedImage()-> UIImage {
        return stretchableImage(withLeftCapWidth: Int(self.size.width * 0.5), topCapHeight: Int(self.size.height * 0.5))
    }
    /**
     *  拉伸图片，指定区域,图片名称(使用@1x的图片)
     *
     *  @param edge      保留区域
     *
     *  @return 拉伸后的图片
     */
    func resizedImageWithEdge(edge:UIEdgeInsets)-> UIImage {
        return resizableImage(withCapInsets: edge)
    }
    /**
     *  缩放图片到指定大小
     *
     *  @param scaleSize 缩放的尺寸
     *
     *  @return 缩放后的图片
     */
    func scaleImageWithSize(scaleSize:CGSize)-> UIImage {
        //size 为CGSize类型，即你所需要的图片尺寸
        UIGraphicsBeginImageContextWithOptions(scaleSize, false, 0.0)
        draw(in:CGRect(x: 0, y: 0, width: scaleSize.width, height: scaleSize.height))
        let scaleImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext();
        return scaleImage!;
    }

}
