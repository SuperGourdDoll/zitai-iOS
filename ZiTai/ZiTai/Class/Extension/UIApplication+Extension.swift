//
//  UIApplication+Extension.swift
//  ZiTai
//
//  Created by devil wang on 8/2/16.
//  Copyright © 2016 sgd. All rights reserved.
//

import Foundation
import UIKit

extension UIApplication {
    
    class func topViewController(viewController: UIViewController? = UIApplication.sharedApplication().keyWindow?.rootViewController) -> UIViewController? {
        if let nav = viewController as? UINavigationController {
            return topViewController(nav.visibleViewController)
        }
        if let tab = viewController as? UITabBarController {
            if let selected = tab.selectedViewController {
                return topViewController(selected)
            }
        }
        if let presented = viewController?.presentedViewController {
            return topViewController(presented)
        }
        
        if let slide = viewController as? SlideMenuController {
            return topViewController(slide.mainViewController)
        }
        return viewController
    }

}