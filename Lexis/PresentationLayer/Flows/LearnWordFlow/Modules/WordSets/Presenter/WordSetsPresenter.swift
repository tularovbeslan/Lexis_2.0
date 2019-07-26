//
//  WordSetsPresenter.swift
//  Lexis
//
//  Created by Beslan Tularov on 23/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

class WordSetsPresenter: WordSetsViewOutput, WordSetsModuleInput, WordSetsModuleOutput {
    
    var view: WordSetsViewInput!
    var wordService: WordService!
    var wordSet: ((WordSet) -> Void)?
    var title: String!
    
    required init(view: WordSetsViewInput) {
        self.view = view
    }
    
    func configureViewWith(_ title: String) {
        self.title = title
    }
    
    func viewDidLoad() {
        
        let dataSet = wordService.obtainWordSets()
        view.updateViewWith(dataSet)
        view.setTitle("Привет \(title!)")
    }
    
    func didSelect(wordSet: WordSet) {
        self.wordSet?(wordSet)
    }
}
