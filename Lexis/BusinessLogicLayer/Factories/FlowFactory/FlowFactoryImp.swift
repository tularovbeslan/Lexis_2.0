//
//  FlowFactoryImp.swift
//  Lexis
//
//  Created by Beslan Tularov on 23/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

class FlowFactoryImp: LearnWordFlowFactory, OnboardingFlowFactory {
    
    func produceWordSetsModule() -> (output: WordSetsModuleOutput, input: WordSetsModuleInput) {
        
        let wordService = WordServiceImp()
        let assembly = WordSetsAssembly(wordService: wordService)
        return (assembly.moduleOutput, assembly.moduleInput)
    }
    
    func produceWordsListModule() -> (output: WordsListModuleOutput, input: WordsListModuleInput) {
        
        let assembly = WordsListAssembly()
        return (assembly.moduleOutput, assembly.moduleInput)
    }
    
    func produceLearnWordModule() -> (output: LearnWordModuleOutput, input: LearnWordModuleInput) {
        
        let assembly = LearnWordAssembly()
        return (assembly.moduleOutput, assembly.moduleInput)
    }
    
    func produceOnboardingModule() -> (output: OnboardingModuleOutput, input: OnboardingModuleInput) {
        
        let assembly = OnboardingAssembly()
        return (assembly.moduleOutput, assembly.moduleInput)
    }
}

