//
//  ViewController.swift
//  fishbowl_beta
//
//  Created by Alec Shunnarah on 6/10/20.
//  Copyright © 2020 Alec Shunnarah. All rights reserved.
//

import UIKit

class WordShowViewController: UIViewController {
    
    let HOMEDIR = "/Users/alecshunnarah/Desktop/fishbowl_beta"
    
    // Create List

    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load...")
    
        // instantiate words array
        let file = "/fishbowl_beta/Resources/words.txt"
        let dir = HOMEDIR + file
        let words:[String] = getWords(fileName: dir)
        
        // set up the UI
        generateUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: Setup UI
    private func generateUI() {
        
        // Label
        let label = UILabel()
        label.text = "Click \"Next Word\" to start!"
        label.textAlignment = .center
        
    
        label.font = label.font.withSize(26)
        self.view.addSubview(label)
        
        // Next Button
//        let nextBtn = UIButton()
//        nextBtn.setTitle("Next Word", for: .normal)
//
//        // Stack View
//        let stackView = UIStackView()
//        let UIViewElements:[UIView] = [label, nextBtn]
////        stackView.addArrangedSubview(label)
////        stackView.addArrangedSubview(nextBtn)
//
//        self.view.addSubview(stackView)
        
    }
    
    private func getWords(fileName: String) -> [String] {
        
        var words = [String]()
        
        do {
            
            let fileURL = URL.init(fileURLWithPath: (fileName))
            let savedText = try String(contentsOf: fileURL)
            words = savedText.components(separatedBy: "\n")
        }
        catch {
            print("error getting words")
        }
        
        return words
        
    }
    
    


}

