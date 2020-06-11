//
//  ViewController.swift
//  fishbowl_beta
//
//  Created by Alec Shunnarah on 6/10/20.
//  Copyright © 2020 Alec Shunnarah. All rights reserved.
//

import UIKit

class WordShowViewController: UIViewController {
    
    // Create List

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: Setup UI
    private func generateUI() {
        
        // Label
        let label = UILabel()
        label.font = 36
        label.text = "Click \"Next Word\" to start!"
        
        // Next Button
        
        
        // Stack View
        let stackView = UIStackView()
        stackView.addArrangedSubview(view: self)
        
        
    }
    
    


}

