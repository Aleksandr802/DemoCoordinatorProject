//
//  FirstDetailView.swift
//  DemoCoordinatorProject
//
//  Created by Oleksandr Seminov on 1/8/24.
//

import SwiftUI

struct FirstDetailView: View {
    @ObservedObject var viewModel: FirstViewModel
    
    var body: some View {
        VStack {
            Text("First Detail")
            
            TextField("name", text: $viewModel.name)
                .textFieldStyle(.roundedBorder)
            
            TextField("imail", text: $viewModel.email)
                .textFieldStyle(.roundedBorder)
                
        }
        .padding()
    }
}

#Preview {
    FirstDetailView(viewModel: FirstViewModel())
}
