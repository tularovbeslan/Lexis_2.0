//
//  WordSetsViewInput.swift
//  Lexis
//
//  Created by Beslan Tularov on 23/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

protocol WordSetsViewInput: Presentable {
    func updateViewWith(_ dataSet: [WordSet])
    func setTitle(_ text: String)
}
