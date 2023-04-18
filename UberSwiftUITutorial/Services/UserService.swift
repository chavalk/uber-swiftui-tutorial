//
//  UserService.swift
//  UberSwiftUITutorial
//
//  Created by Jose Garcia on 4/18/23.
//

import Firebase

class UserService: ObservableObject {
    static let shared = UserService()
    @Published var user: User?
    
    init() {
        print("DEBUG: Did init user service")
        fetchUser()
    }
    
    func fetchUser() {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        Firestore.firestore().collection("users").document(uid).getDocument { snapshot, _ in
            print("DEBUG: Did fetch user from Firestore")
            guard let snapshot = snapshot else { return }
            guard let user = try? snapshot.data(as: User.self) else { return }
            self.user = user
        }
    }
    
//    static func fetchUser(completion: @escaping(User) -> Void) {
//        guard let uid = Auth.auth().currentUser?.uid else { return }
//
//        Firestore.firestore().collection("users").document(uid).getDocument { snapshot, _ in
//            print("DEBUG: Did fetch user from Firestore")
//            guard let snapshot = snapshot else { return }
//            guard let user = try? snapshot.data(as: User.self) else { return }
//            completion(user)
//        }
//    }
}
