//
//  PopulationView.swift
//  PopulationDataApp
//
//  Created by Rafael Santos on 21/09/2024.
//

import SwiftUI

struct PopulationListView: View {
    @EnvironmentObject var viewModel: PopulationViewModel

    var body: some View {
        NavigationView {
            List(viewModel.populations) { population in
                VStack(alignment: .leading) {
                    Text(population.state)
                        .font(.headline)
                    Text("Population: \(population.population)")
                }
            }
            .navigationTitle("States Population")
            .overlay {
                if viewModel.populations.isEmpty && viewModel.errorMessage == nil {
                    ProgressView()
                }
            }
        }
    }
}

