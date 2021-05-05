//
//  PickerView.swift
//  UsedCarApp
//
//  Created by Sidarth V on 04/05/21.
//

import SwiftUI

struct PickerView: View {
    
    @State private var selectedFTransmissionType = 0
    @State private var selectedFuelType = 0
    @State private var isExpandedFuel = false
    @State private var agePicker: String = ""
    @State private var distance: String = ""
    @State private var mileage: String = ""
    @State private var Engine: String = ""
    @State private var MaxP: String = ""

    var transmissonTypes:[String] = ["Manual", "Automatic"]
    var FuelType:[String] = ["Petrol", "Disel", "CNG"]
    
    var body: some View {
        
        NavigationView{
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
            TextField("Age", text: $agePicker)
                .keyboardType(.decimalPad)
            TextField("Distance", text: $distance)
             .keyboardType(.decimalPad)
            TextField("Mileage", text: $mileage)
                .keyboardType(.decimalPad)
            TextField("Engine", text: $Engine)
            TextField("MaxPower", text: $MaxP)
        }
        }.navigationBarTitle("Car Selector")
    }
}



struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            PickerView()
        }
    }
}
