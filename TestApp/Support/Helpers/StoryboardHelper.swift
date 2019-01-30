//
//  StoryboardHelper.swift
//  TestApp
//
//  Created by Ilya Hamanchuk on 1/29/19.
//  Copyright © 2019 harbros. All rights reserved.
//

import UIKit

enum Controllers: String {
    case signIn = "SignInViewController"
    
    // Storyboards names list
    fileprivate enum Storyboards: String {
        case auth = "Auth"
    }
    
    fileprivate func storyboardName() -> String {
        let storyboards: Storyboards
        switch self {
            case .signIn:       storyboards = .auth
        }
        return storyboards.rawValue
    }
}

class StoryboardHelper: NSObject {
    
    // Instantialization of controller
    static func instantiate<T>(controller: Controllers) -> T where T : UIViewController {
        let storyBoard: UIStoryboard = UIStoryboard(name: controller.storyboardName(), bundle: nil)
        return storyBoard.instantiateViewController(withIdentifier: controller.rawValue) as! T
    }
}

