//
//  QuoteDTO.swift
//  QuotesIOS
//
//  Created by Sergio on 6/6/17.
//  Copyright © 2017 Sergio. All rights reserved.
//

import Foundation
import ObjectMapper

class QuoteDTO: Mappable {

    var id: String?
    var author: String?
    var text: String?
    var image: URL?
    var likes: [String]?
    var timestamp: CLong?

    required init?(map: Map) {

    }

    func mapping(map: Map) {
        id <- map["id"]
        author <- map["author"]
        text <- map["quote"]
        image <- map["image"]
        likes <- map["likes"]
        timestamp <- map["timestamp"]
    }

}
