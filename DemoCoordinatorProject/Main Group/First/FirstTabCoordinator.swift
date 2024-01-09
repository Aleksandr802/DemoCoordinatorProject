//
//  FirstTabCoordinator.swift
//  DemoCoordinatorProject
//
//  Created by Oleksandr Seminov on 1/8/24.
//

import UIKit

class FirstTabCoordinator: Coordinator {
    var rootViewController: UINavigationController
    
    init() {
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
    }
    
    lazy var firstViewController: FirstViewController = {
        let vc = FirstViewController()
        vc.title = "First"
        return vc
    }()
    
    func start() {
        rootViewController.setViewControllers([firstViewController], animated: false)
    }
    
}
