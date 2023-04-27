//
//  RecipesViewModel.swift
//  RecipeSaver
//
//  Created by Joann Myung on 4/12/23.
// all the recipe

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init(){
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe){
        recipes.append(recipe)
    }
    func favorites(recipe: Recipe){
        recipes.append(recipe)
    }
    
}

//take recipe and tkae the update function
//landmark example -> have favorties
