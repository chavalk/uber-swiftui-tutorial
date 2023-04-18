//
//  SavedLocation.swift
//  UberSwiftUITutorial
//
//  Created by Jose Garcia on 4/17/23.
//

import Firebase

struct SavedLocation: Codable {
    let title: String
    let address: String
    let coordinates: GeoPoint
}
