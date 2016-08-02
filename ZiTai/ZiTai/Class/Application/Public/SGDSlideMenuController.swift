//
//  SGDSlideMenuController.swift
//  ZiTai
//
//  Created by devil wang on 8/2/16.
//  Copyright © 2016 sgd. All rights reserved.
//

import Foundation
import UIKit

class SGDSlideMenuController: SlideMenuController {
    
    override func isTagetViewController() -> Bool {
        
        if let vc = UIApplication.topViewController() {
            if vc is TheSeeViewController ||
            vc is TheVoiceViewController ||
            vc is TodayViewController ||
                vc is CollectViewController {
                return true
            }
        }
        return false
    }
    
    
    override func track(trackAction: TrackAction) {
        switch trackAction {
        case .LeftTapOpen:
            print("TrackAction: left tap open.")
        case .LeftTapClose:
            print("TrackAction: left tap close.")
        case .LeftFlickOpen:
            print("TrackAction: left flick open.")
        case .LeftFlickClose:
            print("TrackAction: left flick close.")
        default:
            print("right action")
        }
    }
}
