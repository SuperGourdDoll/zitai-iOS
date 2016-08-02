//
//  BaseViewController.swift
//  ZiTai
//
//  Created by devil wang on 8/2/16.
//  Copyright © 2016 sgd. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    var labelName = "所见"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()
        
        let btns = [leftMenuBtn, leftMenuLabel]
        navigationItem.leftBarButtonItems = btns
        navigationItem.rightBarButtonItem = rightMenuBtn

    }
    
    
    
    deinit {
        print("deinit ViewController: ", self.description)
    }
    
    
    func leftMenuBtnAction() {
        print("show left")
        self.slideMenuController()?.toggleLeft()
    }
    
    func rightBarBtnAction() {
        print("right barbtn")
    }
    
    //MARK: 懒加载
    lazy var leftMenuBtn: UIBarButtonItem = {
        let leftMenuBtn: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Edit,
                                                           target: self,
                                                           action: #selector(BaseViewController.leftMenuBtnAction))
        leftMenuBtn.tintColor = UIColor.whiteColor()
        return leftMenuBtn
    }()
    
    lazy var leftMenuLabel: UIBarButtonItem = {
        let label = UILabel(frame: CGRect.init(x: 0, y: 0, width: 100, height: nvH))
        label.text = self.labelName
        label.textColor = UIColor.whiteColor()
        label.textAlignment = .Center
        label.font = Theme.naviFont
        let barbtn = UIBarButtonItem(customView: label)
        return barbtn
    }()
    
    lazy var rightMenuBtn: UIBarButtonItem = {
        let rightMenuBtn: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Add,
                                                            target: self,
                                                            action: #selector(BaseViewController.rightBarBtnAction))
        rightMenuBtn.tintColor = UIColor.whiteColor()
        return rightMenuBtn
    }()

}
