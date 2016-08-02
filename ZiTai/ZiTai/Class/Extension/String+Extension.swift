//
//  String+Extension.swift
//  ZiTai
//
//  Created by devil wang on 8/2/16.
//  Copyright © 2016 sgd. All rights reserved.
//

import Foundation
import CoreLocation

// String扩展
extension String {
    /// 判断是否是邮箱
    func validateEmail() -> Bool {
        let emailRegex: String = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest: NSPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailTest.evaluateWithObject(self)
    }
    
    /// 判断是否是手机号
    func validateMobile() -> Bool {
        let phoneRegex: String = "^((13[0-9])|(15[^4,\\D])|(18[0,0-9])|(17[0,0-9]))\\d{8}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
        return phoneTest.evaluateWithObject(self)
    }
    
    /// 将字符串转换成经纬度
    func stringToCLLocationCoordinate2D(separator: String) -> CLLocationCoordinate2D? {
        let arr = self.componentsSeparatedByString(separator)
        if arr.count != 2 {
            return nil
        }
        let latitude: Double = NSString(string: arr[1]).doubleValue
        let longitude: Double = NSString(string: arr[0]).doubleValue
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    /// 判断是否身份证号
    func validateIdentituCard() -> Bool
    {
        var flag = false
        if self.characters.count <= 0
        {
            flag = false
        }
        else
        {
            let regex = "^(\\d{14}|\\d{17})(\\d|[xX])$"
            let identityCardPredicate = NSPredicate(format: "SELF MATCHES %@", regex)
            flag = identityCardPredicate.evaluateWithObject(self)
        }
        return flag
    }
    
    
    ///加密身份证号
    func securityIdentityCard() -> String
    {
        
        let result = self.stringByReplacingCharactersInRange(
            self.startIndex.advancedBy(4)...self.endIndex.advancedBy(-5),
            withString: "*****")
        
        return result
    }
    
    
    subscript (i: Int) -> Character {
        return self[self.startIndex.advancedBy(i)]
    }
    
    subscript (i: Int) -> String {
        return String(self[i] as Character)
    }
    
    
}
