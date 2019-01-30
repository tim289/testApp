//
//  SignInAssembly.swift
//  FC
//
//  Created by Tsimafei Harhun on 1/29/19.
//  Copyright © 2019 harbros. All rights reserved.
//

import UIKit

struct SignInAssembly {
    
    let view: UIViewController
    
    private init(view: UIViewController) {
        self.view = view
    }
    
    static func assemble() -> SignInAssembly {
        
        let view: SignInViewController = StoryboardHelper.instantiate(controller: .signIn)
        let presenter = SignInPresenter()
        let interactor = SignInInteractor()
        let router =  SignInRouter()

        view.presenter = presenter
        router.view = view

        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router

        interactor.presenter = presenter

        let instance = SignInAssembly(view: view)
        
        return instance
    }
}
