//
//  OnboardingModuleOutput.swift
//  Lexis
//
//  Created by Beslan Tularov on 25/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

protocol OnboardingModuleOutput {
    
    var view: OnboardingViewInput! { get set }
    var onNext: ((String) -> Void)? { get set }
}
