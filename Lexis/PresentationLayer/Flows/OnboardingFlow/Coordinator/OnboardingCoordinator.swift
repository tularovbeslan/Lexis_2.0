//
//  OnboardingCoordinator.swift
//  Lexis
//
//  Created by Beslan Tularov on 25/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

class OnboardingCoordinator: BaseCoordinator, OnboardingCoordinatorOutput {
    
    // MARK: - OnboardingCoordinatorOutput
    
    var finishFlow: ((String) -> Void)?
    
    private let factory: OnboardingFlowFactory
    private let router: Router
    
    init(router: Router, factory: OnboardingFlowFactory) {
        
        self.factory = factory
        self.router = router
    }
    
    // MARK: - BaseCoordinator
    
    override func start() {
        showWordSetsModule()
    }
    
    // MARK: - Flow configuration
    
    private func showWordSetsModule() {
        
        var (output, _) = factory.produceOnboardingModule()
        
        output.onNext = { name in
            self.finishFlow?(name)
        }
        
        router.setRootModule(output.view, hideBar: true)
    }
}
