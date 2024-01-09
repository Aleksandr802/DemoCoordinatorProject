//
//  ApplicationCoordinator.swift
//  DemoCoordinatorProject
//
//  Created by Oleksandr Seminov on 1/8/24.
//

import Foundation
import UIKit
import SwiftUI

class ApplicationCoordinator: Coordinator {
    
    let window: UIWindow
    
    var childCoordinators = [Coordinator]()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
//        let onboardingCoordinator = OnboardingCoordinator()
//        onboardingCoordinator.start()
//        self.childCoordinators = [onboardingCoordinator]
//        window.rootViewController = onboardingCoordinator.rootViewController
        
        let mainCoordinator = MainCoordinator()
        mainCoordinator.start()
        self.childCoordinators = [mainCoordinator]
        window.rootViewController = mainCoordinator.rootViewController
    }
    
    
}
