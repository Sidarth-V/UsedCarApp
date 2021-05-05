//
//  Code.swift
//  UsedCarApp
//
//  Created by Sidarth V on 05/05/21.
//

import SwiftUI

struct Code:  View {
    
    @State var username: String = ""
    @State var isPrivate: Bool = true
    var frameworks = ["UIKit", "Core Data", "CloudKit", "SwiftUI"]
    @State private var selectedFrameworkIndex = 0
        
        var body: some View {
            NavigationView {
                Form {
                    TextField("Username", text: $username)
                    Toggle(isOn: $isPrivate) {
                                        Text("Private Account")
                    }
                    Picker(selection: $selectedFrameworkIndex, label: Text("FrameWork")) {
                                ForEach(0 ..< frameworks.count) {
                                   Text(self.frameworks[$0])
                                }
                             }
                }
                .navigationBarTitle("Settings")
                .padding(.all, 0)
            }
        }
}
/*
 VStack(alignment: .leading, spacing: 15, content: {
     Text("Car Selector")
         .font(.largeTitle)
         .ignoresSafeArea(.keyboard)
     Text("Please input data below")
         .font(.title3)
         .ignoresSafeArea(.keyboard)
     DisclosureGroup("Transmission", isExpanded: $isExpanded){
         VStack{
             ForEach(transmissonTypes, id:\.self){trans in
                 Text("\(trans)")
                     .font(.title3)
                     .padding(.all)
             }
         }
     }.accentColor(.white)
     .font(.title2)
     .foregroundColor(.white)
     .padding(.all)
     .background(Color.blue)
     .cornerRadius(8)
     DisclosureGroup("Fuel Type", isExpanded: $isExpandedFuel){
         VStack{
             ForEach(FuelType, id:\.self){trans in
                 Text("\(trans)")
                     .font(.title3)
                     .padding(.all)
             }
         }
     }.accentColor(.white)
     .font(.title2)
     .foregroundColor(.white)
     .padding(.all)
     .background(Color.blue)
     .cornerRadius(8)
     TextField("Age", text: $agePicker)
         .accentColor(.blue)
         .keyboardType(.decimalPad)
         .padding(.all)
         .foregroundColor(.white)
         .background(Color.gray)
         .border(Color.black)
         .cornerRadius(8)
         .font(.title3)
     TextField("Distance", text: $distance)
         .accentColor(.blue)
         .keyboardType(.decimalPad)
         .padding(.all)
         .foregroundColor(.white)
         .background(Color.gray)
         .border(Color.black)
         .cornerRadius(8)
         .font(.title3)
     TextField("Mileage", text: $mileage)
         .accentColor(.blue)
         .keyboardType(.decimalPad)
         .padding(.all)
         .foregroundColor(.white)
         .background(Color.gray)
         .border(Color.black)
         .cornerRadius(8)
         .font(.title3)
     TextField("Engine", text: $Engine)
         .accentColor(.blue)
         .padding(.all)
         .foregroundColor(.white)
         .background(Color.gray)
         .border(Color.black)
         .cornerRadius(8)
         .font(.title3)
     TextField("MaxP", text: $MaxP)
         .accentColor(.blue)
         .padding(.all)
         .foregroundColor(.white)
         .background(Color.gray)
         .border(Color.black)
         .cornerRadius(8)
         .font(.title3)
     Spacer()
 }).padding(.all)
 */
struct Code_Previews: PreviewProvider {
    static var previews: some View {
        Code()
    }
}
