//
//  Trip.swift
//  UberSwiftUITutorial
//
//  Created by Jose Garcia on 4/18/23.
//

import FirebaseFirestoreSwift
import Firebase

enum TripState: Int, Codable {
    case requested
    case rejected
    case accepted
}

struct Trip: Identifiable, Codable {
    @DocumentID var tripId: String?
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
    var distanceToPassenger: Double
    var travelTimeToPassenger: Int
    var state: TripState
    
    var id: String {
        return tripId ?? ""
    }
}
