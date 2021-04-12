//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Satya Prakash Sahu on 05/04/21.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: - Properties
    var fruits : Fruit
    @State private var isAnimatingImage : Bool = false
    
    
    
    //MARK: - Body
    var body: some View {
        ZStack  {
            LinearGradient(gradient: Gradient(colors: fruits.gradientColors), startPoint: .top, endPoint: .bottom)
            Image(fruits.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 8, x: 6, y: 8)
                .padding(.vertical,20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
            
            
        }// End of ZStack
        .frame( height: 440)
        .onAppear(){
            withAnimation(.easeOut(duration : 0.5)) {
                isAnimatingImage = true
            }
        }
        
        
        
    }
}





//MARK: - Preview
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruits: fruitsData[1])
            .previewLayout(.fixed(width: 375, height: 440))
            
    }
}
