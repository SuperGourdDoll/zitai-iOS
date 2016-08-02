//
//  LeftViewController.swift
//  ZiTai
//
//  Created by devil wang on 8/2/16.
//  Copyright © 2016 sgd. All rights reserved.
//  左侧菜单栏  这里使用简单的mvvm模式

import UIKit

class LeftViewController: BaseViewController, UIScrollViewDelegate {
    
    //MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI() {
        
        view.addSubview(tableView)
        tableView.tableHeaderView = tableHeader
//        tableHeader.backgroundColor = UIColor(patternImage:leftViewModel.bkImg!) //设置背景图
        tableHeader.userPhotoImgView.image = leftViewModel.userImg!
        tableHeader.emailLabel.text = leftViewModel.userEmail!
        tableHeader.bgImgView.image = leftViewModel.bkImg!
    }
    
    //MARK: 懒加载
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        tableView.separatorStyle = .None
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor.whiteColor()
        tableView.frame = CGRect(x: 0, y: 0, width: self.view.width-60, height: self.view.height)
        tableView.tableFooterView = UIView()
        tableView.registerClass(LeftTableViewCell.self,
                                forCellReuseIdentifier: LeftTVCIdentifier)
        tableView.rowHeight = 55
        
        return tableView
    }()

    lazy var leftViewModel: LeftViewModel = {
        let img = UIImage(named: "dd")!
        let img1 = UIImage(named: "acg")!
        let imgs = [img,img,img,img,img]
        let strs = ["Today","The See","The Voice","Collections","Exit"]
        let lm = LeftModel(userImg: img, userEmail: "user@email.com", bkImg: img1, itemImg: imgs, itemTitle: strs)
        let leftVM = LeftViewModel(leftModel: lm)
        return leftVM
    }()
    
    lazy var tableHeader: LeftHeaderView = {
        let tableHeader = LeftHeaderView(frame: CGRect(x: 0, y: 0, width: self.view.width-60, height: self.view.height/3))
        
        return tableHeader
    }()
}

// MARK: - UITableViewDelegate, UITableViewDataSource
extension LeftViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = LeftTableViewCell(style: UITableViewCellStyle.Default,
                                     reuseIdentifier: LeftTVCIdentifier)
        cell.imageView?.image = self.leftViewModel.itemImg[indexPath.section]
        cell.textLabel?.text = self.leftViewModel.itemTitle[indexPath.section]
        
        if indexPath.section == 4 {
            cell.addBlackLine()
        }
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.row {
        case 0:
            print("")
            
        
        default: break
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
//    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 10
//    }
//    
//    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return 10
//    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        tableHeader.scrollViewDidScroll(scrollView)
    }
}