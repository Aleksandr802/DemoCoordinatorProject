//
//  OnboardingView.swift
//  DemoCoordinatorProject
//
//  Created by Oleksandr Seminov on 1/8/24.
//

import SwiftUI

struct OnboardingView: View {
    var doneRequested: () -> ()
    var body: some View {
        TabView {
            ScaledImageView(name: "clip_art")
                .tag(0)
            ScaledImageView(name: "eath")
                .tag(1)
            ScaledImageView(name: "gas")
                .tag(2)
            
            Button("Done") {
                doneRequested()
            }
        }
        .tabViewStyle(.page)
        .background(.black, ignoresSafeAreaEdges: .all)
    }
}

#Preview {
    OnboardingView(doneRequested: { })
}
