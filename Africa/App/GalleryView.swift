//
//  GalleryView.swift
//  Africa
//
//  Created by AKASH on 03/11/23.
//

import SwiftUI

struct GalleryView: View {
    //MARK: - Properties
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    let greedLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 2)
    @State var selectedAnimal: String = Globals.mockAnimalData().image
    
    //MARK: - Body
    var body: some View {
        ScrollView(showsIndicators:false) {
            VStack(spacing: 30) {
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                
                LazyVGrid(columns: greedLayout) {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .onTapGesture {
                                selectedAnimal = item.image
                            }
                            .if(selectedAnimal == item.image) { view in
                                Image(item.image)
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                                    .overlay(RoundedRectangle(cornerRadius: 12).stroke(.white, lineWidth: 2))
                            }
                    }
                }
                .padding(.horizontal, 2)
            }
        }
        .onAppear(perform: {
            selectedAnimal = animals[0].image
        })
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 18)
    }
    
    //MARK: - Functions
}

#Preview {
    GalleryView()
}
