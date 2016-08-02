//
//  Theme.swift
//  ZiTai
//
//  Created by devil wang on 8/2/16.
//  Copyright © 2016 sgd. All rights reserved.
//

import Foundation
import UIKit

public let nvH: CGFloat = 64
public let tbH: CGFloat = 49
public let appW: CGFloat = UIScreen.mainScreen().bounds.size.width
public let appH: CGFloat = UIScreen.mainScreen().bounds.size.height
public let mainBounce: CGRect = UIScreen.mainScreen().bounds
public let statusH: CGFloat = 20

struct Theme {
    
    ///导航颜色
    static let naviColor = UIColor(red:0.12, green:0.67, blue:0.95, alpha:1.00)//UIColor(red:0.014,  green:0.661,  blue:0.960, alpha:1)
    
    ///导航文字字体
    static let naviFont = UIFont.systemFontOfSize(19, weight: 0.8)
    
    
    ///email font
    static let emailFont = UIFont.systemFontOfSize(18)
}