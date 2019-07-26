//
//  WordsListAssembly.swift
//  Lexis
//
//  Created by Beslan Tularov on 25/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

class WordsListAssembly {
    
    var moduleInput: WordsListModuleInput!
    var moduleOutput: WordsListModuleOutput!
    
    init() {
        
        let identifier = String(describing: WordsListViewController.self)
        let view = WordsListViewController(nibName: identifier, bundle: nil)
        let presenter = WordsListPresenter(view: view)
        view.output = presenter
        moduleOutput = presenter
        moduleInput = presenter
    }
}
