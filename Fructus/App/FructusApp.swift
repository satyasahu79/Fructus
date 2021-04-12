//
//  FructusApp.swift
//  Fructus
//
//  Created by Satya Prakash Sahu on 03/04/21.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    

    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboaardingView()
            }
            else{
                ContentView()
            }
        
        }
    }
}

