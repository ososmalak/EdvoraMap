//
//  SwiftUIView.swift
//  Emap
//
//  Created by Osama Farag on 13/03/2022.
//
import Foundation
import SwiftUI

struct SelectedRide: View {
    var dataPassed : Result?
    var body: some View {
        VStack{
            if let safedData = dataPassed {
                AsyncImage(url: URL(string: safedData.map_url))
            HStack{
                Text("Ride Id")
                Spacer()
                Text("Origin Station")
            }
            HStack{
                Text(String(safedData.id))
                Spacer()
                Text(String(safedData.origin_station_code))
            }
            Divider()
            HStack{
                Text("Date")
                Spacer()
                Text("Dictance")
            }
            HStack{
                Text(safedData.date)
                Spacer()
                Text(String(safedData.nearst))
            }
            Divider()
            HStack{
                Text("State")
                Spacer()
                Text("City")
            }
            HStack{
                Text(safedData.state)
                Spacer()
                Text(safedData.city)
            }
        }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedRide(dataPassed: nil)
    }
}
