//
//  summaryPage.swift
//  KWK Productivity Group D4
//
//  Created by Kriti Vanipenta on 7/16/24.
//

import SwiftUI
struct summaryPage: View {
    @State private var numHours = "xx"
  var body: some View {
      NavigationStack {
      ZStack{
        //background image
        Image("Main_bg")
          .ignoresSafeArea()
          
        VStack {
            
          //title banner
          Spacer()
          Text("Focus Fruits")
            .font(.custom("Times New Roman", size: 40))
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding()
            .background(Color(red:0.97, green: 0.73, blue: 0.73))
            .cornerRadius(10)
            
          //home button
          ZStack {
            Rectangle()
              .fill((Color(red:0.97, green: 0.73, blue: 0.73)))
              .frame(width: 70, height: 70)
              .cornerRadius(10)
              .offset(x: -120, y: 0)
              
            //add image of home button
            Image("home")
              .resizable()
              .cornerRadius(10)
              .frame(width: 90, height: 70)
              .offset(x: -120, y: 0)
          }
            
          //main box
          ZStack {
            Rectangle()
            //change color to darker shade
              .fill((Color(red:0.988, green: 0.729, blue: 0.733)))
              .frame(width: 320, height: 450)
              .cornerRadius(10)
              
            Text("Good job!")
                  .font(.custom("Times New Roman", size: 40))
                  .fontWeight(.bold)
                  .foregroundColor(.white)
                  .offset(x:0, y:-190)
              
              Text("You've spent")
                  .offset(x: 0, y:-140)
                  .font(.custom("Times New Roman", size: 40))
                  .fontWeight(.bold)
                  .foregroundColor(.white)
              
              Text(numHours)
                  .offset(x: 0, y: -30)
                  .font(.custom("Times New Roman", size: 140))
                  .fontWeight(.bold)
                  .foregroundColor(.white)
              
              Text("hours")
                  .offset(x: 0, y: 80)
                  .font(.custom("Times New Roman", size: 40))
                  .fontWeight(.bold)
                  .foregroundColor(.white)
              
              Text("on homework 📚")
                  .offset(x: 0, y: 130)
                  .font(.custom("Times New Roman", size: 40))
                  .fontWeight(.bold)
                  .foregroundColor(.white)
          }
            
          //change to different shade
          //share button
          ZStack {
            Rectangle()
              .fill((Color(red:0.97, green: 0.73, blue: 0.73)))
              .frame(width: 2800, height: 50)
              .cornerRadius(10)
              
            Text("Share with others! 📲")
              .frame(width: 300)
              .font(.custom("Times New Roman", size: 30))
              .foregroundColor(.white)
            //when clicked on, pull up last page (screenshot page)
              
          }
                Spacer()
        }
      }
    }
  }
}
#Preview {
  summaryPage()
}
