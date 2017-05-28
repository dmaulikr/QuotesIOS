//
//  Comment.swift
//  QuotesIOS
//
//  Created by Sergio on 28/5/17.
//  Copyright © 2017 Sergio. All rights reserved.
//

import Foundation

struct Comment {

    let id: String
    let text: String
    let user: User
    let quote: Quote
    let likes: [String]
    let timestamp: CLong

}
