import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    var body: some View {
        
        NavigationView {
            ScrollView {
                
                
                RecipeList(recipes: recipesVM.recipes)
            }
        }
            
            
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipesViewModel())
    }
}


