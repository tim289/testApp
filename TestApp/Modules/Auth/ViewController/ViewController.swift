//
//  ViewController.swift
//  TestApp
//
//  Created by Ilya Hamanchuk on 1/29/19.
//  Copyright © 2019 harbros. All rights reserved.
//

import UIKit

// I was make this class for the test

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        style()
    }
    
    private func style() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont.appSpecific(weight: .medium, size: 17.0),
                                                                   NSAttributedString.Key.foregroundColor: UIColor.blackApp]
    }
    
    @IBAction private func authAction(_ sender: Any) {
        let authView = SignInAssembly.assemble().view
        navigationController?.pushViewController(authView, animated: true)
    }
    
}
