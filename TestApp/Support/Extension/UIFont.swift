//
//  UIFont.swift
//  TestApp
//
//  Created by Tsimafei Harhun on 1/29/19.
//  Copyright © 2019 harbros. All rights reserved.
//

import UIKit

enum FontWeight {
    case regular
    case medium
}


// MARK: - Fonts used within the app
extension UIFont {
    
    static let appFontName = "SFUIText"
    
    static func appSpecific(of name: String = UIFont.appFontName, weight: FontWeight = .regular, size: CGFloat) -> UIFont {
        return UIFont(name: createFullFontName(baseFontName: name, for: weight), size: size)!
    }
}

// MARK: - Convenience methods
extension UIFont {
    
    static func createFullFontName(baseFontName: String, for fontWeight: FontWeight) -> String {
        switch fontWeight {
        case .regular:
            return "\(baseFontName)-Regular"
        case .medium:
            return "\(baseFontName)-Medium"
        }
    }
}
