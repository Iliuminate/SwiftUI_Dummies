//
//  MocksFile.swift
//  SwiftUI_v0
//
//  Created by Carlos Diaz on 12/07/23.
//

import Foundation

let stories: [String] = [
    "sample1",
    "sample2",
    "sample3",
    "sample4",
    "sample5",
    "sample6"
]

let postList: [Post] = [
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
