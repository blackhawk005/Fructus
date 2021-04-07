//
//  ContentView.swift
//  Fructus
//
//  Created by Shinit Shetty on 04/04/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - VIEW
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ data in
                    NavigationLink(
                        destination: FruitDetailView(fruit: data)){
                            FruitRowView(fruit: data)
                                .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(leading: Button(action: {
                isOnboarding = true
            }){
                Image(systemName: "chevron.backward")
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(Color.white, lineWidth: 1.25)
            ),
            trailing: Button(action: {
                isShowingSettings = true
            }){
                Image(systemName: "slider.horizontal.3")
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(Color.white, lineWidth: 1.25)
            )
            .sheet(isPresented: $isShowingSettings){
                SettingsView()
                }
            
            )
            
            
        }//: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: - BODY
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .preferredColorScheme(.dark)
//        ContentView()
    }
}
