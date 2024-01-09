//
//  FirstViewController.swift
//  DemoCoordinatorProject
//
//  Created by Oleksandr Seminov on 1/8/24.
//

import UIKit
import TinyConstraints
import Combine

class FirstViewController: UIViewController {
    
    var viewModel: FirstViewModel!
    
    var showDetailRequested: () -> () = { }
    
    var subscription = Set<AnyCancellable>()
    
    var containerView: UIView = {
        let container = UIView(frame: .zero)
        container.backgroundColor = .clear
        return container
    }()
    
    var infoLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = ""
        label.textAlignment = .center
        return label
    }()
    
    var detailButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.setTitle("Go To Detail", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()
    }
    
    func setup() {
        view.addSubview(containerView)
        containerView.addSubviews([infoLabel, detailButton])
        
        containerView.centerYToSuperview()
        containerView.leadingToSuperview()
        containerView.centerXToSuperview()
        containerView.height(120)
        
        infoLabel.topToSuperview()
        infoLabel.leadingToSuperview()
        infoLabel.centerXToSuperview()
        infoLabel.height(60)
        
        viewModel.$email.combineLatest(viewModel.$name).sink { [weak self] email, name in
            if name.count + email.count > 0 {
                self?.infoLabel.text = "\(name) with email \(email)"
            } else {
                self?.infoLabel.text = ""
            }
        }.store(in: &subscription)
        
        detailButton.bottomToSuperview()
        detailButton.centerXToSuperview()
        detailButton.height(60)
        detailButton.width(200)
        
        detailButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }
    
    @objc func buttonAction() {
        showDetailRequested()
    }
}
