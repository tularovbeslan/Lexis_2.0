//
//  OnboardingViewController.swift
//  Lexis
//
//  Created by Beslan Tularov on 25/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController, OnboardingViewInput {
    
    var output: OnboardingViewOutput!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func next(_ sender: UIButton) {
        output.nextWith(nameLabel.text!)
    }
}
