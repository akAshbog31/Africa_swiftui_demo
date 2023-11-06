//
//  VideoListItemView.swift
//  Africa
//
//  Created by AKASH on 05/11/23.
//

import SwiftUI

struct VideoListItemView: View {
    //MARK: - Properties
    let video: VideoModel
    
    //MARK: - Body
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image("video-\(video.id ?? "")")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                    .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name ?? "")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(.accent)
                
                Text(video.headline ?? "")
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
        }
    }
    
    //MARK: - Functions
    
}

#Preview {
    VideoListItemView(video: Globals.mockVideoData())
        .padding()
}
