//
//  ContentView.swift
//  Stacks_Coding_Challenge_Key
//
//  Created by Bill Skrzypczak on 10/5/24.
//

import SwiftUI

struct ChallengeView: View {
    var body: some View {
        ZStack {
            // Blue background covering the entire screen
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            // VStack for vertical arrangement
            VStack {
                // Title text at the top
                Text("My First Layout")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                
                // HStack with three colored squares
                HStack {
                    Color.red
                        .frame(width: 50, height: 50)
                    Color.green
                        .frame(width: 50, height: 50)
                    Color.yellow
                        .frame(width: 50, height: 50)
                }
                .padding()

                // ZStack for overlaying a circle and text
                ZStack {
                    Circle()
                        .fill(Color.yellow)
                        .frame(width: 150, height: 150)
                    
                    Text("Centered!")
                        .font(.headline)
                        .foregroundColor(.black)
                }
                .padding()
            }
        }
    }
}

#Preview {
    ChallengeView()
}
