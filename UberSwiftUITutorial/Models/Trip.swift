//
//  Trip.swift
//  UberSwiftUITutorial
//
//  Created by Jose Garcia on 4/18/23.
//

import Firebase

struct Trip: Identifiable, Codable {
    let id: String
    let passengerUid: String
    let driverUid: String
    let passengerName: String
    let driverName: String
    let passengerLocation: GeoPoint
    let driverLocation: GeoPoint
    let pickUpLocationName: String
    let dropOffLocationName: String
    let pickUpLocationAddress: String
    let pickUpLocation: GeoPoint
    let dropOffLocation: GeoPoint
    let tripCost: Double
}
