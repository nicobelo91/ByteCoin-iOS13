//
//  CoinModel.swift
//  ByteCoin
//
//  Created by user183145 on 11/7/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct CoinModel {
    let baseCoin: String
    let quoteCoin: String
    let coinRate: Double
    
    var coinRateString: String {
        return String(format: "%.2f", coinRate)
    }
}
