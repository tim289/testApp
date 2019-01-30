//
//  SignInInteractor.swift
//  FC
//
//  Created by Tsimafei Harhun on 1/29/19.
//  Copyright © 2019 harbros. All rights reserved.
//

import Foundation

final class SignInInteractor {
    weak var presenter: SignInInteractorOutput!
}

// MARK: - SignInInteractorInput

extension SignInInteractor: SignInInteractorInput {

    func loadWheather() {
        WeatherRequestManager().get(success: { [weak self] (wheather) in
            self?.presenter.didLoadWheather(wheather)
        }) { [weak self] (error) in
            self?.presenter.loadError(error.localizedDescription)
        }
    }
    
}
