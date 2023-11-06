//
//  InsetMapView.swift
//  Africa
//
//  Created by AKASH on 04/11/23.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    //MARK: - Properties
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    //MARK: - Body
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay (
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundStyle(.white)
                            .imageScale(.large)
                        
                        Text("Loactions")
                            .foregroundStyle(.accent)
                            .fontWeight(.bold)
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black.opacity(0.4)
                            .cornerRadius(8)
                    )
                }
                    .padding(12),
                alignment: .topTrailing
            )
            .frame(height: 256)
            .cornerRadius(12)
    }
    
    //MARK: - Functions
}

#Preview {
    InsetMapView()
        .padding()
}
