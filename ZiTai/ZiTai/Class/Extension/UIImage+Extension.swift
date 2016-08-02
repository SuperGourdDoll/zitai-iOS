//
//  UIImage+Extension.swift
//  ZiTai
//
//  Created by devil wang on 8/2/16.
//  Copyright © 2016 sgd. All rights reserved.
//

import UIKit

// UIImage的扩展
extension UIImage {
    /// 按尺寸裁剪图片大小
    class func imageClipToNewImage(image: UIImage, newSize: CGSize) -> UIImage {
        UIGraphicsBeginImageContext(newSize)
        image.drawInRect(CGRect(origin: CGPointZero, size: newSize))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage
    }
    
    /// 将传入的图片裁剪成带边缘的原型图片
    class func imageWithClipBorder(image: UIImage, borderWidth: CGFloat, borderColor: UIColor) -> UIImage {
        let imageWH = image.size.width
        //        let border = borderWidth
        let ovalWH = imageWH + 2 * borderWidth
        
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(ovalWH, ovalWH), false, 0)
        let path = UIBezierPath(ovalInRect: CGRectMake(0, 0, ovalWH, ovalWH))
        borderColor.set()
        path.fill()
        
        let clipPath = UIBezierPath(ovalInRect: CGRectMake(borderWidth, borderWidth, imageWH, imageWH))
        clipPath.addClip()
        image.drawAtPoint(CGPointMake(borderWidth, borderWidth))
        
        let clipImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return clipImage
    }
    
    /// 将传入的图片裁剪成圆形图片
    func imageClipOvalImage() -> UIImage {
        UIGraphicsBeginImageContextWithOptions(self.size, false, 0.0)
        let ctx = UIGraphicsGetCurrentContext()
        let rect = CGRectMake(0, 0, self.size.width, self.size.height)
        CGContextAddEllipseInRect(ctx, rect)
        
        CGContextClip(ctx)
        self.drawInRect(rect)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
        var uncompressedPNGData: NSData      { return UIImagePNGRepresentation(self)!        }
        var highestQualityJPEGNSData: NSData { return UIImageJPEGRepresentation(self, 1.0)!  }
        var highQualityJPEGNSData: NSData    { return UIImageJPEGRepresentation(self, 0.75)! }
        var mediumQualityJPEGNSData: NSData  { return UIImageJPEGRepresentation(self, 0.5)!  }
        var lowQualityJPEGNSData: NSData     { return UIImageJPEGRepresentation(self, 0.25)! }
        var lowestQualityJPEGNSData:NSData   { return UIImageJPEGRepresentation(self, 0.0)!  }
    
//    func mediumQualityJPEGNSData() -> NSData
//    {
//        return UIImageJPEGRepresentation(self, 0.5)!
//    }
//    func highQualityJPEGNSData() -> NSData
//    {
//        return UIImageJPEGRepresentation(self, 0.75)!
//    }
    
    
}
