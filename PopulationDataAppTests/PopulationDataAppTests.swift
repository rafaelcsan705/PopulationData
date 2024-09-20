//
//  PopulationDataAppTests.swift
//  PopulationDataAppTests
//
//  Created by Rafael Santos on 20/09/2024.
//

import XCTest
@testable import PopulationDataApp

// Unit tests for the PopulationDataApp
final class PopulationDataAppTests: XCTestCase {
    
    // Tests successful fetching of population data
    func testFetchPopulationDataSuccess() async throws {
        let populations = try await fetchPopulationData(for: API.populationURL())
        XCTAssertNotNil(populations, "Populations should not be nil")
        XCTAssertGreaterThan(populations.count, 0, "Populations array should not be empty")
    }
    
    // Tests failure scenario for fetching population data
    func testFetchPopulationDataFailure() async throws {
        do {
            _ = try await fetchPopulationData(for: API.failedPopulationURL())
            XCTFail("Expected failure but got success")
        } catch {
            XCTAssertNotNil(error)
        }
    }

    private func fetchPopulationData(for endpoint: String) async throws -> [Population] {
        return try await withCheckedThrowingContinuation { continuation in
            NetworkManager.shared.fetchPopulationData(from: endpoint) { result in
                switch result {
                case .success(let populations):
                    continuation.resume(returning: populations)
                case .failure(let error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }
}
