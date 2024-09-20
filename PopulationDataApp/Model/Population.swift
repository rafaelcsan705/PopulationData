//
//  Population.swift
//  PopulationDataApp
//
//  Created by Rafael Santos on 21/09/2024.
//

import Foundation

// Represents the response from the population API
struct PopulationResponse: Codable {
    let data: [Population]
}

// Represents a population entry for a specific state
struct Population: Codable, Identifiable {
    let id: UUID = UUID()
    let state: String
    let population: Int
    
    enum CodingKeys: String, CodingKey {
        case state = "State"
        case population = "Population"
    }
}
