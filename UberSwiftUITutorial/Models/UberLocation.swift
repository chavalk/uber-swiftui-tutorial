//
//  UberLocation.swift
//  UberSwiftUITutorial
//
//  Created by Jose Garcia on 4/11/23.
//

import CoreLocation

struct UberLocation: Identifiable {
    let id = NSUUID().uuidString
    let title: String
    let coordinate: CLLocationCoordinate2D
}
