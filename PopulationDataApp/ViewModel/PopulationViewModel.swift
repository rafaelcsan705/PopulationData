//
//  PopulationViewModel.swift
//  PopulationDataApp
//
//  Created by Rafael Santos on 21/09/2024.
//

import Foundation

// ViewModel responsible for managing population data
class PopulationViewModel: ObservableObject {
    @Published var populations: [Population] = []
    @Published var errorMessage: String? = nil
    
    // Loads population data from the API
    func loadPopulationData() {
        NetworkManager.shared.fetchPopulationData(from: API.populationURL()) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let populations):
                    self?.populations = populations
                case .failure(let error):
                    self?.errorMessage = "Error loading data: \(error.localizedDescription)"
                }
            }
        }
    }
}
