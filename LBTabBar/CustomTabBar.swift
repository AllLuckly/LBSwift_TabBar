//
//  CustomTabBar.swift
//  SayGift
//
//  Created by chenlei_mac on 15/8/24.
//  Copyright (c) 2015年 Bison. All rights reserved.
//

import UIKit

class CustomTabBar: UITabBarController {
    
    class func CusTomTabBar() ->UITabBarController{
        
        let homeVC = Home_VC()
        let class_VC = Class_VC()
        let brand_VC = Brand_VC()
        let shoping_VC = Shoping_VC()
        let personal_VC = Personal_VC()
        let homeNvc:UINavigationController = LBNvc(rootViewController: homeVC)
        let classNvc:UINavigationController = LBNvc(rootViewController: class_VC)
        let brandNvc:UINavigationController = LBNvc(rootViewController: brand_VC)
        let shopingNvc:UINavigationController = LBNvc(rootViewController: shoping_VC)
        let personalNvc:UINavigationController = LBNvc(rootViewController: personal_VC)
        let homeTabbarItem = UITabBarItem(title: "首页", image: (Public .getImgView("home_tab_home_btn@2x")) , selectedImage: (Public .getImgView("home_tab_home_selected_btn@2x")))
        let classTabbarItem = UITabBarItem(title: "分类", image: (Public .getImgView("home_tab_saunter_btn@2x")), selectedImage: (Public .getImgView("home_tab_saunter_selected_btn@2x")))
        let brandTabbarItem = UITabBarItem(title: "品牌团", image: (Public .getImgView("home_tab_branc_btn@2x")), selectedImage: (Public .getImgView("home_tab_branc_selected_btn@2x")))
        let shopingTabbarItem = UITabBarItem(title: "积分商城", image: (Public .getImgView("home_tab_point_btn@2x")), selectedImage: (Public .getImgView("home_tab_point_selected_btn@2x")))
        let personalTabbarItem = UITabBarItem(title: "个人中心", image: (Public .getImgView("home_tab_personal_btn@2x")), selectedImage: (Public .getImgView("home_tab_personal_selected_btn@2x")))
        homeNvc.tabBarItem = homeTabbarItem;
        classNvc.tabBarItem = classTabbarItem;
        brandNvc.tabBarItem = brandTabbarItem;
        shopingNvc.tabBarItem = shopingTabbarItem;
        personalNvc.tabBarItem = personalTabbarItem;
        let tc = UITabBarController()
        
        tc.tabBar.tintColor = UIColor.red
        //        tc.tabBar.backgroundImage = Public.getImgView("3.png")
        tc.viewControllers = [homeNvc,classNvc,brandNvc,shopingNvc,personalNvc];
        return taBar;
    }

}
