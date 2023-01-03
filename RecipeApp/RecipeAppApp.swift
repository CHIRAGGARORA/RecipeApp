//
//  RecipeAppApp.swift
//  RecipeApp
//
//  Created by chirag arora on 03/01/23.
//

import SwiftUI

@main
struct RecipeAppApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()// @StateObject means it will follow lifecycle of the app
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
