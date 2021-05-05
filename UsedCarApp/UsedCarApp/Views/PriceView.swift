//
//  PriceView.swift
//  UsedCarApp
//
//  Created by Ananya George on 5/5/21.
//

import SwiftUI

struct PriceView: View {

    @State var estimatedPrice = 234000
    
    var body: some View {
        
        VStack{
            

        Text("Estimated price:")
            .font(.largeTitle)
        Text("₹\(estimatedPrice)")
            .font(.largeTitle)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }
        
    }
}

struct PriceView_Previews: PreviewProvider {
    static var previews: some View {
        PriceView()
    }
}
