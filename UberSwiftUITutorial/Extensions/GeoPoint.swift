//
//  GeoPoint.swift
//  UberSwiftUITutorial
//
//  Created by Jose Garcia on 4/20/23.
//

import Firebase
import CoreLocation

extension GeoPoint {
    func toCoordinate() -> CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: self.latitude, longitude: self.longitude)
    }
}
