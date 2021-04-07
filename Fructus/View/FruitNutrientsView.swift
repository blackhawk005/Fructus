//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Shinit Shetty on 07/04/21.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fats", "Proteins", "Vitamins", "Minerals"]
    
    // MARK: - BODY
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional Value per 100g"){
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    Divider()
                        .padding(.vertical, 4)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }//: BOX
    }
}


// MARK: - PREVIEWS
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FruitNutrientsView(fruit: fruitsData[0])
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 480))
                .padding()
        }
    }
}
