//
//  CompareView.swift
//  UsedCarApp
//
//  Created by Ananya George on 5/5/21.
//

import SwiftUI

struct CompareView: View {
    
    
    
    var body: some View {
        VStack{
            Divider()
            ScrollView(.horizontal){
                HStack(spacing: 10){
                    ForEach(1..<3){ index in
                        CompareCarView(currentCar: "Car \(index)")
                    }
                }.padding()
            }
            .frame(height:500)
    
            Divider()
            Spacer()
            
        }
        .navigationBarTitle("Car Compare", displayMode: .inline)
    }
}

struct CompareView_Previews: PreviewProvider {
    static var previews: some View {
        CompareView()
    }
}
