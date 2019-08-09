//
//  QuoteService.swift
//  ClassQuote
//
//  Created by Lauriane Haydari on 09/08/2019.
//  Copyright © 2019 Lauriane Haydari. All rights reserved.
//

import Foundation

class QuoteService {

    private static let quoteUrl = URL(string:"http://api.forismatic.com/api/1.0/")!

    static func getQuote() {
        var request = URLRequest(url: quoteUrl)
        request.httpMethod = "POST"

        let body = "method=getQuote&format=json&lang=en"
        request.httpBody = body.data(using: .utf8)

        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: request) {(data, response, error) in
            if let data = data, error != nil {
                if let response = response as? HTTPURLResponse, response.statusCode == 200 {
                    if let responseJSON = try? JSONDecoder().decode([String: String.self], from: data),
                        let text = responseJSON.quo

                    }


            }

        }
        task.resume()
    }
}
