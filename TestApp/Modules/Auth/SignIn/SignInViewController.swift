//
//  SignInViewController.swift
//  FC
//
//  Created by Tsimafei Harhun on 1/29/19.
//  Copyright © 2019 harbros. All rights reserved.
//

import UIKit
import Typist

final class SignInViewController: UIViewController {
    
    var presenter: SignInPresenterInput!
    
    @IBOutlet private weak var centerConstraint: NSLayoutConstraint!
    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!

    private let keyboard = Typist.shared

    // Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        style()
        presenter.viewLoaded()

        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
        configureKeyboard()
    }
    
    private func style() {
       title = L.strings.authorization
        
    }
    
    // MARK: - Keyboard

    @objc private func dismissKeyboard() {
        view.endEditing(true)
    }
    
    private func configureKeyboard() {
        keyboard.on(event: .willChangeFrame) { [weak self] (options) in
            self?.centerConstraint.constant = (options.endFrame.height - UIApplication.shared.statusBarFrame.height)/2
            UIView.animate(withDuration: 0.3, animations: { self?.view.layoutIfNeeded() })
        }.on(event: .willHide) { [weak self] (_) in
            self?.centerConstraint.constant = 0
            UIView.animate(withDuration: 0.3, animations: { self?.view.layoutIfNeeded() })
        }.start()
    }
    
    deinit {
        keyboard.stop()
    }
    
    // MARK: - Actions
    
    @IBAction private func forgetPasswordAction(_ sender: Any) {
        presenter.forgetPasswordTap()
    }
    
    @IBAction private func signInAction(_ sender: Any) {
        presenter.signInTap(email: emailTextField.text ?? "", password: passwordTextField.text ?? "")
    }
    
    @IBAction private func createAccountAction(_ sender: Any) {
        presenter.createAccountTap()
    }
}

// MARK: - SignInViewControllerInput

extension SignInViewController: SignInViewControllerInput {
    
    func clearPassword() {
        passwordTextField.text = ""
    }
    
    func shakeEmail() {
        emailTextField.shake()
    }
    
    func shakePassword() {
        passwordTextField.shake()
    }
}



