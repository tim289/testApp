//
//  Whether.swift
//  TestApp
//
//  Created by Tsimafei Harhun on 1/30/19.
//  Copyright © 2019 harbros. All rights reserved.
//

// Whether
struct Wheather: Codable {
    let data: WheatherData
    let country: String
}

extension Wheather {
    private enum CodingKeys : String, CodingKey {
        case country = "name"
        case data = "main"
    }
}

// WhetherData
struct WheatherData: Codable {
    let humidity: Float
    let pressure: Float
    let temp: Float
}

extension WheatherData {
    private enum CodingKeys : String, CodingKey {
        case humidity
        case pressure
        case temp
    }
}
