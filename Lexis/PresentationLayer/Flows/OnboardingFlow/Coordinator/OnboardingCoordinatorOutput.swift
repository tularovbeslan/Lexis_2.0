//
//  OnboardingCoordinatorOutput.swift
//  Lexis
//
//  Created by Beslan Tularov on 26/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

protocol OnboardingCoordinatorOutput: class {
    var finishFlow: ((String) -> Void)? { get set }
}
