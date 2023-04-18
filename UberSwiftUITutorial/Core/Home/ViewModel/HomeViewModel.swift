//
//  HomeViewModel.swift
//  UberSwiftUITutorial
//
//  Created by Jose Garcia on 4/18/23.
//

import SwiftUI
import Firebase
import FirebaseFirestoreSwift
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var drivers = [User]()
    private let service = UserService.shared
    var currentUser: User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        fetchUser()
    }
    
    func fetchDrivers() {
        Firestore.firestore().collection("users").whereField("accountType", isEqualTo: AccountType.driver.rawValue).getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            let drivers = documents.compactMap({ try? $0.data(as: User.self) })
            self.drivers = drivers
        }
    }
    
    func fetchUser() {
        service.$user.sink { user in
            guard let user = user else { return }
            self.currentUser = user
            guard user.accountType == .passenger else { return }
            self.fetchDrivers()
        }
        .store(in: &cancellables)
    }
}
