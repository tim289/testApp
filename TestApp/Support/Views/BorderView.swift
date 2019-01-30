//
//  BorderView.swift
//  TestApp
//
//  Created by Tsimafei Harhun on 1/30/19.
//  Copyright © 2019 harbros. All rights reserved.
//

import UIKit

class BorderView: UIView {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setLayout()
    }
    
    private func setLayout() {
        backgroundColor = .border
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize.init(width: UIView.noIntrinsicMetric, height: 1.0)
    }

}
