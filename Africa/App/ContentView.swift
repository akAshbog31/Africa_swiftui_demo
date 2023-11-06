//
//  ContentView.swift
//  Africa
//
//  Created by AKASH on 03/11/23.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    //MARK: - Body
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                CoverImageView()
                    .frame(height: 300)
                
                ForEach(animals, id: \.id) { animal in
                    NavigationLink {
                        AnimalDetailView(animal: animal)
                    } label: {
                        AnimalListitemView(animal: animal)
                            .padding(.horizontal, 16)
                    }
                }
                .padding(.top, 20)
            }
        }
        .ignoresSafeArea(.container, edges: .top)
    }
    
    //MARK: - Functions
}

#Preview {
    ContentView()
}
