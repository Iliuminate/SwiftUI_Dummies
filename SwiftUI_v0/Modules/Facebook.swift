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
    
    private let stories: [String] = [
        "sample1",
        "sample2",
        "sample3",
        "sample4",
        "sample5",
        "sample6"
    ]
    
    private let postList: [Post] = [
        Post(
            name: "Mark Zuckerberg",
            post: "No creamos servicios para ganar dinero, ganamos dinero para crear mejores servicios",
            imageName: "avatar1",
            isLiked: false
        ),
        
        Post(
            name: "Bill Gates",
            post: """
            -\"La vida no es justa: acostúmbrate a ello\".\n
            -\"Mi ambición ha sido siempre hacer realizables los sueños\".\n
            -\"Trata bien a los frikis, algún día trabajarás para uno de ellos\".\n
            -\"Algunas personas quizás me llamen nerd.\"
            """,
            imageName: "avatar2",
            isLiked: true
        ),
        
        Post(
            name: "Jeff Bezos",
            post: "En Amazon tenemos tres grandes ideas que hemos conservado por 18 años y son la razón de nuestro éxito: Poner al consumidor en primer lugar, inventar y tener paciencia.",
            imageName: "avatar3",
            isLiked: false
        ),
        
        Post(
            name: "Elon Muks",
            post: "Si algo es lo suficientemente importante, incluso si las probabilidades están en tu contra, debes seguir intentándolo.",
            imageName: "avatar4",
            isLiked: true
        )
    ]
    
    
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
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 4) {
                                
                                ForEach(stories, id: \.self) { itemName in
                                    Image(itemName)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 140, height: 200, alignment: .center)
                                        .background(Color.red)
                                        .cornerRadius(8)
                                        .clipped()
                                }
                            }
                            .padding()
                        }
                        
                        ForEach(postList, id: \.self) { postItem in
                            FBPpost(
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

// MARK: - FBPpost -
struct FBPpost: View {
    
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


struct Facebook_Previews: PreviewProvider {
    static var previews: some View {
        Facebook(text: .constant(""))
    }
}
