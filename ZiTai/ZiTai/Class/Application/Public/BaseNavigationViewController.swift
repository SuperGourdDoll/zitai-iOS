//
//  BaseNavigationViewController.swift
//  ZiTai
//
//  Created by devil wang on 8/2/16.
//  Copyright © 2016 sgd. All rights reserved.
//

import UIKit

class BaseNavigationViewController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // build navigationBar
        buildNaviBar()
    }
    
    func buildNaviBar() {
        navigationBar.backgroundColor = Theme.naviColor
        navigationBar.barTintColor = Theme.naviColor
        navigationBar.tintColor =  UIColor.whiteColor()//Theme.naviColor
        navigationBar.backgroundColor = Theme.naviColor
        navigationBar.barStyle = .Default
        navigationBar.translucent = true

    }
    
    func leftMenuBtnAction() {
        print("show left")
    }
    
    func rightBarBtnAction() {
        print("right barbtn")
    }
    

}
