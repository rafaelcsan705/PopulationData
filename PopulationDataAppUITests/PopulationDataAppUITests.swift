//
//  PopulationDataAppUITests.swift
//  PopulationDataAppUITests
//
//  Created by Rafael Santos on 20/09/2024.
//

import XCTest

final class PopulationDataAppUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        // Limpeza após os testes, se necessário.
    }
    
    @MainActor
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }

}
