//
//  CoinData.swift
//  ByteCoin
//
//  Created by user183145 on 11/7/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct CoinData: Decodable {
    let asset_id_base: String
    let asset_id_quote: String
    let rate: Double
}
