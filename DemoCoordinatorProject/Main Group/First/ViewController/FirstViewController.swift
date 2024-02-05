//
//  FirstViewController.swift
//  DemoCoordinatorProject
//
//  Created by Oleksandr Seminov on 1/8/24.
//

import UIKit
import Combine

class FirstViewController: UIViewController {
    
    var viewModel: FirstViewModel!
    
    private var contentView = FirstView()
    
    var showDetailRequested: () -> () = { }
    
    var subscription = Set<AnyCancellable>()
    
    override func loadView() {
        super.loadView()
        view = contentView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()
    }
    
    func setup() {
        viewModel.$email.combineLatest(viewModel.$name).sink { [weak self] email, name in
            if name.count + email.count > 0 {
                self?.contentView.infoLabel.text = "\(name) with email \(email)"
            } else {
                self?.contentView.infoLabel.text = ""
            }
        }.store(in: &subscription)
        
        contentView.detailButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }
    
    @objc func buttonAction() {
        showDetailRequested()
    }
}
