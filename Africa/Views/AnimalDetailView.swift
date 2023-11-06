//
//  AnimalDetailView.swift
//  Africa
//
//  Created by AKASH on 03/11/23.
//

import SwiftUI

struct AnimalDetailView: View {
    //MARK: - Properties
    let animal: AnimalModel
    
    //MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 20) {
                //Hero
                Image(animal.image)
                    .resizable()
                    .scaledToFill()
                
                //Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.primary)
                    .padding(.vertical, 8)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .cornerRadius(3)
                            .offset(y: 24)
                    )
                
                //Headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.accent)
                    .padding(.horizontal)
                
                //Gallery
                Group {
                    HeadingView(headlineImage: "photo.on.rectangle.angled", headingText: "Wliderness in pictures")
                    
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                
                //Facts
                Group {
                    HeadingView(headlineImage: "questionmark.circle", headingText: "Did you know?")
                    
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                
                //Description
                Group {
                    HeadingView(headlineImage: "info.circle", headingText: "All about \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                //Map
                Group {
                    HeadingView(headlineImage: "map", headingText: "National Parks")
                    
                    InsetMapView()
                }
                .padding(.horizontal)
                
                //Link
                Group {
                    HeadingView(headlineImage: "books.vertical", headingText: "Learn More")
                    
                    ExternalWebLinkView(animal: animal)
                }
                .padding(.horizontal)
            }
            .navigationTitle("learn about \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    //MARK: - Functions
}

#Preview {
    AnimalDetailView(animal: Globals.mockAnimalData())
}
