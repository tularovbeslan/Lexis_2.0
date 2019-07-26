//
//  LearnWordPresenter.swift
//  Lexis
//
//  Created by Beslan Tularov on 25/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

class LearnWordPresenter: LearnWordViewOutput, LearnWordModuleInput, LearnWordModuleOutput {
    
    var view: LearnWordViewInput!
    var words: String!
    var title: String!
    
    required init(view: LearnWordViewInput) {
        self.view = view
    }
    
    func viewDidLoad() {
        view.updateViewWith(words)
        view.setTitle(title)
    }
    
    func configureViewWith(_ title: String, words: String) {
        self.words = words
        self.title = title
    }
}
