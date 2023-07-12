//
//  FullScreen.swift
//  SwiftUI_v0
//
//  Created by Carlos Diaz on 12/07/23.
//

import SwiftUI

struct FullScreen: View {
    @State private var isPresentedKey = false
    @State private var selectedModal: ModalType = .modal1

    enum ModalType {
        case modal1
        case modal2
        case modal3
        case none
    }

    var body: some View {
        VStack(spacing: 20) {
            Button("Mostrar Modal 1") {
                selectedModal = .modal1
                isPresentedKey = true
            }
            .fullScreenCover(isPresented: $isPresentedKey) {
                createModalView()
            }

            Button("Mostrar Modal 2") {
                selectedModal = .modal2
                isPresentedKey = true
            }
            .fullScreenCover(isPresented: $isPresentedKey) {
                createModalView()
            }

            Button("Mostrar Modal 3") {
                selectedModal = .modal3
                isPresentedKey = true
            }
            .fullScreenCover(isPresented: $isPresentedKey) {
                createModalView()
            }
        }
    }

    func createModalView() -> some View {
        switch selectedModal {
        case .modal1:
            return AnyView(ModalView1())
        case .modal2:
            return AnyView(ModalView2())
        case .modal3:
            return AnyView(ModalView3())
        case .none:
            return AnyView(EmptyView())
        }
    }
}

struct ModalView1: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            Text("Contenido de Modal 1")
            Button("Cerrar") {
                dismiss()
            }
        }
        .padding()
        .background(Color.yellow)
    }
}

struct ModalView2: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            Text("Contenido de Modal 2")
            Button("Cerrar") {
                dismiss()
            }
        }
        .padding()
        .background(Color.green)
    }
}

struct ModalView3: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            Text("Contenido de Modal 3")
            Button("Cerrar") {
                dismiss()
            }
        }
        .padding()
        .background(Color.blue)
    }
}


struct FullScreen_Previews: PreviewProvider {
    static var previews: some View {
        FullScreen()
    }
}
