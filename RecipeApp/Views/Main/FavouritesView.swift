//
//  FavouritesView.swift
//  RecipeApp
//
//  Created by chirag arora on 03/01/23.
//

import SwiftUI

struct FavouritesView: View {
    var body: some View {
        NavigationView {
            Text("You haven't saved any recipe to your favourites yet!!")
                .padding()
                .navigationTitle("Favourites")
        }
    }
}

struct FavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesView()
    }
}
