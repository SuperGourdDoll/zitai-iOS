//
//  LeftViewController.swift
//  ZiTai
//
//  Created by devil wang on 8/2/16.
//  Copyright © 2016 sgd. All rights reserved.
//  左侧菜单栏

import UIKit

class LeftViewController: BaseViewController {
    
    
    
    var leftViewModel = LeftViewModel()
    
    //MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    func setupUI() {
        
        
    }
    
    //MARK: 懒加载
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.showsVerticalScrollIndicator = false
        tableView.separatorStyle = .None
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor.whiteColor()
        tableView.frame = CGRect(x: 0, y: 0, width: appW, height: appH)
        tableView.tableFooterView = UIView()
        tableView.registerClass(LeftTableViewCell.self, forCellReuseIdentifier: LeftTVCIdentifier)
        return tableView
    }()

    
}

// MARK: - UITableViewDelegate, UITableViewDataSource
extension LeftViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(LeftTVCIdentifier, forIndexPath: indexPath) as! LeftTableViewCell
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1 {
            return 1
        }
        else {
            return 4
        }
    }
    
    
    
}