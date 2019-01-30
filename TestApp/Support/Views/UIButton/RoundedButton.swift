//
//  RoundedButton.swift
//  TestApp
//
//  Created by Ilya Hamanchuk on 1/29/19.
//  Copyright © 2019 harbros. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {
   
    override func awakeFromNib() {
        super.awakeFromNib()
    
        setLayout()
        sizeToFit()
    }
    
    private func setLayout() {
        clipsToBounds = true
        setTitleColor(.whiteApp, for: .normal)
        
        if let titleLabel = titleLabel {
            titleLabel.font = .appSpecific(weight: .medium, size: 15.0)
        }
        
        backgroundColor = .tangerine

    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = frame.height / 2
    }
    
}
