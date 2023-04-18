//
//  DeveloperPreview.swift
//  UberSwiftUITutorial
//
//  Created by Jose Garcia on 4/18/23.
//

import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let mockUser = User(fullName: "Jose Garcia", email: "test@gmail.com", uid: NSUUID().uuidString, accountType: .passenger)
}
