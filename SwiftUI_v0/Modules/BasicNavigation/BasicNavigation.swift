//
//  ContentView.swift
//  SwiftUI_v0
//
//  Created by Carlos Diaz on 12/07/23.
//

import SwiftUI

// MARK: - Main view -
struct BasicNavigation: View {
    
    var body: some View {
        NavigationView {
            Screen(
                title: "Home",
                description: "Firts Screen",
                imageName: "house",
                buttonColor: .pink
            )
        }
    }
}


// MARK: - Screen View -
struct Screen: View {
    
    let title: String
    let description: String
    let imageName: String
    let buttonColor: Color
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200, alignment: .center)
                .padding()
            
            Text(description)
                .font(.system(size: 30, weight: .light, design:  .default))
                .padding()
            
            NavigationLink(
                destination: Screen(
                    title: "Notifications",
                    description: "Second Screen",
                    imageName: "bell",
                    buttonColor: .blue
                ),
                label: {
                    ContinueButton(color: buttonColor)
                }
            )
        }
        .navigationTitle(title)
    }
}

// MARK: - Continue Button -
struct ContinueButton: View {
    let color: Color
    
    var body: some View {
        Text("Continue")
        .frame(width: 200, height: 50, alignment: .center)
        .background(color)
        .foregroundColor(.white)
        .cornerRadius(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BasicNavigation()
    }
}
