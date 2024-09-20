//
//  API.swift
//  PopulationDataApp
//
//  Created by Rafael Santos on 21/09/2024.
//

import Foundation

// Provides API endpoints for fetching population data
struct API {
    static let baseURL = "https://datausa.io/api/data"
    
    // Returns the URL to fetch population data
    static func populationURL() -> String {
        return "\(baseURL)?drilldowns=State&measures=Population"
    }
    
    // Returns a URL that will result in an error
    static func failedPopulationURL() -> String {
        return "https://invalid-url-that-does-not-exist"
    }
}
