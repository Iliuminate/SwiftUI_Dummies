//
//  Facebook.swift
//  SwiftUI_v0
//
//  Created by Carlos Diaz on 12/07/23.
//

import SwiftUI

struct Post: Hashable {
    let name: String
    let post: String
    let imageName: String
    let isLiked: Bool
}

struct Facebook: View {
    
    @Binding var text: String
    
    var body: some View {
        VStack {
            HStack {
                Text("facebook")
                    .font(.system(size: 48, weight: .bold, design: .default))
                    .foregroundColor(Color(Utils.facebookBlueColor))
                
                Spacer()
                
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 45, height: 45, alignment: .center)
                    .foregroundColor(Color(.secondaryLabel))
            }
            .padding()
            
            TextField("Search...", text: $text)
                .padding(8)
                .background(Color(.systemGray5))
                .cornerRadius(8)
                .padding(.horizontal, 15)
            
            
            ZStack {
                Color(.secondarySystemBackground)
                
                ScrollView(.vertical) {
                    VStack{
                        
                        StoriesView(stories: stories)
                        
                        ForEach(postList, id: \.self) { postItem in
                            FBPost(
                                isLiked: postItem.isLiked,
                                name: postItem.name,
                                post: postItem.post,
                                imageName: postItem.imageName
                            )
                        }
                    }
                }
            }
            Spacer()
        }
    }
}

struct Facebook_Previews: PreviewProvider {
    static var previews: some View {
        Facebook(text: .constant(""))
    }
}
