//
//  BaseTabbarController.swift
//  NavController-TabbarController
//
//  Created by Vinh The on 7/17/16.
//  Copyright © 2016 Vinh The. All rights reserved.
//

import UIKit

class BaseTabbarController: UITabBarController, UITabBarControllerDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Doi mau cho tabBar
        tabBar.barTintColor = UIColor(red: 0.15, green: 0.2, blue: 0.25, alpha: 1.0)
        tabBar.translucent = false
        
        //Thiết lập chữ Item tabbar không đổi cả khi select, appearance() se thay doi toan bo tabbar co tren ung dung thua ke tu BasetabbarController
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.whiteColor(), NSFontAttributeName: UIFont(name: "SFUIText-Regular", size: 12)!], forState: .Normal)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let bookVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("YourBookVC") as! YourBookController
        
        let homeVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("HomeVC") as! HomeViewController
        
        let profileVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("ProfileVC") as! ProfileViewController
        
        let bookNav = BaseNavigationController(rootViewController: bookVC)
        let homeNav = BaseNavigationController(rootViewController: homeVC)
        let profileNav = BaseNavigationController(rootViewController: profileVC)
        
        viewControllers = [bookNav, homeNav, profileNav]
        
        settingNavForEachController(bookVC, transparent: true, navTitle: "BOOK-NAV", tabbarTitle: "BOOK", image: "Book", selectedImage: "Selected-URBook")
        
        settingNavForEachController(homeVC, transparent: true, navTitle: "HOME-NAV", tabbarTitle: "HOME", image: "Home", selectedImage: "Selected-Home")
        
        settingNavForEachController(profileVC, transparent: true, navTitle: "PROFILE-NAV", tabbarTitle: "PROFILE", image: "Profile", selectedImage: "Selected-Profile")
//        profileVC.title = "Profile"
//        homeVC.title = "Home"
//        bookVC.title = "Book"
        
    }
    
    func settingNavForEachController(viewcontroller: BaseViewController, transparent: Bool, navTitle: String, tabbarTitle: String, image: String, selectedImage: String) {
        
        viewcontroller.navigationItem.title = navTitle
        viewcontroller.tabBarItem = UITabBarItem(title: tabbarTitle, image: UIImage(named: image)?.imageWithRenderingMode(.AlwaysOriginal), selectedImage: UIImage(named: selectedImage)?.imageWithRenderingMode(.AlwaysOriginal))
        
        viewcontroller.tranparent = transparent
       
    }
}
