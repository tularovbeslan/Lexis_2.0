//
//  WordSetsAssembly.swift
//  Lexis
//
//  Created by Beslan Tularov on 25/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

import Foundation

class WordSetsAssembly {
    
    var moduleInput: WordSetsModuleInput!
    var moduleOutput: WordSetsModuleOutput!
    
    init(wordService: WordService) {
        
        let identifier = String(describing: WordSetsViewController.self)
        let view = WordSetsViewController(nibName: identifier, bundle: nil)
        let presenter = WordSetsPresenter(view: view)
        view.output = presenter
        presenter.wordService = wordService
        moduleOutput = presenter
        moduleInput = presenter
    }
}
