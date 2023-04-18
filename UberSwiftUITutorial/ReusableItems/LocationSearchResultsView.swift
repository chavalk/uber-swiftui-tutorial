//
//  LocationSearchResultsView.swift
//  UberSwiftUITutorial
//
//  Created by Jose Garcia on 4/17/23.
//

import SwiftUI

struct LocationSearchResultsView: View {
    @StateObject var viewModel: LocationSearchViewModel
    let config: LocationResultsViewConfig
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(viewModel.results, id: \.self) { result in
                    LocationSearchResultsCell(title: result.title, subtitle: result.subtitle)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                viewModel.selectLocation(result, config: config)
                            }
                        }
                }
            }
        }
    }
}

//struct LocationSearchResultsView_Previews: PreviewProvider {
//    static var previews: some View {
//        LocationSearchResultsView()
//    }
//}
