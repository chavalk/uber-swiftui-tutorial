//
//  TripCanceledView.swift
//  UberSwiftUITutorial
//
//  Created by Jose Garcia on 4/24/23.
//

import SwiftUI

struct TripCanceledView: View {
    @EnvironmentObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack {
            Capsule()
                .foregroundColor(Color(.systemGray5))
                .frame(width: 48, height: 6)
                .padding(.top, 8)
            
            Text(viewModel.tripCanceledMessage)
                .font(.headline)
                .padding(.vertical)
            
            Button {
                guard let user = viewModel.currentUser else { return }
                guard let trip = viewModel.trip else { return }
                
                if user.accountType == .passenger {
                    if trip.state == .driverCanceled {
                        viewModel.deleteTrip()
                    } else if trip.state == .passengerCanceled {
                        viewModel.trip = nil
                    }
                } else {
                    if trip.state == .passengerCanceled {
                        viewModel.deleteTrip()
                    } else if trip.state == .driverCanceled {
                        viewModel.trip = nil
                    }
                }
            } label: {
                Text("OK")
                    .fontWeight(.bold)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 50)
                    .background(.blue)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }
        }
        .padding(.bottom, 24)
        .frame(maxWidth: .infinity)
        .background(Color.theme.backgroundColor)
        .cornerRadius(16)
        .shadow(color: Color.theme.secondaryBackgroundColor, radius: 20)
    }
}

struct TripCanceledView_Previews: PreviewProvider {
    static var previews: some View {
        TripCanceledView()
    }
}
