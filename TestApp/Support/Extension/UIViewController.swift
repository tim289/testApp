//
//  UIViewController.swift
//  TestApp
//
//  Created by Tsimafei Harhun on 1/30/19.
//  Copyright © 2019 harbros. All rights reserved.
//

import UIKit

extension UIViewController {
    
    /*!
     * Title with message and 'Done' button
     */
    func alert(_ title: String?, message: String?) {
        alert(title, message: message, cancel: nil, buttons: nil, completion: nil)
    }
    /*!
     * Title with message, 'Done' button and completion block
     */
    func alert(_ title: String?, message: String?, completion: (() -> Void)?) {
        alert(title, message: message, cancel: nil, buttons: nil, completion: { _ in
            if completion != nil {
                completion!()
            }
        })
    }
 
    func alert(_ title: String?, message: String?, cancel: String?, buttons: [String]?, completion: ((UIAlertAction) -> Void)?) {
        let alert: UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        var cancelTitle: String = "OK"
        if cancel != nil {
            cancelTitle = cancel!
        }
        let action: UIAlertAction = UIAlertAction(title: cancelTitle, style: .cancel, handler: { (alertAction) in
            if completion != nil {
                completion!(alertAction)
            }
        })
        alert.addAction(action)
        
        if buttons != nil {
            for buttonTitle in buttons! {
                let action: UIAlertAction = UIAlertAction(title: buttonTitle, style: .default, handler: { (alertAction) in
                    if completion != nil {
                        completion!(alertAction)
                    }
                })
                alert.addAction(action)
            }
        }
        
        present(alert, animated: true, completion: nil)
    }
}
