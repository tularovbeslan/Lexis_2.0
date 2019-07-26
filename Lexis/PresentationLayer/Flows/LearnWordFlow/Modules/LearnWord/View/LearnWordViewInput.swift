//
//  LearnWordViewInput.swift
//  Lexis
//
//  Created by Beslan Tularov on 25/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

protocol LearnWordViewInput: Presentable {
    
    func updateViewWith(_ word: String)
    func setTitle(_ text: String)
}
