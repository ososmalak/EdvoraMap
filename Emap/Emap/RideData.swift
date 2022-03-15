//
//  RideData.swift
//  Emap
//
//  Created by Osama Farag on 13/03/2022.
//

import Foundation
import SwiftUI
struct Rides : Decodable , Identifiable {
    let id : Int
    let origin_station_code : Int
    let station_path : [Int]
    let destination_station_code : Int
    let date : String
    let map_url : String
    let state : String
    let city : String
    
}
struct User : Decodable {
    let station_code : Int
}
struct Result : Identifiable{
    let station_code : Int
    let id : Int
    let origin_station_code : Int
    let station_path : [Int]
    let destination_station_code : Int
    let date : String
    let map_url : String
    let state : String
    let city : String
    let nearst : Int
}

