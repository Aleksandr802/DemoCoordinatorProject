//
//  UIView+Extension.swift
//  DemoCoordinatorProject
//
//  Created by Oleksandr Seminov on 1/8/24.
//

import UIKit

extension UIView {
    func addSubviews(_ subviews: [UIView]) {
        subviews.forEach { addSubview($0) }
    }
}
