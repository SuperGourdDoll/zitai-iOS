//
//  LeftHeaderView.swift
//  ZiTai
//
//  Created by devil wang on 8/2/16.
//  Copyright © 2016 sgd. All rights reserved.
//

import UIKit

class LeftHeaderView: UIView {
    
    //背景图片
    lazy var bgImgView: UIImageView = {
        let bgImgView = UIImageView(frame: self.frame)
        bgImgView.contentMode = .ScaleToFill
        return  bgImgView
    }()
    //user photo
    lazy var userPhotoImgView: UIImageView = {
        let userPhotoImgView = UIImageView()
        userPhotoImgView.contentMode = .ScaleToFill
        return userPhotoImgView
    }()
    
    
    //userEmail
    lazy var emailLabel: UILabel = {
        let emailLabel = UILabel()
        emailLabel.textColor = UIColor.whiteColor()
        emailLabel.textAlignment = .Left
        emailLabel.font = Theme.emailFont
        emailLabel.translatesAutoresizingMaskIntoConstraints = true
        return emailLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(bgImgView)
        addSubview(userPhotoImgView)
        addSubview(emailLabel)
        bringSubviewToFront(userPhotoImgView)
        bringSubviewToFront(emailLabel)
        
        setupConstraints(frame.width, h: frame.height)
        
        initialFrame = CGRectMake(0, 0, appW, appH/3)
        initialHeight = initialFrame.size.height

    }
    
    func setupConstraints(w:CGFloat,h:CGFloat) {
        
        userPhotoImgView.snp_makeConstraints { (make) in
            make.top.equalTo(self).offset(20)
            make.leading.equalTo(self).offset(20)
            make.width.equalTo(90)
            make.height.equalTo(90)
//            userPhotoImgView.buildCircleBorderImgView(1, borderColor: UIColor.whiteColor().CGColor)
        }
        
        emailLabel.snp_makeConstraints { (make) in
            make.leading.equalTo(self).offset(20)
            make.bottomMargin.equalTo(self).offset(-20)
        }
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var initialFrame:CGRect!
    var initialHeight:CGFloat!
    
    override func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool {
        
        return true
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView!){
        
        if scrollView.contentOffset.y < 0 {
            let OffsetY:CGFloat = scrollView.contentOffset.y + scrollView.contentInset.top
            initialFrame.origin.y = OffsetY;
            initialFrame.size.height = initialHeight + (OffsetY * -1)
            
            
            bgImgView.frame = initialFrame
        }
        
    }

}

