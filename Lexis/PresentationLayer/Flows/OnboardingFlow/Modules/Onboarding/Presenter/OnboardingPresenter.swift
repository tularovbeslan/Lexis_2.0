//
//  OnboardingPresenter.swift
//  Lexis
//
//  Created by Beslan Tularov on 25/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

class OnboardingPresenter: OnboardingViewOutput, OnboardingModuleInput, OnboardingModuleOutput {
    
    var view: OnboardingViewInput!
    var onNext: ((String) -> Void)?
    
    required init(view: OnboardingViewInput) {
        self.view = view
    }
    
    func nextWith(_ name: String) {
        self.onNext?(name)
    }
}
