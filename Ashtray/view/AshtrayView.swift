//
//  AshtrayView.swift
//  Ashtray
//
//  Created by Leopold Lemmermann on 20.01.22.
//

import SwiftUI

struct AshtrayView: View {
    var body: some View {
        TabView(selection: $currentPage) {
            HistView().tag(Page.hist)
            MainView().tag(Page.main)
            StatView().tag(Page.stat)
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .overlay {
            
        }
        .overlay {
            Group {
                switch currentOverlay {
                case .pref: PrefView()
                case .info: InfoView()
                default: EmptyView()
                }
            }
        }
        
    }
    
    @State private var currentOverlay: Overlay = .none
    @State private var currentPage: Page = .main
}

extension AshtrayView {
    enum Page { case main, hist, stat }
    enum Overlay { case none, pref, info }
}

//MARK: - Previews
struct AshtrayView_Previews: PreviewProvider {
    static var previews: some View {
        AshtrayView()
    }
}
