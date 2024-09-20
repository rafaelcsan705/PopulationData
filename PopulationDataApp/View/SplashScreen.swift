//
//  SplashScreen.swift
//  PopulationDataApp
//
//  Created by Rafael Santos on 21/09/2024.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive: Bool = false
    @ObservedObject var viewModel = PopulationViewModel()

    var body: some View {
        if isActive {
            PopulationListView()
                .environmentObject(viewModel)
        } else {
            VStack {
                Spacer()
                Text("Population Data App")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                
                Spacer()
                Text("by: Rafael Santos")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding(.bottom)
            }
            .onAppear {
                loadData()
            }
        }
    }

    private func loadData() {
        viewModel.loadPopulationData()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            isActive = true
        }
    }
}
