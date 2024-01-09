//
//  SecondTabCoordinator.swift
//  DemoCoordinatorProject
//
//  Created by Oleksandr Seminov on 1/8/24.
//

import UIKit

class SecondTabCoordinator: Coordinator {
    var rootViewController = UINavigationController()
    
    init() {
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
    }
    
    lazy var secondViewController: SecondViewController = {
        let vc = SecondViewController()
        vc.title = "Second"
        return vc
    }()
    
    func start() {
        rootViewController.setViewControllers([secondViewController], animated: false)
    }
    
}
