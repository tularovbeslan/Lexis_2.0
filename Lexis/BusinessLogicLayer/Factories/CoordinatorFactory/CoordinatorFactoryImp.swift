//
//  CoordinatorFactoryImp.swift
//  Lexis
//
//  Created by Beslan Tularov on 25/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

class CoordinatorFactoryImp: CoordinatorFactory {
    
    func produceLearnWordCoordinator(router: Router, flowFactory: LearnWordFlowFactory) -> Coordinator & LearnWordCoordinatorOutput {
        let coordinator = LearnWordCoordinator(router: router, factory: flowFactory)
        return coordinator
    }
    
    func produceOnboardingCoordinator(router: Router, flowFactory: OnboardingFlowFactory) -> Coordinator & OnboardingCoordinatorOutput {
        let coordinator = OnboardingCoordinator(router: router, factory: flowFactory)
        return coordinator
    }
}
