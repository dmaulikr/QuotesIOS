//
//  QuoteRepository.swift
//  QuotesIOS
//
//  Created by Sergio on 31/5/17.
//  Copyright © 2017 Sergio. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

class QuoteRepository {

    fileprivate let endPoint = "https://raw.githubusercontent.com/srgtrujillo/QuotesIOS/master/api/quotes.json"

    fileprivate func getQuotesFromUrl(_ completion: @escaping ([Quote]) -> ()) {
        Alamofire.request(endPoint).responseArray { (response: DataResponse<[QuoteDTO]>) in
            debugPrint(response)
            if let quotesDTO = response.result.value {
                let quotes = quotesDTO.map { quoteDTO in
                    return Quote(
                        id: quoteDTO.id!,
                        author: quoteDTO.author!,
                        text: quoteDTO.text!,
                        image: quoteDTO.image,
                        likes: quoteDTO.likes!,
                        timestamp: quoteDTO.timestamp!)
                }
                completion(quotes)
            }
        }
    }

    func getAll(_ completion: @escaping ([Quote]) -> ()) {
        getQuotesFromUrl { (response: [Quote]) in
            completion(response)
        }
    }

}
