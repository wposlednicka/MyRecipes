//
//  Recipe.swift
//  MyRecipes
//
//  Created by Wiktoria on 19/03/2019.
//  Copyright © 2019 Wiktoria. All rights reserved.
//

import UIKit

class Recipe {
    
    var name: String
    var ingredients: [String]
    var description: String
    var image: UIImage
    
    init(name: String, ingredients: [String], description: String, image: UIImage) {
        self.name = name
        self.ingredients = ingredients
        self.description = description
        self.image = image
    }
}
