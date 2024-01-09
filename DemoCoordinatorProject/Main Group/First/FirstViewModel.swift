//
//  FirstViewModel.swift
//  DemoCoordinatorProject
//
//  Created by Oleksandr Seminov on 1/9/24.
//

import Foundation

class FirstViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var email: String = ""
}
