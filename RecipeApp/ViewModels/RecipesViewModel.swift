//
//  RecipesViewModel.swift
//  RecipeApp
//
//  Created by chirag arora on 03/01/23.
//

import Foundation


class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
        
    }
    
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
