//
//  CoverImageView.swift
//  Africa
//
//  Created by AKASH on 03/11/23.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: - Properties
    let coverImages: [CoverImageModel] = Bundle.main.decode("covers.json")
    
    //MARK: - Body
    var body: some View {
        TabView {
            ForEach(coverImages, id: \.id) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } // : Loop
        } // : Tab
        .tabViewStyle(.page)
    }
    
    //MARK: - Functions
}

//MARK: - Preview
#Preview {
    CoverImageView()
        .previewLayout(.fixed(width: 400, height: 300))
}
