//
//  StartButtonView.swift
//  Fructus
//
//  Created by Satya Prakash Sahu on 03/04/21.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnoarding : Bool?
    
    
    
    
    // MARK: - BODY
    var body: some View {
        Button(action: {isOnoarding = false}, label: {
            HStack(spacing : 8) {
                Text("Start")
                Image(systemName: "arrow.forward.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal,16)
            .padding(.vertical,10)
            .background(
                Capsule().strokeBorder(Color.white,lineWidth: 1.25)
                
            )
            
        })//: Button
        .accentColor(.white)
        
        
    }
}



// MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
