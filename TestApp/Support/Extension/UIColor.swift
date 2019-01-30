//
//  UIColor.swift
//  TestApp
//
//  Created by Tsimafei Harhun on 1/29/19.
//  Copyright © 2019 harbros. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(rgbColorCodeRed red: Int, green: Int, blue: Int, alpha: CGFloat) {
        
        let redPart: CGFloat = CGFloat(red) / 255
        let greenPart: CGFloat = CGFloat(green) / 255
        let bluePart: CGFloat = CGFloat(blue) / 255
        
        self.init(red: redPart, green: greenPart, blue: bluePart, alpha: alpha)
        
    }
}

extension UIColor {
    
    // #ff9b00
    class var tangerine: UIColor {
        return UIColor(rgbColorCodeRed: 255, green: 155, blue: 0, alpha: 1)
    }
    
    // #ffffff
    class var whiteApp: UIColor {
        return UIColor(rgbColorCodeRed: 255, green: 255, blue: 255, alpha: 1)
    }

    // #ffffff
    class var blackApp: UIColor {
        return UIColor(rgbColorCodeRed: 51, green: 51, blue: 51, alpha: 1)
    }
    
    // #3785c8
    class var windowsBlue: UIColor {
        return UIColor(rgbColorCodeRed: 55, green: 133, blue: 200, alpha: 1)
    }
    
    // #ebebeb
    class var borderLight: UIColor {
        return UIColor(rgbColorCodeRed: 235, green: 235, blue: 235, alpha: 0.6)
    }
    class var border: UIColor {
        return UIColor(rgbColorCodeRed: 235, green: 235, blue: 235, alpha: 0.9)
    }
    
    // #797979
    class var warmGray: UIColor {
        return UIColor(rgbColorCodeRed: 121, green: 121, blue: 121, alpha: 1)
    }
    
}
