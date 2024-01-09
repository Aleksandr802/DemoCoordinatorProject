//
//  OnboardingCoordinator.swift
//  DemoCoordinatorProject
//
//  Created by Oleksandr Seminov on 1/8/24.
//

import Foundation
import UIKit
import SwiftUI

class OnboardingCoordinator: Coordinator {
    var rootViewController = UIViewController()
    
    func start() {
        let view = OnboardingView {
            
        }
        
        rootViewController = UIHostingController(rootView: view)
    }
    
}
