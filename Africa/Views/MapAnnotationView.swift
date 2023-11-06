//
//  MapAnnotationView.swift
//  Africa
//
//  Created by AKASH on 05/11/23.
//

import SwiftUI

struct MapAnnotationView: View {
    //MARK: - Properties
    var location: LocationModel
    @State private var animation: Double = 0.0
    
    //MARK: - Body
    var body: some View {
        ZStack {
            Circle()
                .fill(.accent)
                .frame(width: 54, height: 54)
            
            Circle()
                .stroke(.accent, lineWidth: 2)
                .frame(width: 52, height: 52)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image ?? "")
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
        }
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        })
    }
    
    //MARK: - Functions
    
}

#Preview {
    MapAnnotationView(location: Globals.mockLocationData())
        .padding()
}
