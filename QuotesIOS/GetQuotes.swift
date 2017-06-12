//
//  GetQuotes.swift
//  QuotesIOS
//
//  Created by Sergio on 11/6/17.
//  Copyright © 2017 Sergio. All rights reserved.
//

import Foundation

class GetQuotes {

    fileprivate let repository: QuoteRepository

    init(repository: QuoteRepository) {
        self.repository = repository
    }

    func execute(_ completion: @escaping ([Quote]) -> Void) {
        repository.getAll { quotes in
            completion(quotes)
        }
    }

}
