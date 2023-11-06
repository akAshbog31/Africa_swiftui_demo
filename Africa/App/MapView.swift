//
//  MapView.swift
//  Africa
//
//  Created by AKASH on 03/11/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    //MARK: - Properties
    @State private var mapRegion: MKCoordinateRegion = {
        let mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        let mapSpan = MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0)
        return MKCoordinateRegion(center: mapCoordinates, span: mapSpan)
    }()
    let location: [LocationModel] = Bundle.main.decode("locations.json")
    
    //MARK: - Body
    var body: some View {
        Map(coordinateRegion: $mapRegion, annotationItems: location) { item in
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
        }
        .overlay(
            HStack(spacing: 12) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading, spacing: 3, content: {
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundStyle(.accent)
                        
                        Spacer()
                        
                        Text("\(mapRegion.center.latitude)")
                            .font(.footnote)
                            .foregroundStyle(.white)
                    }
                    
                    Divider()
                    
                    HStack {
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundStyle(.accent)
                        
                        Spacer()
                        
                        Text("\(mapRegion.center.longitude)")
                            .font(.footnote)
                            .foregroundStyle(.white)
                    }
                })
            }
                .padding(.vertical, 12)
                .padding(.horizontal, 16)
                .background(
                    Color.black.opacity(0.4)
                        .cornerRadius(12)
                )
                .padding()
                .padding(.top, 40)
            , alignment: .top
        )
        .ignoresSafeArea(.container, edges: .top)
    }
    
    //MARK: - Functions
}

#Preview {
    MapView()
}
