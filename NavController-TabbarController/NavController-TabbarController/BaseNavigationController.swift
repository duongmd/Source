//
//  BaseNavigationController.swift
//  NavController-TabbarController
//
//  Created by Vinh The on 7/16/16.
//  Copyright © 2016 Vinh The. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {
    override func viewDidLoad() {

        //Thay doi toan bo nut back o tat ca cac navigation la mau trang
        navigationBar.tintColor = UIColor.whiteColor()
    }
    
}

