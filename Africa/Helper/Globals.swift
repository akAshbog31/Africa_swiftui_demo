//
//  Globals.swift
//  Africa
//
//  Created by AKASH on 03/11/23.
//

import Foundation

final class Globals {
    class func mockAnimalData() -> AnimalModel {
        let animals: [AnimalModel] = Bundle.main.decode("animals.json")
        return animals[0]
    }
    
    class func mockVideoData() -> VideoModel {
        let videos: [VideoModel] = Bundle.main.decode("videos.json")
        return videos[0]
    }
    
    class func mockLocationData() -> LocationModel {
        let locations: [LocationModel] = Bundle.main.decode("locations.json")
        return locations[0]
    }
}
