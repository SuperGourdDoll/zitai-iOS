//
//  UIImageVIew+Extension.swift
//  ZiTai
//
//  Created by devil wang on 8/2/16.
//  Copyright © 2016 sgd. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    
    func buildCircleBorderImgView(borderWidth: CGFloat, borderColor: CGColor) -> UIImageView{
        //设置圆角
//        self.clipsToBounds = true
        self.layer.masksToBounds = true
        //边框
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor
        
        self.layer.cornerRadius = self.frame.size.width/2

        return self
    }
    
}