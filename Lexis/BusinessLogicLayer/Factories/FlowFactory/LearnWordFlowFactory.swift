//
//  LearnWordFlowFactory.swift
//  Lexis
//
//  Created by Beslan Tularov on 23/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

protocol LearnWordFlowFactory {
    
    func produceWordSetsModule() -> (output: WordSetsModuleOutput, input: WordSetsModuleInput)
    func produceWordsListModule() -> (output: WordsListModuleOutput, input: WordsListModuleInput)
    func produceLearnWordModule() -> (output: LearnWordModuleOutput, input: LearnWordModuleInput)
}
