//
//  LocationModel.swift
//  Africa
//
//  Created by AKASH on 05/11/23.
//

import Foundation
import MapKit

struct LocationModel: Codable, Identifiable {
    let id: String?
    let name: String?
    let image: String?
    let latitude: Double?
    let longitude: Double?
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude ?? 0.0, longitude: longitude ?? 0.0)
    }
}
