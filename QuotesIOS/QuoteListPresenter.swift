//
//  QuoteListPresenter.swift
//  QuotesIOS
//
//  Created by Sergio on 12/6/17.
//  Copyright © 2017 Sergio. All rights reserved.
//

import Foundation

class QuoteListPresenter {

    fileprivate weak var ui: QuoteUI?
    fileprivate let getQuotes: GetQuotes

    init(ui: QuoteUI, getQuotes: GetQuotes) {
        self.ui = ui
        self.getQuotes = getQuotes
    }

    func viewDidLoad() {
        ui?.showLoader()
        getQuotes.execute { quotes in
            self.ui?.hideLoader()
            if quotes.isEmpty {
                self.ui?.showEmptyCase()
            } else {
                self.ui?.show(quotes: quotes)
            }
        }
    }

}

protocol QuoteUI: class {

    func showLoader()
    func hideLoader()
    func showEmptyCase()
    func show(quotes: [Quote])

}
