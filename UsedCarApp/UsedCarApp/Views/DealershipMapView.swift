//
//  DealershipMapView.swift
//  UsedCarApp
//
//  Created by Ananya George on 5/5/21.
//

import SwiftUI
import MapKit


class Coordinator: NSObject, MKMapViewDelegate {
    
    var control: DealershipMapView
    
    init(_ control: DealershipMapView){
        self.control = control
    }
}

struct DealershipMapView: UIViewRepresentable {
   
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
        //
    }
}

struct DealershipMapView_Previews: PreviewProvider {
    static var previews: some View {
        DealershipMapView()
    }
}
