//
//  Validation.swift
//  TestApp
//
//  Created by Tsimafei Harhun on 1/30/19.
//  Copyright © 2019 harbros. All rights reserved.
//

import Foundation
import UIKit

// MARK: - VALIDATION
typealias Validation = String

extension Validation {
    
    // Checks if String conforms to Email
    var isEmail: Bool {
        let emailRegEx = "(?:[a-z0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[a-z0-9!#$%\\&'*+/=?\\^_`{|}" +
                         "~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\" +
                         "x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-" +
                         "z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5" +
                         "]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-" +
                         "9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21" +
                         "-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluate(with: self)
        
        return result
    }
    
    var isPassword: Bool {
        let passRegEx = "^(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{6}$"
        
        let passTest = NSPredicate(format:"SELF MATCHES %@", passRegEx)
        let result = passTest.evaluate(with: self)

        return result
    }
}
