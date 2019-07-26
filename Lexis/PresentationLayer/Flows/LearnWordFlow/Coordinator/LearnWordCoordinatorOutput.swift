//
//  LearnWordCoordinatorOutput.swift
//  Lexis
//
//  Created by Beslan Tularov on 23/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

protocol LearnWordCoordinatorOutput: class {
    var finishFlow: (() -> Void)? { get set }
}
