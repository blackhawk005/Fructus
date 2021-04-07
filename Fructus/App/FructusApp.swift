//
//  FructusApp.swift
//  Fructus
//
//  Created by Shinit Shetty on 04/04/21.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnBoardingView()
            }else{
                ContentView()
            }
        }
    }
}
