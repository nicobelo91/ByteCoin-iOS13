//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "FA235CE9-E289-4197-9922-731A5391EB7A"
    
    let currencyArray = ["ARS","AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]

    func getCoinPrice(for currency: String) {
        let urlString = "\(baseURL)/\(currency)?apikey=\(apiKey)"
        performRequest(urlString)
        
    }
    
    func performRequest(_ urlString: String) {
        
        //1. Create a url
        if let url = URL(string: urlString) {
            
            //2. Create a urlSession
            let session = URLSession(configuration: .default)
            //3. Give the session a task
            let task = session.dataTask(with: url) { (data,response,error) in
                if error != nil {
                    print(error!)
                    return
                }
                if let safeData = data {
                    let dataString = String(data: safeData, encoding: .utf8)
                    print(dataString!)
                }
            }
            //4. Start the task
            task.resume()
        }
    }
}
