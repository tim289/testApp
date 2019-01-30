//
//  SignInPresenter.swift
//  FC
//
//  Created by Tsimafei Harhun on 1/29/19.
//  Copyright © 2019 harbros. All rights reserved.
//

import UIKit

final class SignInPresenter {
    
    weak var view: SignInViewControllerInput!
    var interactor: SignInInteractorInput!
    var router: SignInRouterInput!
    
}

// MARK: - SignInPresenterInput

extension SignInPresenter: SignInPresenterInput {
    func viewLoaded() {
        
    }
    
    func forgetPasswordTap() {
        router.showInfoAlert(title: L.strings.infoAlert,
                             message: L.strings.tapButton + " " + L.strings.forgetPassword,
                             completion: { [weak self] in
            self?.view.clearPassword()
        })
    }
    
    func signInTap(email: String, password: String) {
        
        // Validation
        guard email.isEmail else {
            view.shakeEmail()
            let message = email.isEmpty ? L.strings.emailIsEmpty : L.strings.wrongEmail
            router.showInfoAlert(title: L.strings.error, message: message, completion: nil)
            return
        }

        guard password.isPassword else {
            view.shakePassword()
            let message = password.isEmpty ? L.strings.passwordIsEmpty : L.strings.wrongPassword
            router.showInfoAlert(title: L.strings.error, message: message, completion: { [weak self] in self?.view.clearPassword() })
            return
        }
        
        // Sign in if success
        interactor.loadWheather()
    }
    
    func createAccountTap() {
        router.showInfoAlert(title: L.strings.infoAlert, message:  L.strings.tapButton + " " + L.strings.doNotHaveAccount, completion: nil)
    }
    
}

// MARK: - SignInPresenterInput

extension SignInPresenter: SignInInteractorOutput {
    func didLoadWheather(_ wheather: Wheather) {
        let message = L.strings.countryWheather + ": " + wheather.country + "\n" +
                      L.strings.humidity + ": " + "\(wheather.data.humidity)" + "\n" +
                      L.strings.pressure + ": " + "\(wheather.data.pressure)" + "\n" +
                      L.strings.temp + ": " + "\(wheather.data.temp)" + "\n"
        
        router.showInfoAlert(title: L.strings.wheather, message: message, completion: nil)
    }
    
    func loadError(_ message: String) {
        router.showInfoAlert(title: L.strings.error, message:  message, completion: nil)
    }
}
