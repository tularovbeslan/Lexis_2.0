//
//  OnboardingFlowFactory.swift
//  Lexis
//
//  Created by Beslan Tularov on 25/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

protocol OnboardingFlowFactory {
    func produceOnboardingModule() -> (output: OnboardingModuleOutput, input: OnboardingModuleInput)

}
