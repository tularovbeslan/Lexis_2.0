//
//  WordServiceImp.swift
//  Lexis
//
//  Created by Beslan Tularov on 25/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

import Foundation

class WordServiceImp: WordService {
    
    func obtainWordSets() -> [WordSet] {
        
        let simpleWords: [Word] = [Word(id: 1, word: "Hello", description: "hello [həˈləʊ] сущ"),
                                   Word(id: 2, word: "World", description: "world [wɜːld] сущ")]
        let middleWords: [Word] = [Word(id: 3, word: "Amiably", description: "amiable [ˈeɪmɪəb(ə)l] прил  "),
                                   Word(id: 4, word: "Ground", description: "ground [graʊnd] сущ")]
        let difficultWords: [Word] = [Word(id: 5, word: "Friendliness", description: "friendliness [ˈfrendlɪnɪs] сущ  "),
                                      Word(id: 6, word: "Agrarian", description: "agrarian [əˈgre(ə)rɪən] прил")]

        return [WordSet(id: 1, name: "Простые слова", words: simpleWords),
                WordSet(id: 2, name: "Средние слова", words: middleWords),
                WordSet(id: 3, name: "Сложные слова", words: difficultWords)]
    }
}
