//
//  MainManager.swift
//  SwiftUI_v0
//
//  Created by Carlos Diaz on 12/07/23.
//

import SwiftUI

struct MainManager: View {
    
    @State private var isPresented = false
    @State private var viewType: ViewType = .post
    
    enum ViewType {
        case post
        case navigation
        case alerts
        case fullScreen
    }
    
    var body: some View {
        ScrollView {
            VStack {
                
                Button("Facebook Example") {
                    viewType = .post
                    isPresented = true
                }
                .padding()
                
                Button("Basic Navigation Example") {
                    viewType = .navigation
                    isPresented = true
                }
                .padding()
                
                Button("Alerts Example") {
                    viewType = .alerts
                    isPresented = true
                }
                .padding()
                
                Button("Full Screen") {
                    viewType = .fullScreen
                    isPresented = true
                }
                .padding()
                
                Spacer()
                
            }
        }
        .sheet(isPresented: $isPresented, onDismiss: dismissDetailView) {
            presentView()
        }
    }
    
    func presentView() -> some View {
        switch viewType {
        case .post:
            return AnyView(Facebook(text: .constant("")))
        case .navigation:
            return AnyView(BasicNavigation())
        case .alerts:
            return AnyView(AlertsView())
        case .fullScreen:
            return AnyView(FullScreen())
        }
    }
    
    func dismissDetailView() {
        isPresented = false
    }
}

struct MainManager_Previews: PreviewProvider {
    static var previews: some View {
        MainManager()
    }
}
