//
//  InsetGalleryView.swift
//  Africa
//
//  Created by AKASH on 03/11/23.
//

import SwiftUI

struct InsetGalleryView: View {
    //MARK: - Properties
    let animal: AnimalModel
    
    //MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
            }
        }
    }
    
    //MARK: - Functions
}

#Preview {
    InsetGalleryView(animal: Globals.mockAnimalData())
        .previewLayout(.sizeThatFits)
        .padding()
}
