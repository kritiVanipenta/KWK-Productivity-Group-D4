//
//  Menu.swift
//  KWK Productivity Group D4
//
//  Created by annie han on 7/17/24.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        ZStack {
            //add background image
            NavigationStack {
                VStack {
                    Text("Focus Fruits")
                        //add modifiers
                    NavigationLink(destination: timePicker()) {
                        Text("Timer")
                    }
                    //add modifiers for time picker link
                    NavigationLink(destination: summaryPage()) {
                        Text("Summary")
                    }
                    //add modifiers for summary picker link
                }
                //add modifiers here for title
            }
        }
    }
}

#Preview {
    Menu()
}
