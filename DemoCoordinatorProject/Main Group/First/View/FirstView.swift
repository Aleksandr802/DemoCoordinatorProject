//
//  FirstView.swift
//  DemoCoordinatorProject
//
//  Created by Oleksandr Seminov on 2/4/24.
//

import UIKit
import TinyConstraints

class FirstView: UIView {
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
    
    init() {
        super.init(frame: .zero)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension FirstView {
    func setUI() {
        addSubview(containerView)
        containerView.addSubviews([infoLabel, detailButton])
        
        containerView.centerYToSuperview()
        containerView.leadingToSuperview()
        containerView.centerXToSuperview()
        containerView.height(120)
        
        infoLabel.topToSuperview()
        infoLabel.leadingToSuperview()
        infoLabel.centerXToSuperview()
        infoLabel.height(60)
        
        detailButton.bottomToSuperview()
        detailButton.centerXToSuperview()
        detailButton.height(60)
        detailButton.width(200)
    }
}

extension FirstView {
    
}
