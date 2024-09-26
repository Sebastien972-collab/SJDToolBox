//
//  Utils.swift
//  SJDToolBox
//
//  Created by Sebby on 26/09/2024.
//

import Foundation
import UIKit

public struct Utils {
    static func clearForUrl(_ ingredients : [String]) -> String {
            var text = ""
            for ingredient in ingredients {
                let ingredientToUrl = ingredient.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
                text +=  ingredientToUrl
                
            }
            print(text.utf8)
            return text
        }
    
    public static func getImage(urlString: String?) -> UIImage {
           guard let urlString = urlString else { return UIImage(systemName: "globe")! }
           guard let url = URL(string: urlString) else {
               let image = UIImage(systemName: "globe")!
               return image
           }
           if let data = try? Data(contentsOf: url) {
               if let image = UIImage(data: data) {
                   return image
               }
           }
           return UIImage(systemName: "globe")!
       }
    
    public static func arrayStringToString(ingredients : [String]) -> String {
            var ingredientsString = ""
            for ingredient in ingredients {
                let clearIngredient = ingredient.trimmingCharacters(in: .whitespaces)
                ingredientsString.append(",\(clearIngredient)")
            }
            return ingredientsString
        }
    
    public static func roundedValue(value : Double) -> Double {
           return Double(round(100 * value) / 100)
       }
       public static func integerConvert(value : Double ) -> Int {
           return Int(value)
       }
}
