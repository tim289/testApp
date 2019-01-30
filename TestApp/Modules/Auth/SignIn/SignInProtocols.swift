//
//  SignInProtocols.swift
//  FC
//
//  Created by Tsimafei Harhun on 1/29/19.
//  Copyright © 2019 harbros. All rights reserved.
//


// MARK: - SignInInteractorOutput

protocol SignInInteractorOutput: class {
    func didLoadWheather(_ wheather: Wheather)
    func loadError(_ message: String)
}

// MARK: - SignInInteractorInput

protocol SignInInteractorInput: class {
    func loadWheather()
}

// MARK: - SignInPresenterInput

protocol SignInPresenterInput: class {
    func viewLoaded()
    func forgetPasswordTap()
    func signInTap(email: String, password: String)
    func createAccountTap()
}

// MARK: - SignInViewControllerInput

protocol SignInViewControllerInput: class {
    func clearPassword()
    func shakeEmail()
    func shakePassword()
}

// MARK: - SignInRouterInput

protocol SignInRouterInput: class {
    func showInfoAlert(title: String, message: String, completion: (() -> Void)?)
}
