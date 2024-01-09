//
//  MainCoordinator.swift
//  DemoCoordinatorProject
//
//  Created by Oleksandr Seminov on 1/8/24.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var rootViewController = UITabBarController()
    
    var childCoordinatr = [Coordinator]()
    
    init() {
        self.rootViewController = UITabBarController()
        rootViewController.tabBar.isTranslucent = true
        rootViewController.tabBar.backgroundColor = .lightGray
    }
    
    func start() {
        let firstCoordinator = FirstTabCoordinator()
        firstCoordinator.start()
        self.childCoordinatr.append(firstCoordinator)
        let firstViewController = firstCoordinator.rootViewController
        setup(vc: firstViewController,
              title: "First",
              imageName: "paperplane",
              selectedImageName: "paperplane.fill")
        
        let secondCoordinator = SecondTabCoordinator()
        secondCoordinator.start()
        self.childCoordinatr.append(secondCoordinator)
        let secondViewController = secondCoordinator.rootViewController
        setup(vc: secondViewController,
              title: "Second",
              imageName: "bell",
              selectedImageName: "bell.fill")
        
        self.rootViewController.viewControllers = [firstViewController,
                                                   secondViewController]
    }
    
    func setup(vc: UIViewController, title: String, imageName: String, selectedImageName: String) {
        let defaultImage = UIImage(systemName: imageName)
        let selectedImage = UIImage(systemName: selectedImageName)
        let tabBarItem = UITabBarItem(title: title, image: defaultImage, selectedImage: selectedImage)
        
        vc.tabBarItem = tabBarItem
        
    }
    
}
