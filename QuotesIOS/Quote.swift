//
//  Quote.swift
//  QuotesIOS
//
//  Created by Sergio on 28/5/17.
//  Copyright © 2017 Sergio. All rights reserved.
//

import Foundation

struct Quote: Comparable {

    let id: String
    let author: String
    let text: String
    let image: URL?
    let likes: [String]
    let timestamp: CLong

    static func ==(lhs: Quote, rhs: Quote) -> Bool {
        return lhs.author == rhs.author &&
        lhs.text == rhs.text &&
        lhs.image == rhs.image &&
        lhs.likes == rhs.likes &&
        lhs.timestamp == rhs.timestamp
    }

    public static func <(lhs: Quote, rhs: Quote) -> Bool {
        return lhs.timestamp < rhs.timestamp
    }

}
