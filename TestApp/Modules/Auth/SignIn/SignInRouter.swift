//
//  SignInRouter.swift
//  FC
//
//  Created by Tsimafei Harhun on 1/29/19.
//  Copyright © 2019 harbros. All rights reserved.
//

final class SignInRouter {
    
    weak var view: SignInViewController!

}

// MARK: - SignInRouterInput

extension SignInRouter: SignInRouterInput {
    func showInfoAlert(title: String, message: String, completion: (() -> Void)?) {
        view.alert(title, message: message, completion: { completion?() })
    }
}
