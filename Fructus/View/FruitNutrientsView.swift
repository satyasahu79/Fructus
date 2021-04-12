//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Satya Prakash Sahu on 05/04/21.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: - Properties
    
    
    var fruits : Fruit
    let nutrients : [String] = ["Energy","Sugar","Fat","Protein","Vitamins","Minerals"]
    //MARK: - Body
    
    var body: some View {
        GroupBox()  {
            DisclosureGroup("Nutritional Value per 100g")   {
                ForEach(0..<nutrients.count, id: \.self)    { item in
                    
                    Divider().padding(.vertical,2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruits.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruits.nutrition[item])
                            .multilineTextAlignment(.trailing)
                        
                    }
                }
            }
            
            
            
        }// End Of GroupBox
    }
}



//MARK: - Preview

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruits: fruitsData[1])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
