//
//  ContentView.swift
//  HimalPizza
//
//  Created by Paurakh Vikram Saud on 02/02/2024.
//

import SwiftUI

struct ContentView: View {
    var orders:[Int] = []
    var body: some View {
        VStack {
           
            ZStack {
                
                Image("banner")
                    .resizable()
                .scaledToFit()
               
                ZStack{
                    Text("Himal's Pizza")
                        .background()
                }
            }
            Image(systemName: orders.isEmpty ? "cart":
            "cart.circle.fill")
            HStack {
              
                Text("Order Pizza")
                    .font(.title)
                Spacer()
            }
               
            HStack(alignment:.firstTextBaseline){
                Text("Your Order Item")
                Spacer()
                Text(19.90, format: .currency(code: "NPR"))
            }
            VStack {
                Image(systemName: "rectangle.fill")
                    .resizable()
                .frame(width: 50, height: 50)
                
                Text("Margherita")
                Text("Discription")
            }
            HStack(alignment:.top){
                Image(systemName: "1.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                VStack(alignment:.leading){
                    Text("Margherita")
                    Text("Discription")
                }
                
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
