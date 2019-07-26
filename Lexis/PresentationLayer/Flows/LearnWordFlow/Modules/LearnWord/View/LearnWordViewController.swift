//
//  LearnWordViewController.swift
//  Lexis
//
//  Created by Beslan Tularov on 25/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

import UIKit

class LearnWordViewController: UIViewController, LearnWordViewInput {
    
    var output: LearnWordViewOutput!
    
    @IBOutlet weak var wordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        output.viewDidLoad()
    }
    
    func updateViewWith(_ word: String) {
        wordLabel.text = word
    }
    
    func setTitle(_ text: String) {
        self.title = text
    }
}
