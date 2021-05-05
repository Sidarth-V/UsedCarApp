//
//  DealershipView.swift
//  UsedCarApp
//
//  Created by Ananya George on 5/5/21.
//

import SwiftUI

struct DealershipView: View {
    
    @State private var search: String = ""
    
    var body: some View {
        ZStack(alignment: .top){
            
            DealershipMapView()
            
            TextField("Search", text: $search, onEditingChanged: {_ in}){
                //commit
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
