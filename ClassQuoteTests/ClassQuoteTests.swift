//
//  ClassQuoteTests.swift
//  ClassQuoteTests
//
//  Created by Lauriane Haydari on 09/08/2019.
//  Copyright © 2019 Lauriane Haydari. All rights reserved.
//

import XCTest
@testable import ClassQuote

class ClassQuoteTests: XCTestCase {

    func testGivenACalculatorViewModelWhenDidPressOperatorWithABadIndexThenNothingIsReturned() {

        let expectation = self.expectation(description: "Returned fail")
        expectation.isInverted = true

        waitForExpectations(timeout: 1.0, handler: nil)
    }
}
