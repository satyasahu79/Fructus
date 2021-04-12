//
//  OnboaardingView.swift
//  Fructus
//
//  Created by Satya Prakash Sahu on 03/04/21.
//

import SwiftUI

struct OnboaardingView: View {
    //MARK: - Properties
    var fruits : [Fruit] = fruitsData
    
    
    //MARK: - Body
    var body: some View {
        TabView {     // Tab View Begins
            ForEach(fruits[0...5])  { item in
                FruitCardView(fruit: item)
            } // Loop Closed
        }// Tab View Ends
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}




//MARK: - Preview
struct OnboaardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboaardingView(fruits: fruitsData)
    }
}
