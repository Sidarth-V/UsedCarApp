//
//  Dealerships.swift
//  UsedCarApp
//
//  Created by Ananya George on 5/5/21.
//

import Foundation
import MapKit

struct Dealerships {
    
    let placemark: MKPlacemark
    
    var id: UUID {
        return UUID()
    }
    
    var name: String {
        self.placemark.name ?? ""
    }
    
    var title: String {
        self.placemark.title ?? ""
    }
    
    var coordinate: CLLocationCoordinate2D {
        self.placemark.coordinate
    }
    
}
