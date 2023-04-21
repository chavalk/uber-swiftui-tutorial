//
//  DeveloperPreview.swift
//  UberSwiftUITutorial
//
//  Created by Jose Garcia on 4/18/23.
//

import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let mockTrip = Trip(
        id: NSUUID().uuidString,
        passengerUid: NSUUID().uuidString,
        driverUid: NSUUID().uuidString,
        passengerName: "Jose Garcia",
        driverName: "John Doe",
        passengerLocation: .init(latitude: 37.123, longitude: -122.1),
        driverLocation: .init(latitude: 37.123, longitude: -122.1),
        pickUpLocationName: "Apple Campus",
        dropOffLocationName: "Starbucks",
        pickUpLocationAddress: "123 Main St, Palo Alto CA",
        pickUpLocation: .init(latitude: 37.456, longitude: -122.15),
        dropOffLocation: .init(latitude: 37.042, longitude: -122.2),
        tripCost: 47.0
    )
    
    let mockUser = User(fullName: "Jose Garcia", email: "test@gmail.com", uid: NSUUID().uuidString, coordinates: GeoPoint(latitude: 37.38, longitude: -122.05), accountType: .passenger)
}
