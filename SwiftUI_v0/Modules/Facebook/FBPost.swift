//
//  FBPost.swift
//  SwiftUI_v0
//
//  Created by Carlos Diaz on 12/07/23.
//

import SwiftUI

// MARK: - FBPpost -
struct FBPost: View {
    
    @State var isLiked: Bool
    
    let name: String
    let post: String
    let imageName: String
    
    var body: some View{
        VStack {
            // ------------------------------
            HStack{
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50, alignment: .center)
                    .cornerRadius(25)
                    .clipped()
                VStack {
                    HStack {
                        Text(name)
                            .foregroundColor(Color.blue)
                            .font(.system(size: 18, weight: .semibold, design: .default))
                        Spacer()
                    }
                    HStack {
                        Text("12 minutes ago")
                            .foregroundColor(Color(.secondaryLabel))
                        Spacer()
                    }
                }
                Spacer()
            }
            // ------------------------------
            HStack{
                Text(post)
                    //.foregroundColor(Color.black)
                    .font(.system(size: 24, weight: .regular, design: .default))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            // ------------------------------
            HStack {
                Button(
                    action: {
                        isLiked.toggle()
                    },
                    label: { Text(isLiked ? "Liked" : "Like") }
                )
                Spacer()
                
                Button(
                    action: {
                    },
                    label: { Text("Comment") }
                )
                Spacer()
                
                Button(
                    action: {
                    },
                    label: { Text("Share") }
                )
            }
            .padding()
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(8)
    }
}
