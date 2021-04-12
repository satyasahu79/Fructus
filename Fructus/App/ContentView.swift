//
//  ContentView.swift
//  Fructus
//
//  Created by Satya Prakash Sahu on 03/04/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    var fruits : [Fruit] = fruitsData
    @State private var isShowingSettings : Bool = false
    
    
    //MARK: - Body
    var body: some View {
        
        NavigationView  {
            List{
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(
                        destination: DetailedView(fruits : item)){
                            FruitRowView(fruit: item)
                            .padding(.vertical,4)
                    }
            }
            
        }     // List Ends
        .navigationTitle("Fruits")
            .navigationBarItems(
            
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    })
                    .sheet(isPresented: $isShowingSettings){
                        SettingsView()
                    }
                
            
            )
    }   //NavigationView Ends
        .navigationViewStyle(StackNavigationViewStyle())
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
}
