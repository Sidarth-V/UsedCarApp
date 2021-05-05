//
//  CompareCarView.swift
//  UsedCarApp
//
//  Created by Ananya George on 5/5/21.
//

import SwiftUI

struct CompareCarView: View {
    
    @State var currentCar: String = "Car 1"
    @State var currentCarTransmission: String = "Manual"
    @State var currentCarFuel: String = "Petrol"
    @State var currentCarSeats: String = "5"
    @State var currentCarMileage: String = "25"
    @State var currentCarEngine: String = "392"
    @State var currentCarMaxPower: String = "144"
    
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.black)
                .cornerRadius(10)
                .frame(width:325, height: 500)
                .padding()
            VStack{
                Text(currentCar)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("Transmission: \(currentCarTransmission)")
                    .foregroundColor(.white)
                Text("Fuel: \(currentCarFuel)")
                    .foregroundColor(.white)
                Text("Seats: \(currentCarSeats)")
                    .foregroundColor(.white)
                Text("Mileage: \(currentCarMileage)")
                    .foregroundColor(.white)
                Text("Engine: \(currentCarEngine)")
                    .foregroundColor(.white)
                Text("Maximum Power: \(currentCarMaxPower)")
                    .foregroundColor(.white)
                
            }
        }
    }
}

struct CompareCarView_Previews: PreviewProvider {
    static var previews: some View {
        CompareCarView()
    }
}
