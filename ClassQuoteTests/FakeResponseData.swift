//
//  FakeResponseData.swift
//  ClassQuoteTests
//
//  Created by Lauriane Haydari on 12/08/2019.
//  Copyright © 2019 Lauriane Haydari. All rights reserved.
//

import Foundation

class FakeResponseData {
    // code 200 == OK / code 500 == KO
    let responseOK = HTTPURLResponse(url: URL(string: "https://openclassrooms.com")!,
                                     statusCode: 200, httpVersion: nil, headerFields: nil)

    let responseKO = HTTPURLResponse(url: URL(string: "https://openclassrooms.com")!,
                                     statusCode: 500, httpVersion: nil, headerFields: nil)

    class QuoteError: Error {}
    let error = QuoteError()

    var quoteCorrectData: Data {
        let bundle = Bundle(for: FakeResponseData.self)
        let url = bundle.url(forResource: "Quote", withExtension: "json")
        let data = try! Data(contentsOf: url!)
        return data
    }

    let quoteIncorrectData = "error".data(using: .utf8)

    let imageData = "image".data(using: .utf8)

}
