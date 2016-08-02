//
//  LeftTableViewCell.swift
//  ZiTai
//
//  Created by devil wang on 8/2/16.
//  Copyright © 2016 sgd. All rights reserved.
//

import UIKit

public let LeftTVCIdentifier = "LeftTVCIdentifier"

class LeftTableViewCell: UITableViewCell {
    
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.selectionStyle = .Default
        textLabel?.textColor = UIColor.grayColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func addBlackLine()
    {
        let dotPath = UIBezierPath(ovalInRect: CGRectMake(0,  0, self.width, 0.5))
        
        let layer = CAShapeLayer()
        layer.path = dotPath.CGPath
        layer.strokeColor = UIColor.grayColor().CGColor
        
        self.layer.addSublayer(layer)

    }

}
