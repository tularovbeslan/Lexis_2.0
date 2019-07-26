//
//  OnboardingAssembly.swift
//  Lexis
//
//  Created by Beslan Tularov on 25/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

class OnboardingAssembly {
    
    var moduleInput: OnboardingModuleInput!
    var moduleOutput: OnboardingModuleOutput!
    
    init() {
        
        let identifier = String(describing: OnboardingViewController.self)
        let view = OnboardingViewController(nibName: identifier, bundle: nil)
        let presenter = OnboardingPresenter(view: view)
        view.output = presenter
        moduleOutput = presenter
        moduleInput = presenter
    }
}
