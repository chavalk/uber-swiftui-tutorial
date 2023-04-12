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
    
    func registerUser(withEmail email: String, password: String, fullName: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to sign up with error \(error.localizedDescription)")
                return
            }
            
            print("DEBUG: Registered user successfully")
            print("DEBUG: User id \(result?.user.uid)")
        }
    }
}
