//
//  LearnWordCoordinator.swift
//  Lexis
//
//  Created by Beslan Tularov on 23/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//
import Foundation

class LearnWordCoordinator: BaseCoordinator, LearnWordCoordinatorOutput {
    
    // MARK: - AuthorizationCoordinatorOutput
    
    var finishFlow: (() -> Void)?
    
    private let factory: LearnWordFlowFactory
    private let router: Router
    
    var wordSet: WordSet!
    var wordIndex: Int!
    
    init(router: Router, factory: LearnWordFlowFactory) {
        
        self.factory = factory
        self.router = router
    }
    
    // MARK: - BaseCoordinator
    
    override func start(_ name: String?) {
        showWordSetsModule(name)
    }
    
    // MARK: - Flow configuration
    
    private func showWordSetsModule(_ name: String?) {
        
        var (output, input) = factory.produceWordSetsModule()
        
        output.wordSet = { wordSet in
            self.wordSet = wordSet
            self.showWordsListModule()
        }
        
        guard let title = name else { return }
        input.configureViewWith(title)
        
        router.setRootModule(output.view, hideBar: false)
    }
    
    private func showWordsListModule() {
        
        var (output, input) = factory.produceWordsListModule()
        
        output.wordIndex = { index in
            self.wordIndex = index
            self.showLearnWordModule()
        }
        
        input.configureViewWith(wordSet.name, words: wordSet.words)
        router.push(output.view)
    }
    
    private func showLearnWordModule() {
        
        var (output, input) = factory.produceLearnWordModule()
        
        input.configureViewWith(wordSet.name, words: wordSet.words[wordIndex].word)
        router.push(output.view)
    }
}
