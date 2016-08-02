//
//  LeftViewModel.swift
//  ZiTai
//
//  Created by devil wang on 8/2/16.
//  Copyright © 2016 sgd. All rights reserved.
//  纯粹的MVVM模式

import Foundation


class LeftViewModel {
    
    private var leftModel: LeftModel!
    
    var userImg: UIImage? {
        get {
            return UIImage.imageWithClipBorder(leftModel.userImg!, borderWidth: 1, borderColor: UIColor.whiteColor())
        }
    }
    var userEmail: String? {
        get {
            return leftModel.userEmail!
        }
    }
    
    var bkImg: UIImage? {
        get {
            return leftModel.bkImg!
        }
    }
    
    var itemImg: [UIImage] {
        get {
            return leftModel.itemImg
        }
    }
    var itemTitle: [String] {
        get {
            return leftModel.itemTitle
        }
    }
    
    init(leftModel: LeftModel?) {
        self.leftModel = leftModel!
    }
    
}

