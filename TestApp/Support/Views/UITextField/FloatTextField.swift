//
//  FloatTextField.swift
//  TestApp
//
//  Created by Ilya Hamanchuk on 1/30/19.
//  Copyright © 2019 harbros. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class FloatTextField: SkyFloatingLabelTextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        setLayout()
    }
    
    private func setLayout() {
        textColor = .black
        lineColor = .border
        selectedTitleColor = .warmGray
        selectedLineColor = .border
        
        lineHeight = 1.0 
        selectedLineHeight = 1.0
        
        font = .appSpecific(weight: .regular, size: 15.0)
        placeholderFont = .appSpecific(weight: .regular, size: 13.0)
        
        titleFormatter = { $0 }
    }
    
}
