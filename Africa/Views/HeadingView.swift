//
//  HeadingView.swift
//  Africa
//
//  Created by AKASH on 03/11/23.
//

import SwiftUI

struct HeadingView: View {
    //MARK: - Properties
    var headlineImage: String
    var headingText: String
    
    //MARK: - Body
    var body: some View {
        HStack {
            Image(systemName: headlineImage)
                .foregroundStyle(.accent)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
    
    //MARK: - Functions
}

#Preview {
    HeadingView(headlineImage: "photo.on.rectangle.angled", headingText: "Wliderness in pictures")
        .previewLayout(.sizeThatFits)
        .padding()
}
