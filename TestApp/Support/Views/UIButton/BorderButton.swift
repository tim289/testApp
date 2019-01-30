//
//  BorderButton.swift
//  TestApp
//
//  Created by Ilya Hamanchuk on 1/30/19.
//  Copyright © 2019 harbros. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setLayout()
    }
    
    private func setLayout() {
        setTitleColor(.warmGray, for: .normal)
        
        if let titleLabel = titleLabel {
            titleLabel.font = .appSpecific(weight: .regular, size: 12.0)
        }
        backgroundColor = .clear
        clipsToBounds = true

        layer.borderColor = UIColor.borderLight.cgColor
        layer.borderWidth = 1.0
        layer.cornerRadius = 4
        
        contentEdgeInsets = UIEdgeInsets(top: 6, left: 10, bottom: 6, right: 10)
    }
}

