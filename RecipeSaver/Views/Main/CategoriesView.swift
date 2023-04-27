//
//  CategoriesView.swift
//  RecipeSaver
//
//  Created by Joann Myung on 4/8/23.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            List{
                ForEach(Category.allCases) { category in
                    NavigationLink {
                        CategoryView(category: category)
//                        ScrollView {
//                            RecipeList(recipes: Recipe.all.filter{ $0.category == category.rawValue })
//                        }
//                        .navigationTitle(category.rawValue+"s")
                    
                    } label: {
                        Text(category.rawValue + "s")
                    }
                }
            }
                .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
