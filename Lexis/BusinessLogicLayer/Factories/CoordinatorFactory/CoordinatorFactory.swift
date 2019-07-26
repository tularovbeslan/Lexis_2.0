//
//  CoordinatorFactory.swift
//  Lexis
//
//  Created by Beslan Tularov on 25/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

protocol CoordinatorFactory {
    func produceLearnWordCoordinator(router: Router, flowFactory: LearnWordFlowFactory) -> Coordinator & LearnWordCoordinatorOutput
    func produceOnboardingCoordinator(router: Router, flowFactory: OnboardingFlowFactory) -> Coordinator & OnboardingCoordinatorOutput

}
