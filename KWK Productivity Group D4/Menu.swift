//
//  Menu.swift
//  KWK Productivity Group D4
//
//  Created by annie han on 7/17/24.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        NavigationStack {
            
            ZStack {
                Image("Main_bg")
                  .ignoresSafeArea()
                
                VStack {
                    //the focus fruit title and the home button are centered.. how move to top?
                    Text("Focus Fruits")
                        //add modifiers
                        .font(.custom("Times New Roman", size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(red:0.97, green: 0.73, blue: 0.73))
                        .cornerRadius(10)
                    
                    NavigationLink(destination: ContentView()) {
                        Image("home")
                          .resizable()
                          .cornerRadius(10)
                          .frame(width: 90, height: 70)
                    }
                    .offset(x: -120, y: 0)
                    
                    Rectangle()
                        .fill((Color(red:1, green: 0.43, blue: 0.53)))
                        .frame(width: 120, height: 50)
                        .cornerRadius(10)
                    NavigationLink(destination: timePicker()){
                            Text("Timer")
                        }
                    //modifiers for time picker link
                    .foregroundColor(.white)
                    .font(.custom("Times New Roman", size: 30))
                    
                    Rectangle()
                        .fill((Color(red:1, green: 0.43, blue: 0.53)))
                        .frame(width: 120, height: 50)
                        .cornerRadius(10)
                    NavigationLink(destination: summaryPage()){
                            Text("Summary")
                        }
                    //add modifiers for summary picker link
                    .foregroundColor(.white)
                    .font(.custom("Times New Roman", size: 30))
                    
                }
            }
            
    }
    }
}

#Preview {
    Menu()
}
