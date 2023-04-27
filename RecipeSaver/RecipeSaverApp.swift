//
//  RecipeSaverApp.swift
//  RecipeSaver
//
//  Created by Joann Myung on 4/8/23.
//

import SwiftUI

@main
struct RecipeSaverApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
