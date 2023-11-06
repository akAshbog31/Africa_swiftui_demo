//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by AKASH on 04/11/23.
//

import SwiftUI

struct ExternalWebLinkView: View {
    //MARK: - Properties
    let animal: AnimalModel
    
    //MARK: - Body
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                
                Text("Wikipedia")
                
                Spacer()
                
                Group {
                    Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!)
                    
                    Image(systemName: "arrow.up.right.square")
                }
                .foregroundStyle(.accent)
            }
        }
    }
    
    //MARK: - Functions
}

#Preview {
    ExternalWebLinkView(animal: Globals.mockAnimalData())
        .padding()
}
