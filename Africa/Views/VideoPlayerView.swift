//
//  VideoPlayerView.swift
//  Africa
//
//  Created by AKASH on 05/11/23.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    //MARK: - Properties
    var videoSelected: String
    
    //MARK: - Body
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormate: "mp4"))
                .overlay (
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .padding(.top, 6)
                        .padding(.horizontal, 8),
                    alignment: .topLeading
                )
        }
    }
    
    //MARK: - Functions
}

#Preview {
    VideoPlayerView(videoSelected: "lion")
}
