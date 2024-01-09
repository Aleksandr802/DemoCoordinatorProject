//
//  ScaledImageView.swift
//  DemoCoordinatorProject
//
//  Created by Oleksandr Seminov on 1/8/24.
//

import SwiftUI

struct ScaledImageView: View {
    var name: String
    var body: some View {
        Image(name)
        .resizable()
        .scaledToFit()
        .tag(0)
    }
}

//#Preview {
//    ScaledImageView()
//}
