//
//  StoriesView.swift
//  SwiftUI_v0
//
//  Created by Carlos Diaz on 12/07/23.
//

import SwiftUI

// MARK: - StoriesView -
struct StoriesView: View {
    
    let stories: [String]
    
    var body: some View {
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
    }
}
