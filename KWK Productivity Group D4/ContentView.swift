//
//  ContentView.swift
//  KWK Productivity Group D4
//
//  Created by Kriti Vanipenta on 7/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Image("Main_bg")
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    Text("Focus Fruits")
                        .font(.custom("Times New Roman", size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(red:0.97, green: 0.73, blue: 0.73))
                        .cornerRadius(10)
                        .padding(50)
                    
                    ZStack {
                        Rectangle()
                            .fill((Color(red:1, green: 0.43, blue: 0.53)))
                            .frame(width: 120, height: 50)
                            .cornerRadius(10)
                        NavigationLink(destination:Main()){
                                Text("Start")
                            }
                        .foregroundColor(.white)
                        .font(.custom("Times New Roman", size: 30))
                        
                    }
                    .padding(50)
                                
                            
                    ZStack {
                        Rectangle()
                            .fill((Color(red:0.97, green: 0.73, blue: 0.73)))
                            .frame(width: 320, height: 150)
                            .cornerRadius(10)
                        Text("A productivity timer app to help you start and finish your tasks!")
                            .frame(width: 300)
                            .font(.custom("Times New Roman", size: 30))
                            .foregroundColor(.white)
                    
                    }
                
                       
                                Spacer()
                            }
                        }
        }
                }
            }

#Preview {
    ContentView()
}
