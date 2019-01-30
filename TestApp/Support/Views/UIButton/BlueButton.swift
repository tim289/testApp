//
//  BlueButton.swift
//  TestApp
//
//  Created by Ilya Hamanchuk on 1/30/19.
//  Copyright © 2019 harbros. All rights reserved.
//

import UIKit

class BlueButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setLayout()
    }
    
    private func setLayout() {
        setTitleColor(.windowsBlue, for: .normal)
        
        if let titleLabel = titleLabel {
            titleLabel.font = .appSpecific(weight: .regular, size: 15.0)
        }
    }

}
