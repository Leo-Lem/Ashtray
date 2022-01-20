//
//  TitleBar.swift
//  Ashtray
//
//  Created by Leopold Lemmermann on 20.01.22.
//

import SwiftUI

extension AshtrayView {
    struct TitleBar: View {
        @Binding var selectedOverlay: Overlay
        
        var body: some View {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

//MARK: - Previews
struct AshtrayViewTitleBar_Previews: PreviewProvider {
    static var previews: some View {
        AshtrayView.TitleBar()
    }
}
