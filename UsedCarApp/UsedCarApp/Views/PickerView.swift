//
//  PickerView.swift
//  UsedCarApp
//
//  Created by Sidarth V on 04/05/21.
//

import SwiftUI

struct PickerView: View {
    
    @State var selectedFTransmissionType = 0
    @State var selectedFuelType = 0
    @State var isExpandedFuel = false
    @State var agePicker: String = ""
    @State var distance: String = ""
    @State var mileage: String = ""
    @State var Engine: String = ""
    @State var MaxP: String = ""
    @State var selectedSeats = 4
    
    var transmissonTypes:[String] = ["Manual", "Automatic"]
    var FuelType:[String] = ["Petrol", "Diesel", "CNG", "LPG", "Electric"]
    
    var body: some View {
        
        
        Form {
            
            Picker(selection: $selectedFTransmissionType, label: Text("Transmission")) {
                ForEach(0 ..< self.transmissonTypes.count) {
                    Text(self.transmissonTypes[$0])
                }
            }
            Picker(selection: $selectedFuelType, label: Text("Fuel")) {
                ForEach(0 ..< self.FuelType.count) {
                    Text(self.FuelType[$0])
                }
            }
            TextField("Age (years)", text: $agePicker)
                .keyboardType(.decimalPad)
            TextField("Distance Driven (kilometers)", text: $distance)
                .keyboardType(.decimalPad)
            TextField("Mileage (kilometers/liter)", text: $mileage)
                .keyboardType(.decimalPad)
            TextField("Engine (cc)", text: $Engine)
                .keyboardType(.decimalPad)
            TextField("Max Power (brake horsepower)", text: $MaxP)
                .keyboardType(.decimalPad)
            Picker(selection: $selectedSeats, label: Text("Number of Seats")){
                ForEach(4...7, id:\.self){
                    Text("\($0)")
                }
            }
            Image("carpriciousmaingb")
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
            Section{
                NavigationLink(destination: PriceView()){
                    HStack{
                        Spacer()
                        Text("Get Price!")
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }
                }
            }
            
        }
        .navigationBarTitle("Price Finder", displayMode: .inline)
    }
}



struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            PickerView()
        }
    }
}
