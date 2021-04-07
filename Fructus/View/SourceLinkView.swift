//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Shinit Shetty on 07/04/21.
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: - PROPERTIES
    
    var fruitName: String
    
    // MARK: - BODY
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://en.wikipedia.org/wiki/\(fruitName)")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

// MARK: - PREVIEWS
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView(fruitName: "Blueberry")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
