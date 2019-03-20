//
//  Ingredient.swift
//  MyRecipes
//
//  Created by Wiktoria on 20/03/2019.
//  Copyright © 2019 Wiktoria. All rights reserved.
//

import UIKit

class Ingredient {
    
    var name: String
    var amount: Double
    var measure: Measure
    
    init(name: String, amount: Double, measure: Measure) {
        self.name = name
        self.amount = amount
        self.measure = measure
    }
    
}

enum Measure : String {
    typealias RawValue = String
    
    case szt = "szt."
    case kg = "kg"
    case dag = "dag"
    case litr = "litr"
    case lyzka = "lyzka"
    case lyzeczka = "lyzeczka"
    case szczypta = "szczypta"
    
}
