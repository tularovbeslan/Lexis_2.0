//
//  LearnWordAssembly.swift
//  Lexis
//
//  Created by Beslan Tularov on 25/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

class LearnWordAssembly {
    
    var moduleInput: LearnWordModuleInput!
    var moduleOutput: LearnWordModuleOutput!
    
    init() {
        
        let identifier = String(describing: LearnWordViewController.self)
        let view = LearnWordViewController(nibName: identifier, bundle: nil)
        let presenter = LearnWordPresenter(view: view)
        view.output = presenter
        moduleOutput = presenter
        moduleInput = presenter
    }
}
