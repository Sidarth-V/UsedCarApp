//
//  DealershipView.swift
//  UsedCarApp
//
//  Created by Ananya George on 5/5/21.
//

import SwiftUI
import MapKit

struct DealershipView: View {
    
    @ObservedObject var locationManager = LocationManager()
    @State private var fDealerships: [Dealerships] = [Dealerships]()
    @State private var search: String = ""
    
    private func getNearbyDealerships(){
        
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = search
        
        let search = MKLocalSearch(request: request)
        search.start { (response, error) in
            if let response = response {
                let mapItems = response.mapItems
                self.fDealerships = mapItems.map{
                    Dealerships(placemark: $0.placemark)
                }
                
            }
        }
    }
    
    
    var body: some View {
        ZStack(alignment: .top){
            
            DealershipMapView(fDealerships: fDealerships)
            
            TextField("Search", text: $search, onEditingChanged: {_ in}){
                //commit
                self.getNearbyDealerships()
            }.textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .offset(y:44)
        }
        .navigationBarTitle("Dealerships",displayMode: .inline)
    }
}

struct DealershipView_Previews: PreviewProvider {
    static var previews: some View {
        DealershipView()
    }
}
