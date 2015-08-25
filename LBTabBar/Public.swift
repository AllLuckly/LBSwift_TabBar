//
//  Public.swift
//  SayGift
//
//  Created by chenlei_mac on 15/8/24.
//  Copyright (c) 2015年 Bison. All rights reserved.
//

import UIKit

class Public: NSObject {
    
    class func getImgView(ImgName: NSString)->UIImage{
        
        var image:UIImage = UIImage(named: ImgName as String)!
        
        image = image.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal);
        
        return image;
    }
    
    
}
