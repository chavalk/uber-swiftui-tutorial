//
//  MapViewState.swift
//  UberSwiftUITutorial
//
//  Created by Jose Garcia on 4/9/23.
//

import Foundation

enum MapViewState {
    case noInput
    case searchingForLocation
    case locatitonSelected
    case polylineAdded
    case tripRequested
    case tripRejected
    case tripAccepted
}
