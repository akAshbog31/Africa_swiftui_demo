//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by AKASH on 05/11/23.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormate: String) -> AVPlayer {
    if let url = Bundle.main.url(forResource: fileName, withExtension: fileFormate) {
        videoPlayer = AVPlayer(url: url)
        videoPlayer?.play()
    }
    return videoPlayer!
}
