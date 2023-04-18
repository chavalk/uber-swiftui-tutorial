//
//  DriverAnnotation.swift
//  UberSwiftUITutorial
//
//  Created by Jose Garcia on 4/18/23.
//

import MapKit
import Firebase

class DriverAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    let uid: String
    
    init(driver: User) {
        self.uid = driver.uid
        self.coordinate = CLLocationCoordinate2D(latitude: driver.coordinates.latitude, longitude: driver.coordinates.longitude)
    }
}
