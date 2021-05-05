//
//  DealershipAnnotation.swift
//  UsedCarApp
//
//  Created by Ananya George on 5/5/21.
//

import MapKit
import UIKit

final class DealershipAnnotation: NSObject, MKAnnotation {
    let title: String?
    let coordinate: CLLocationCoordinate2D
    
    init(dealerships: Dealerships){
        self.title = dealerships.name
        self.coordinate = dealerships.coordinate
    }
}
