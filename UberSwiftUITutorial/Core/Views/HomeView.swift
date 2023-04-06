//
//  HomeView.swift
//  UberSwiftUITutorial
//
//  Created by Jose Garcia on 4/6/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        UberMapViewRepresentable()
            .ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
