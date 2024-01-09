//
//  FirstViewController.swift
//  DemoCoordinatorProject
//
//  Created by Oleksandr Seminov on 1/8/24.
//

import UIKit
import TinyConstraints

class FirstViewController: UIViewController {
    
    var centerImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.image = UIImage(resource: .gas)
        imageView.contentMode = .scaleToFill
        imageView.backgroundColor = .clear
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        setup()
    }
    
    func setup() {
        view.addSubview(centerImageView)
        centerImageView.centerInSuperview()
        centerImageView.leadingToSuperview()
        centerImageView.height(300)
    }
}
