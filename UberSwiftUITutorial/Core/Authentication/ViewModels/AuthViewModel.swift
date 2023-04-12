//
//  AuthViewModel.swift
//  UberSwiftUITutorial
//
//  Created by Jose Garcia on 4/12/23.
//

import Foundation
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        userSession = Auth.auth().currentUser
    }
}
