//
//  YourBookController.swift
//  NavController-TabbarController
//
//  Created by Vinh The on 7/16/16.
//  Copyright © 2016 Vinh The. All rights reserved.
//

import UIKit

class YourBookController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        //Chọn button theo kiểu có sẵn
        let cameraButtonItem = UIBarButtonItem(barButtonSystemItem: .Camera, target: self, action: #selector(takeAPicture(_:)))
        //navigationItem.leftBarButtonItem = cameraButtonItem
        
        //Chọn button theo ảnh trong Assets
        let rightButton = UIBarButtonItem(image: UIImage(named: "EMAIL"), style: .Plain, target: self, action: #selector(senEmail(_:)))
        
        var fixedSpace = UIBarButtonItem(barButtonSystemItem: .FixedSpace, target: nil, action: nil)
        fixedSpace.width = 0.0
        
        
        
        navigationItem.setRightBarButtonItems([rightButton,fixedSpace,cameraButtonItem], animated: true)
    }
    
    func takeAPicture(sender: AnyObject) {
        print("Hello")
    }
    
    func senEmail(sender: AnyObject) {
        print("Sending Email...")
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
