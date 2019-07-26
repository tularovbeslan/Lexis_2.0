//
//  AppCoordinator.swift
//  Lexis
//
//  Created by Beslan Tularov on 25/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

final class ApplicationCoordinator: BaseCoordinator {
    
    private let flowFactory: FlowFactoryImp
    private let coordinatorFactory: CoordinatorFactory
    private let router: Router
    
    init(router: Router,
         coordinatorFactory: CoordinatorFactory,
         flowFactory: FlowFactoryImp) {
        
        self.router = router
        self.coordinatorFactory = coordinatorFactory
        self.flowFactory = flowFactory
    }
    
    override func start() {
        runOnboardingFlow()
    }
    
    private func runOnboardingFlow() {
        
        let coordinator = coordinatorFactory.produceOnboardingCoordinator(router: router, flowFactory: flowFactory)
        
        coordinator.finishFlow = { name in
            
            self.runLearnWordFlowWith(name)
            self.removeDependency(coordinator)
        }
        
        addDependency(coordinator)
        coordinator.start()
    }
    
    private func runLearnWordFlowWith(_ name: String) {

        let coordinator = coordinatorFactory.produceLearnWordCoordinator(router: router, flowFactory: flowFactory)

        coordinator.finishFlow = { [weak self, weak coordinator] in
            self?.removeDependency(coordinator)
        }

        addDependency(coordinator)
        coordinator.start(name)
    }
}
