//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Satya Prakash Sahu on 05/04/21.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox()  {
            HStack{
                Text("Content Source")
                Spacer()
                Link(destination: URL(string: "https://www.wikipedia.com")!, label: {
                    Text("Wikipedia")
                })
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
        
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
