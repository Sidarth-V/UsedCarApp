//
//  MainMenuView.swift
//  UsedCarApp
//
//  Created by Ananya George on 5/5/21.
//

import SwiftUI

struct MainMenuView: View {
    
    var body: some View {
        
        NavigationView {
            VStack{
                Text("Throwing caution to the wind with all your whimsical car purchases!")
                    .font(Font.custom("Avenir", size:18))
       
                
                Image("carpriciousmmredblue")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .padding()
                NavigationLink(destination: PickerView()){
                    Text("Get Car Price!💸")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                }
                .background(Color.yellow)
                .foregroundColor(.white)
                .cornerRadius(10.0)
                .padding()
                
                
                NavigationLink(destination: CompareView()){
                    Text("Compare Cars 🚙")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding()
                }
                .background(Color.yellow)
                .foregroundColor(.white)
                .cornerRadius(10.0)
                .padding()
                
                NavigationLink(destination: DealershipView()){
                    Text("Nearby Dealerships📍")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding()
                }
                .background(Color.yellow)
                .foregroundColor(.white)
                .cornerRadius(10.0)
                .padding()
            }
            .navigationBarTitle("Carpricious 🚗💨")
            
        }
    }
    
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
