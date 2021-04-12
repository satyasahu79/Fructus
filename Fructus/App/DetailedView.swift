//
//  DetailedView.swift
//  Fructus
//
//  Created by Satya Prakash Sahu on 05/04/21.
//

import SwiftUI

struct DetailedView: View {
    //MARK: - Preview
    var fruits : Fruit
    
    
    //MARK: - Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false )
            {
                VStack{
                    //Header
                    FruitHeaderView(fruits: fruits)
                    VStack (alignment: .leading, spacing: 20){
                     // Title
                        Text(fruits.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruits.gradientColors[1])
                        
                    //Headline
                        Text(fruits.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                    //Nutrition
                        //Complex Layout to be learnt in the next lecture.
                        FruitNutrientsView(fruits: fruits)
                    //Subheading
                        Text("Learn more about \(fruits.title)".uppercased())
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(fruits.gradientColors[1])
                    //Description
                        Text(fruits.description)
                            .multilineTextAlignment(.leading)
                            
                        
                    // Link
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                        
                    }//VStack Ends
                    .padding(.horizontal,20)
                    .frame(maxWidth:640,alignment: .center)
                    
                    
                }//VStack Ends
                .navigationBarTitle(fruits.title,displayMode: .inline)
                .navigationBarHidden(true)
                
                
            }//Scroll View Ends
            .edgesIgnoringSafeArea(.top)
            
            
            
            
        }//Navigatoin View ends
        
        .navigationViewStyle(StackNavigationViewStyle())
        
        
    
    }
}


//MARK: - Preview
struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(fruits: fruitsData[8])
    }
}
