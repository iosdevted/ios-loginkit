//
//  onboardingController.swift
//  ios-startkit
//
//  Created by Ted Hyeong on 01/10/2020.
//

import Foundation
import paper_onboarding

class OnboardingController: UIViewController {
    
    // MARK: - Properties
    
    private var onboardingItems = [OnboardingItemInfo]()
    private var onboardingView = PaperOnboarding()
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        view.addSubview(onboardingView)
        onboardingView.fillSuperview()
    }
    
    func configureOnboardingDataSource() {
        
    }
}

extension OnboardingController: PaperOnboardingDataSource {
    func onboardingItemsCount() -> Int {
        return onboardingItems.count
    }
    
    func onboardingItem(at index: Int) -> OnboardingItemInfo {
        return onboardingItems[index]
    }
    
    
}
