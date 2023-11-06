//
//  VideoListView.swift
//  Africa
//
//  Created by AKASH on 03/11/23.
//

import SwiftUI

struct VideoListView: View {
    //MARK: - Properties
    @State var videos: [VideoModel] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    //MARK: - Body
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            List {
                ForEach(videos, id: \.id) { item in
                    NavigationLink {
                        VideoPlayerView(videoSelected: item.id ?? "")
                            .navigationTitle(item.name ?? "")
                    } label: {
                        VideoListItemView(video: item)
                            .padding(.vertical, 8)
                    }
                }
            }
            .listStyle(.plain)
            
            Button {
                videos.shuffle()
                hapticImpact.impactOccurred()
            } label: {
                Image(systemName: "arrow.2.squarepath")
                    .padding(.all, 30)
                    .background(Color.accentColor)
                    .foregroundStyle(.white)
                    .clipShape(Circle())
                    .imageScale(.large)
            }
            .padding(.trailing, 20)
            .padding(.bottom, 20)
        }
    }
    
    //MARK: - Functions
}

#Preview {
    VideoListView()
}
