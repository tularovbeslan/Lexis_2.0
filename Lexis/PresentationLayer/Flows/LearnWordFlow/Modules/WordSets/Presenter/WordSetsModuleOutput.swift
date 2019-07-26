//
//  WordSetsModuleOutput.swift
//  Lexis
//
//  Created by Beslan Tularov on 23/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

protocol WordSetsModuleOutput {
    
    var view: WordSetsViewInput! { get set }
    var wordSet: ((WordSet) -> Void)? { get set }
}
