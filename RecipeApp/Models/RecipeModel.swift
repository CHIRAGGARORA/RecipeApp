//
//  RecipeModel.swift
//  RecipeApp
//
//  Created by chirag arora on 03/01/23.
//

import Foundation


enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue } 
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}


struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}


extension Recipe {
    static let all: [Recipe] = [// static means its shared with all instances of struct
        Recipe(name: "Christmas pie",
               image: "https://images.immediate.co.uk/production/volatile/sites/30/2008/01/Christmas-pie-2ed9223.jpg?quality=90&webp=true&resize=600,545",
               description: "Combine a few key Christmas flavours here to make a pie that both children and adults will adore",
               ingredients: "2 tbsp olive oil,\n knob butter,\n 1 onion, finely chopped,\n 500g sausagemeat or skinned sausages,\n grated zest of 1 lemon,\n 100g fresh white breadcrumbs,\n 85g ready-to-eat dried apricots, chopped,\n 50g chestnut, canned or vacuum-packed, chopped,\n 2 tsp chopped fresh or 1tsp dried thyme,\n 100g cranberries, fresh or frozen,\n 500g boneless, skinless chicken breasts,\n 500g pack ready-made shortcrust pastry,\n beaten egg, to glaze",
               directions: "Heat oven to 190C/fan 170C/gas 5. Heat 1 tbsp oil and the butter in a frying pan, then add the onion and fry for 5 mins until softened. Cool slightly. Tip the sausagemeat, lemon zest, breadcrumbs, apricots, chestnuts and thyme into a bowl. Add the onion and cranberries, and mix everything together with your hands, adding plenty of pepper and a little salt.,\n Cut each chicken breast into three fillets lengthwise and season all over with salt and pepper. Heat the remaining oil in the frying pan, and fry the chicken fillets quickly until browned, about 6-8 mins.,\n Roll out two-thirds of the pastry to line a 20-23cm springform or deep loose-based tart tin. Press in half the sausage mix and spread to level. Then add the chicken pieces in one layer and cover with the rest of the sausage. Press down lightly.,\n Roll out the remaining pastry. Brush the edges of the pastry with beaten egg and cover with the pastry lid. Pinch the edges to seal, then trim. Brush the top of the pie with egg, then roll out the trimmings to make holly leaf shapes and berries. Decorate the pie and brush again with egg.,\n Set the tin on a baking sheet and bake for 50-60 mins, then cool in the tin for 15 mins. Remove and leave to cool completely. Serve with a winter salad and pickles.",
               category: "Dessert",
               datePublished: "2022-09-23",
               url: "https://www.bbcgoodfood.com/recipes/2793/christmas-pie"
              ),
        Recipe(name: "Smoked salmon souffl",
               image: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-411625_12-e1367fb.jpg?quality=90&webp=true&resize=440,400",
               description: "These non-scary, freezer-friendly souffl can be baked ahead, then reheated in the oven before serving",
               
               ingredients: "40g butter,\n 25g plain flour,\n 300ml milk,\n 85g Philadelphia cheese,\n 2 tsp chopped dill,\n 3 large eggs, separated,\n 85g smoked salmon, chopped,\n zest  lemon,\n 6 tsp cr ,\n 2 large slices smoked salmon,\n dillsprigs",
               directions: "Put the butter, flour and milk in a pan and cook, stirring over the heat until thickened. Stir in the cheese, in small spoonfuls, and the dill; season to taste, then beat to incorporate.,\n Heat oven to 200C/180C fan/gas 6. Butter 6 x 150ml souffl dishes and line the base with baking paper. Stir the egg yolks into the sauce, add the chopped salmon and lemon. Whisk the egg whites until stiff, then carefully fold into the salmon mix. Spoon into the dishes and bake in a tin half-filled with cold water for 15 mins until risen and golden. Cool; don worry if they sink.,\n To freeze, cool completely, then overwrap the dishes with baking paper and foil. They will keep in the freezer for 6 weeks. Thaw for 5 hrs in the fridge.,\n When ready to serve, very carefully turn the souffl out of their dishes, peel off the lining paper and place on squares of baking paper. Top with the  and bake for 10-15 mins at 200C-180C fan-gas 6 until the souffl start to puff up. Quickly top each with a frill of salmon and a dill sprig. Serve on their own or with some dressed salad leaves.",
               category: "Main",
               datePublished: "2022-08-21",
               url: "https://www.bbcgoodfood.com/recipes/13382/smoked-salmon-souffls"
              ),
        Recipe(name: "Creamed leek tart",
               image: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-90451_11-829d395.jpg?quality=90&webp=true&resize=440,400",
               description: "A creamy tart from MasterChef judge John Torode that makes a great centrepiece at any time of year",
               ingredients: "300g plain flour, plus extra for dusting,\n 140g unsalted butter, cut into small pieces, plus extra for greasing\n, 1 medium egg,\n 4 tbsp iced water,\n 85g unsalted butter,\n 800g leek, sliced lengthways then into 2 cm/1in pieces,\n  tbsp plain flour,\n 300ml milk,\n 200ml double cream,\n 2 medium eggs,\n 4 medium egg yolks, beaten together with the other eggs\n, 100g gruyre, grated,\n 1 tsp English mustard",
               directions: "Pulse the flour and butter in a food processor until you have fine crumbs. Add the egg yolk and water, and bring together into a ball. Do not knead. Roll the pastry in cling film and chill for at least 1 hr.,\n Meanwhile, heat the butter in a pan, then add the leeks. Cook over a low heat for 20-25 mins until soft, stirring often. Season to taste. Stir in the flour, cook for 3-4 mins, stirring, then stir in the milk and cream. Once smooth, simmer for 15 mins to cook out the flour. Season well, then cool. If making ahead, cover the surface with cling film and chill for up to 2 days. Stir the eggs and egg yolks into the mix, along with the grated cheese and the mustard.,\n Heat oven to 190C/170C fan/gas 5. Roll out the pastry on a floured surface to about 5mm/in thick, and gently lay it over a 23cm loose-bottomed tart tin. Using a small ball of pastry to help, gently press the pastry into the sides of the tin. Trim, leaving a slight overhang. Line the pastry with baking paper, fill with baking beans, then bake for 15 mins. Remove the beans and paper, and bake for 10 mins more or until golden and biscuity. Cool on a wire rack. Turn oven down to 180C/160C fan/gas 4.,\n Spoon the leek mix into the case and smooth the top. Bake for 30 mins until set and golden. Rest the tart for 15-20 mins before you slice it, and serve warm. If making ahead, chill the tart. Once cooled, for up to 2 days, or freeze for a week. Defrost in fridge, then warm in the oven for 20 mins before serving.",
               category: "Dessert",
               datePublished: "2022-09-09",
               url: "https://www.bbcgoodfood.com/recipes/47615/creamed-leek-tart"
              ),
        Recipe(name: "Orange & tarragon roast turkey",
               image: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-849477_11-97d729b.jpg?quality=90&webp=true&resize=440,400",
               description: "Roasting your Christmas turkey with a flavoured butter locks in moisture for a zesty, juicy finish ready to garnish with trimmings",
               ingredients: "5-5 kg/11-12lb turkey,rinsed and dried,\n 100g butter, softened,\n 1 orange,\n 15g pack tarragon, 2 tbsp finely chopped, rest tied in a bunch with string,\n 2 garlic cloves, crushed,\n 1 onion, quartered,\n 150ml dry white wine,\n sage or tarragonsprigs, to serve",
               directions: "Heat oven to 180C/160C fan/gas 4. Line a roasting tin with a very generous length of double-thickness foil. Weigh the turkey to calculate the cooking time, allowing 40 mins per kg for the first 4kg, then 50 mins for every kg over that weight (a turkey this size should take 3-4 hrs).,\n Put the butter in a bowl and finely grate the zest from the orange on top. Add the chopped tarragon, garlic and seasoning and mix well. You can make this 3 days ahead.,\n Gently push your fingers under the turkey skin, starting from the neck end of the bird, easing the skin away from the breast and the top of the drumsticks. Now spread the flavoured butter under the skin, taking care not to tear it. You won be able to reach all the way down to the drumsticks, but you can ease the butter along by smoothing it through the skin. Quarter the orange and tuck into the turkey cavity with the onion and the bunch of tarragon (step-by-step). You can do this the night before.,\n Season the turkey with salt and pepper, then lift it onto the foil-lined roasting tin. Pour the wine into the cavity of the turkey, then bring up the sides of the foil and cover the top of the bird with a layer of foil. Roast according to your calculated time.,\n Thirty mins before the end of cooking time, remove the foil from the top of the turkey and add the potatoes to the oven.,\n To test if the turkey is cooked, pierce the fattest part of the thigh with a skewer  the juices that run out should be clear, not pink. If they are pink, continue to roast, checking at 10-min intervals.,\n Remove the turkey, transfer to a warm serving platter and let it rest, covered loosely with the foil, for 30-40 mins before carving. Meanwhile, turn up the oven to 200C/180C fan/gas 6 and cook the potatoes for 30 mins more, with the stuffing and sausages. Serve the turkey decorated with herbs.",
               category: "Main",
               datePublished: "2021-09-27",
               url: "https://www.bbcgoodfood.com/recipes/1837661/orange-and-tarragon-roast-turkey"
              ),
        Recipe(name: "Cranberry, sprout & pecan pilaf",
               image: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/cranberry-spout-pecan-pilaf-5968512.jpg?quality=90&webp=true&resize=440,400",
               description: "This Persian inspired spiced rice dish makes a hearty vegetarian main, a side dish to roast meats, or an attractive addition to a Boxing Day buffet",
               ingredients: "200g mixed basmati & wild rice,\n 5 tbsp rapeseed or olive oil,\n 1 large onion, finely sliced,\n thumb-sized piece ginger, peeled and cut into chunks,\n 2 garlic cloves,\n small bunch coriander, stalks roughly chopped, leaves chilled for later,\n 2 tsp ground cumin,\n 2 tsp ground coriander,\n 1 tsp turmeric,\n 1 tsp ground cinnamon,\n  tsp ground allspice,\n juice and zest 1 lemon,\n 500g Brussels sprouts, half finely sliced, the rest halved through the stalk,\n 100g pecans,\n 100g fresh cranberries,\n 50g dried cranberries,\n 50g butter,\n natural yogurt, to serve",
               directions: "Put the rice in a bowl, cover with cold water and leave to soak for 1 hr. Meanwhile, heat 2 tbsp oil in a large pan, add the onion and cook for 10 mins, stirring now and then, until caramelised. While the onion cooks, whizz the ginger, garlic, coriander stalks, spices, lemon juice and zest to a paste in the small bowl of a food processor. Tip into the pan and fry for 5 mins more until aromatic. Scoop the paste and onion out of the pan and set aside, then heat 1 tbsp more oil. Add the sliced sprouts and cook for 8-10 mins, stirring, until softened. Add the paste back to the pan and cook everything together for 1 min more.,\n When the rice has had its soaking time, drain and tip into a pan, cover with fresh water and season with salt. Simmer for 5 mins until just softening, then drain.,\n Heat oven to 200C/180C fan/gas 6. Put the halved sprouts in a roasting tin with 1 tbsp oil and season well. Roast for 20-25 mins, shaking the pan now and then, until the edges are starting to brown and the sprouts are tender.,\n Meanwhile, mix the rice in the pan with the sliced sprouts, the onion and paste. Add the pecans and all the cranberries, season and mix well. Heat the butter and remaining oil in the pan you cooked the rice in, then tip in the rice mixture and flatten the surface. Poke 3 steam holes in the rice with a wooden spoon, and turn the heat to almost its lowest setting. Cover the pan with a tea towel, then a lid, and cook for 20 mins until the rice is cooked through - if it is still a little firm to bite, re-cover and cook for a further 5 mins. To serve, tip the cooked rice onto a serving platter, mixing any crunchy bits from the bottom of the pan. Scatter over the roasted sprouts and coriander leaves, and serve with a pot of natural yogurt.",
               category: "Salad",
               datePublished: "2021-09-21",
               url: "https://www.bbcgoodfood.com/recipes/cranberry-sprout-pecan-pilaf"
              ),
        Recipe(name: "Bourbon-glazed pork belly chunks",
               image: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-1155563_10-8b90527.jpg?quality=90&webp=true&resize=440,400",
               description: "Your guests will snap up these cubes of crispy belly pork in sticky, sweet whiskey marinade with soy, anise and honey flavours",
               ingredients: "200ml bourbonwhiskey,\n 1 star anise,\n 800g pork belly,\n 4 tbsp tomato ketchup,\n 2 tbsp soy sauce,\n 2 tbsp clear honey,\n chives and soured cream, to serve (optional)",
               directions: "Heat oven to 160C/140C fan/gas 3. Pour 100ml of the bourbon into a small, shallow roasting tin and add the star anise. Season the pork belly, put in the tin and cover tightly with foil. Bake for 3 hrs. Remove from the oven and leave to cool for at least 1 hr. You can chill the pork for up to 2 days at this stage.\nHeat oven to 200C/180C fan/gas 6. Remove the pork from the tin. Using a small, sharp knife, pare away the rind from the meat, leaving a small layer of fat. Cut the meat into 2cm chunks and return to the tin. Roast for 20 mins until crisp and sizzling, turning regularly.\n Meanwhile, tip the ketchup, soy sauce, honey and remaining bourbon into a small pan. Set over a high heat and bubble for 5 mins until thick and syrupy. Pour over the chunks of pork and toss to coat. Roast for 10 mins more until sticky.,\n Snip the chives into the sour cream, if you like, and serve alongside the pork chunks with cocktail sticks.",
               category: "Appetizer",
               datePublished: "2022-09-07",
               url: "https://www.bbcgoodfood.com/recipes/2760973/bourbonglazed-pork-belly-chunks"
              ),
        Recipe(name: "Mojito recipe",
               image: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/mojito-cocktails-150961e.jpg?quality=90&webp=true&resize=430,390",
               description: "Italian Cream Soda Serves:1\nCarbsPerServing:1 gram Prep Time:About 2 min.\nEffort:Easy\nIngredients:\nOne Tall Glass Full of Ice\n1 Table Spoon Cream or Half and HalfOne Can Club Soda Chilled if You\nWant\nYour Choice Torani Sugar Free Syrup\nHow to Prepare:\nPut ice into glass. Mix cream and syrup in small glass before\npouring into tall glass( do this or the cream will get a weird\ntexture.) Pour cream mixture into glas, then add club soda, mix.\nTa-daa, now you have a very grubbinesque soda. http://www.weightlosseasy.tips/beverages.html",
               ingredients: "juice of 1 lime,\n 1 tsp granulated sugar,\n small handful mintleaves, plus extra sprig to serve,\n 60ml white rum,\n soda water, to taste",
               directions: "Muddle the lime juice, sugar and mint leaves in a small jug, crushing the mint as you go  you can use the end of a rolling pin for this. Pour into a tall glass and add a handful of ice.,\n Pour over the rum, stirring with a long-handled spoon. Top up with soda water, garnish with mint and serve.",
               category: "Drink",
               datePublished: "2021-05-23",
               url: "https://www.bbcgoodfood.com/recipes/mojito"
              )
    ]
}
    
