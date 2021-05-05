//
//  DealershipMapView.swift
//  UsedCarApp
//
//  Created by Ananya George on 5/5/21.
//

import Foundation
import SwiftUI
import MapKit


class Coordinator: NSObject, MKMapViewDelegate {
    
    var control: DealershipMapView
    
    init(_ control: DealershipMapView){
        self.control = control
    }
    
    func mapView(_ mapView: MKMapView, didAdd views: [MKAnnotationView]) {
        if let annotationView = views.first{
            if let annotation = annotationView.annotation{
                if annotation is MKUserLocation {
                    let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 1000,longitudinalMeters: 1000)
                    mapView.setRegion(region, animated: true)
                }
            }
        }
    }
}

struct DealershipMapView: UIViewRepresentable {
    
    let fDealerships: [Dealerships]
    
    func makeUIView(context: Context) -> MKMapView {
        let map = MKMapView()
        map.showsUserLocation = true
        map.delegate = context.coordinator
        return map
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<DealershipMapView>) {
        updateAnnotations(from: uiView)
        
    }
    
    private func updateAnnotations(from mapView: MKMapView){
        mapView.removeAnnotations(mapView.annotations)
        let annotations = self.fDealerships.map(DealershipAnnotation.init)
        mapView.addAnnotations(annotations)
    }
}

