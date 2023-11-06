//
//  AnimalModel.swift
//  Africa
//
//  Created by AKASH on 03/11/23.
//

import Foundation

struct AnimalModel: Codable, Identifiable, Hashable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
