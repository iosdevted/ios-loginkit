//
//  OnboardingViewModel.swift
//  ios-startkit
//
//  Created by Ted Hyeong on 01/10/2020.
//

import Foundation

struct OnboardingViewModel {
    
    private let itemCount: Int
    
    init(itemCount: Int) {
        self.itemCount = itemCount
    }

    func shouldShowGetStartedButton(forindex index: Int) -> Bool {
        return index == itemCount - 1 ? true : false
    }
    
}

