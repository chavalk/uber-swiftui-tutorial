//
//  LocationSearchView.swift
//  UberSwiftUITutorial
//
//  Created by Jose Garcia on 4/7/23.
//

import SwiftUI

struct LocationSearchView: View {
    @State private var startLocationText = ""
    @State private var destinationLocationText = ""
    
    var body: some View {
        VStack {
            // Header View
            HStack {
                VStack {
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 6, height: 6)
                    
                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1, height: 24)
                    
                    Rectangle()
                        .fill(.black)
                        .frame(width: 6, height: 6)
                }
                
                VStack {
                    TextField("Current Location", text: $startLocationText)
                        .frame(height: 32)
                        .background(Color(.systemGroupedBackground))
                        .padding(.trailing)
                    
                    TextField("Where to?", text: $destinationLocationText)
                        .frame(height: 32)
                        .background(Color(.systemGray4))
                        .padding(.trailing)
                }
            }
            .padding(.horizontal)
            .padding(.top, 64)
            
            Divider()
                .padding(.vertical)
            
            // List View
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(0 ..< 20, id: \.self) { _ in
                        LocationSearchResultsCell()
                    }
                }
            }
        }
    }
}

struct LocationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchView()
    }
}
