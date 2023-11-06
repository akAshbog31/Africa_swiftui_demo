//
//  AnimalListitemView.swift
//  Africa
//
//  Created by AKASH on 03/11/23.
//

import SwiftUI

struct AnimalListitemView: View {
    //MARK: - Properties
    let animal: AnimalModel
    
    //MARK: - Body
    var body: some View {
        HStack(spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )

            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(.accent)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
                    .foregroundStyle(.white)
            }
        }
    }
    
    //MARK: - Functions
}

#Preview {
    AnimalListitemView(animal: Globals.mockAnimalData())
        .padding()
}
