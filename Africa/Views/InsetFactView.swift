//
//  InsetFactView.swift
//  Africa
//
//  Created by AKASH on 03/11/23.
//

import SwiftUI

struct InsetFactView: View {
    //MARK: - Properties
    let animal: AnimalModel
    
    //MARK: - Body
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(.page)
            .frame(minWidth: 148, minHeight: 168, maxHeight: 180)
        }
    }
    
    //MARK: - Functions
}

#Preview {
    InsetFactView(animal: Globals.mockAnimalData())
        .padding()
}
