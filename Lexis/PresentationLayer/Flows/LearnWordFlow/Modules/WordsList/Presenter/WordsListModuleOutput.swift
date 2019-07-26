//
//  WordsListModuleOutput.swift
//  Lexis
//
//  Created by Beslan Tularov on 25/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

protocol WordsListModuleOutput {
    
    var view: WordsListViewInput! { get set }
    var wordIndex: ((Int) -> Void)? { get set }
}
