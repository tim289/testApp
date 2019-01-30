//
//  WhetherRequestManager.swift
//  TestApp
//
//  Created by Tsimafei Harhun on 1/30/19.
//  Copyright © 2019 harbros. All rights reserved.
//

import UIKit
import Alamofire

class WeatherRequestManager {
   
    // For example
    private let url = "https://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b6907d289e10d714a6e88b30761fae22"
    
    func get(success: @escaping ((Wheather) -> Void), error: @escaping ((Error) -> Void)) {
        request(url).responseJSON { responseJSON in
            switch responseJSON.result {
            case .success(_):
                if let data = responseJSON.data, let response = try? JSONDecoder().decode(Wheather.self, from: data) {
                    success(response)
                } else {
                    error(URLError(.badServerResponse))
                }
            case .failure(let err):
                error(err)
            }
        }
    }
    
}
