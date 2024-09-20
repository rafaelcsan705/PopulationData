//
//  NetworkManager.swift
//  PopulationDataApp
//
//  Created by Rafael Santos on 21/09/2024.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    
    private init() {}
    
    func fetchPopulationData(from urlString: String, completion: @escaping (Result<[Population], Error>) -> Void) {
        guard let url = URL(string: urlString) else {
            completion(.failure(NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: "Invalid URL"])))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let populationResponse = try decoder.decode(PopulationResponse.self, from: data)
                    completion(.success(populationResponse.data))
                } catch {
                    completion(.failure(error))
                }
            }
        }
        task.resume()
    }
}
