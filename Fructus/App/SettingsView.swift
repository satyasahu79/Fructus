//
//  SettingsView.swift
//  Fructus
//
//  Created by Satya Prakash Sahu on 05/04/21.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - Properties
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding : Bool = false
    
    
    
    
    
    //MARK: - Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false)   {
                VStack (spacing : 20){
                    //MARK: - Section 1
                    GroupBox(
                        
                        label :
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical,4)
                        HStack(alignment: .center, spacing: 10, content: {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80, alignment: .leading)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholestrol. Fruits are sources of many essentials nutrients including potassium, dietary fiber, vitamins and more.")
                                .font(.footnote)
                        })
                        
                        }
                    
                    
                    
                    
                    
                    //MARK: - Section 2
                    GroupBox(label : SettingsLabelView(labelText: "Customization", labelImage: "paintbrush"))
                    {
                        Divider().padding(.vertical,10)
                        Text("If you wish you can restart the application by tooggling the switch in this box. That way the onboarding process starts again and you will be able to see the onboarding screen again.")
                            .font(.footnote)
                            .padding(.vertical,8)
                            .frame(minHeight : 60)
                            .multilineTextAlignment(.leading)
                            .layoutPriority(1)
                        Toggle(isOn : $isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.green)
                            } else {
                                Text("Reset".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                                
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground)
                                        .clipShape(RoundedRectangle(cornerRadius: 8,style: .continuous)))
                   
                    }
                   
                    
                    //MARK: - Section 3
                    GroupBox(label : SettingsLabelView(labelText: "Application", labelImage: "apps.iphone"))
                    {
                        
                        SettingsRowView(name: "Developer & Designer", content: "Satya Prakash Sahu")
                        SettingsRowView(name: "Freamework", linkLabel: "SwiftUI 2.0", linkDestination: "developer.apple.com/documentation/swiftui/")
                        SettingsRowView(name: "Version", content: "1.1.0")
                        
                    }
                    
                    
                    
                   
                }// VStack Ends
                .navigationBarTitle("Settings",displayMode: .large)
                .padding()
                .navigationBarItems(
                    trailing:
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                            }, label: {
                                Image(systemName: "xmark")
                            })
                )
                
                
                
            }//Scroll View Ends
            
            
            
        }// Navigation View Ends
    }



}





//MARK: - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}






