//
//  WordsListPresenter.swift
//  Lexis
//
//  Created by Beslan Tularov on 25/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

class WordsListPresenter: WordsListViewOutput, WordsListModuleInput, WordsListModuleOutput {
  
    var view: WordsListViewInput!
    var words: [Word] = []
    var title: String!
    var wordIndex: ((Int) -> Void)?
    
    required init(view: WordsListViewInput) {
        self.view = view
    }
    
    func viewDidLoad() {
        view.updateViewWith(words)
        view.setTitle(title)
    }
    
    func configureViewWith(_ title: String, words: [Word]) {
        self.words = words
        self.title = title
    }
    
    func didSelectWordAt(_ index: Int) {
        self.wordIndex?(index)
    }
}
