//
//  RecipeModel.swift
//  RecipeSaver
//
//  Created by Joann Myung on 4/9/23.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    
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
    //read the string not the case itself
    let category: Category.RawValue
    let datePublished: String
    let url: String
    let favorites: Bool = false
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
        name: "Blueberry Farro Grain Bowl", image: "https://www.forksoverknives.com/wp-content/uploads/blueberry-farro-salad-wordpress.jpg", description: "Blueberries bring refreshing bursts of sweetness to this colorful bowl. Farro, an ancient grain and a cousin of modern wheat berries, makes a satisfying base. For a gluten-free version, you can use sorghum in place of farro.", ingredients: "½ cup dry farro \n1 cup fresh blueberries \n1 cup fresh or thawed frozen corn \n1cup halved cherry tomatoes \n1 cup finely chopped red or orange bell pepper \n1 small bulb fennel, trimmed and shaved \n1 scallion, thinly sliced \n8 to 10 fresh basil leaves, finely chopped \n2 tablespoons white rice vinegar Sea salt and freshly ground black pepper, to taste \n1 tablespoon toasted pine nuts (optional)", directions: "In a medium saucepan combine farro and 1½ cups water. Bring to boiling; reduce heat. Cover and simmer 15 to 20 minutes or until farro is just tender. Drain any excess water. Transfer farro to a large bowl; let cool. \n \nTo cooled farro, add the next seven ingredients (through basil). Add vinegar and season with salt and black pepper; toss to combine. If desired, garnish with pine nuts.", category: "Side", datePublished: "2021-05-14", url: "https://www.forksoverknives.com/recipes/amazing-grains/blueberry-farro-grain-bowl/"
        ),
        Recipe(

            name: "10-Minute Sage and Mushroom Tartine",
            image: "https://www.forksoverknives.com/wp-content/uploads/Sage-and-Mushroom-Tartine-wordpress.jpg",
            description: "Tartines are French open-faced sandwiches that feature thick slices of crusty bread piled high with delicious toppings. This 10-minute recipe utilizes the quick-cooking abilities of a microwave to speed up the process without skimping on flavor. Umami-rich mushrooms join forces with flavorful sun-dried tomatoes, sweet shallots, and creamy cannellini beans to create a hearty and satisfying mixture that’s bound to make your mouth water. The combination of using both dried and fresh sage heightens the earthy flavors of the mushrooms by giving them a bright, herbal kick (if you don’t have fresh sage on hand, usually only dried sage is fine). Spoon everything onto your favorite bread, then use a knife and fork to dig into this tasty toast.",
            ingredients: "2 cups halved fresh button mushrooms ¼ cup rinsed and drained canned cannellini beans 2 sun-dried tomatoes (not oil-packed), chopped 2 tablespoons unsweetened, unflavored plant-based milk 1 tablespoon finely chopped shallot or onion ½ teaspoon soy sauce ¼ teaspoon dried rubbed sage or ½ teaspoon chopped fresh sage 1 large slice artisan whole grain bread Fresh sage leaves (optional)",
            directions: "In a medium microwave-safe bowl combine the first seven ingredients (through sage). Cover and microwave on high 3 to 4 minutes, stirring once halfway through cooking time. Meanwhile, toast the bread. Spoon mushroom mixture over toasted bread. Garnish with fresh sage leaves (if using).",
            category: "Main",
            datePublished: "2023-02-22",
            url: "https://www.forksoverknives.com/recipes/vegan-burgers-wraps/10-minute-sage-and-mushroom-tartine/"

        ),
        
        Recipe(
        
        name: "The Great Purple Sweet Potato Pie",
        image: "https://www.forksoverknives.com/wp-content/uploads/The-Great-Purple-Pie-wordpress.jpg",
        description: "There’s a reason that purple is the color of royalty: This gorgeous, flavor-packed sweet potato pie is truly majestic. A zesty blueberry sauce dials up the vibrancy of this decadent dessert, but the deep purple hue comes primarily from purple sweet potatoes in the filling. Their creamy composition makes for a velvety smooth texture, and their subtle sweetness is enhanced with lime zest and a little sugar. The homemade pie crust, which features the warming flavors of walnuts and cinnamon, provides the perfect base for the no-bake filling. Simply chill it in the fridge, add the blueberry sauce, and give yourself the royal treatment by enjoying a big slice.",
        ingredients: "1 cup oat flour or whole wheat flour 1 cup walnuts 3 tablespoons pure cane sugar 1 tablespoon brown or golden flaxseed meal ½ teaspoon regular or sodium-free baking powder ¼ teaspoon ground cinnamon ⅛ teaspoon sea salt 1 ½ lb. purple sweet potatoes ¾ cup unsweetened, unflavored plant-based milk ¼ cup + 2 tablespoons pure cane sugar or pure maple syrup 3 tablespoons lime juice (preferably from Key limes) 1½ tablespoons lime zest 1 cup fresh or frozen blueberries 1 tablespoon pure cane sugar or pure maple syrup  1 tablespoon lime zest",
        directions: "Preheat oven to 350°F. Line the bottom of a 10-inch springform pan with parchment paper. For crust, in a food processor combine the first seven ingredients (through salt). Process until combined and nuts are ground. Add 2 tablespoons water; pulse to incorporate. The mixture will be crumbly, but it should bind when pinched between your fingers. If it doesn’t, add another 1 tablespoon water and pulse to combine. Spoon mixture into prepared pan. Use the bottom of a bowl or a ladle to press it evenly into bottom of pan. Bake 20 minutes. Transfer to a wire rack and let cool to room temperature. For filling, place the whole sweet potatoes in a steamer basket in a large saucepan. Add water to saucepan to just below basket. Bring to boiling. Steam, covered, 15 minutes or until tender when pierced with a fork. Place sweet potatoes under cold running water to cool. When cool enough to handle, slip off and discard the peels. Transfer sweet potatoes to a bowl, lightly mash them, then transfer to a food processor. Add milk, sugar, lime juice, and lime zest; process until smooth. Spoon filling over cooled crust and smooth with a spatula. Chill at least 1 hour before serving. For Blueberry Sauce, in a small saucepan combine blueberries, sugar, and 3 tablespoons water. Bring to boiling; reduce heat. Simmer, uncovered, 3 minutes or until blueberries begin to break down and the liquid is syrupy. Remove from heat. Stir in lime zest. To serve, release sides of springform pan from pie. Top pie with Blueberry Sauce.",
        category: "Dessert",
        datePublished: "2023-04-03",
        url: "https://www.forksoverknives.com/recipes/vegan-desserts/purple-sweet-potato-pie/"
        ),
        
        Recipe(
            name: "Lemon-Glazed Oatmeal Snack Cakes",
            image: "https://www.forksoverknives.com/wp-content/uploads/Lemon-Glazed-Oatmeal-Snack-Cakes-wordrpess.jpg",
            description: "A bright lemon glaze coats these clove-scented snack cakes to make them perfect for an afternoon nibble. The oat flour base provides a tender, chewy texture that’s a cross between a cookie and a muffin so you get the best of both worlds. Each bite-size cake is infused with lemon zest and lemon extract to double down on the refreshing citrus flavor while a touch of vanilla adds mellow warmth. Naturally sweetened with dates, applesauce, and maple syrup, these tasty treats are a healthy way to indulge your sweet tooth!",
            ingredients: "1½ cups rolled oats 2 teaspoons baking powder ¼ teaspoon sea salt ¼ teaspoon ground cloves 1¼ cups unsweetened, unflavored plant milk ½ cup coarsely chopped Medjool dates, soaked ½ cup unsweetened applesauce 4 tablespoons pure maple syrup 1 tablespoon flaxseed meal 1 teaspoon lemon zest 1 teaspoon pure vanilla extract ¼ teaspoon  pure lemon extract 1 tablespoon lemon juice Thin lemon slices and/or fresh raspberries, for garnish (optional)",
            directions: "Preheat oven to 350°F. Line bottoms of twelve 2½-inch muffin cups with parchment paper, or use silicone muffin cups. Place oats in a food processor. Pulse well to achieve a flour-like consistency. Pour into a large bowl. Stir in baking powder, salt, and cloves. In the food processor combine milk, dates, applesauce, 2 tablespoons of the maple syrup, the flaxseed meal, lemon zest, vanilla, and lemon extract. Process until smooth. Add to oat mixture. Stir just until oats are moistened. Pour into prepared muffin cups, filling each two-thirds full. Bake 20 to 25 minutes or until a toothpick inserted in the center comes out clean. Let stand in cups 10 minutes. Remove cakes from cups and place on a wire rack set over waxed paper. Meanwhile, stir together the remaining 2 tablespoons maple syrup and the lemon juice. Brush glaze over warm cakes. If you like, top with lemon slices and/or fresh raspberries. Serve warm.",
            category: "Dessert",
            datePublished: "2022-12-13",
            url: "https://www.forksoverknives.com/recipes/vegan-desserts/lemon-glazed-oatmeal-snack-cakes/"
        ),
        
        Recipe(
            name: "Cheesy Vegan Potato Casserole",
            image: "https://www.forksoverknives.com/wp-content/uploads/Hash-Brown-Pie-wordpress.jpg",
            description: "Transform ordinary steamed potatoes into this comforting hash brown–inspired pie for two. Chopped potatoes are smothered in a creamy, cheesy sauce that gets its heavenly flavor from a mixture of nutritional yeast, smoky paprika, and nutty tahini. Mashed cannellini beans create a deliciously smooth texture and chopped chives add herbal brightness. If you want to get fancy, feel free to add sautéed onions and bell peppers to the mix before serving in generous wedges. Enjoy this hash brown pie on its own or alongside fresh fruit and waffles for a plant-based brunch feast.",
            ingredients: "1 lb. Yukon Gold potatoes, scrubbed (about 5) 1 tablespoon apple cider vinegar 1½ teaspoons tahini 1½ tablespoons unsweetened, unflavored plant-based milk 1½ teaspoons nutritional yeast ¼ teaspoon smoked paprika ¼ teaspoon sea salt ⅓ cup cooked or canned cannellini beans, rinsed and drained 2 tablespoons chopped fresh chives (optional) Freshly ground black pepper, to taste",
            directions: "Preheat oven to 450°F. Place whole potatoes in a steamer basket in a large saucepan. Add water to saucepan to just below basket. Bring to boiling. Steam, covered, 10 to 15 minutes or until tender. (To steam potatoes in the microwave, prick each potato several times with a fork. Place on a plate and microwave on high 5 minutes. Turn potatoes over; microwave 5 minutes more.) Let cool, then roughly chop. Meanwhile, in a large bowl whisk together vinegar and tahini. Whisk in milk, nutritional yeast, smoked paprika, and salt. Add beans; use a spoon or spatula to mash gently and combine. Stir chopped potatoes and chives (if using) into bean mixture. Transfer potato mixture to a 9-inch pie plate; press evenly into dish. Season with black pepper. Bake 15 minutes or until golden. Remove from oven; let cool 5 minutes. Cut into wedges. Serve hot.",
            category: "Breakfast",
            datePublished: "2023-02-09",
            url: "https://www.forksoverknives.com/recipes/vegan-breakfast/cheesy-vegan-potato-casserole/"

        ),
        
        Recipe(
        
            name: "Creamy Chickpea Pasta Primavera",
            image: "https://www.forksoverknives.com/wp-content/uploads/creamy-chickpea-pasta-wordpress.jpg",
            description: "This hunger-busting creamy chickpea pasta is bursting with fresh produce and comes together in just 25 minutes. Sweet green peas, juicy tomatoes (both fresh and sun-dried), and crunchy snow pea pods are tossed in a velvety hummus-based sauce and sprinkled with aromatic garlic scapes. (If you can’t find garlic scapes, substitute chives in Step 2.) Whole chickpeas add extra substance, while a sprinkle of cayenne pepper brings the heat. This dish is extremely versatile, so feel free to swap out the veggies for whatever fresh produce you have on hand. Make a big pot of this as meal prep for the rest of the week and enjoy alongside a simple salad for a veg-forward feast.",
            ingredients: "1 8.8-oz. package dry chickpea rotini 2 cups fresh or frozen peas ½ cup sliced garlic scapes or 3 tablespoons chopped fresh chives ⅔ cup oil-free hummus 1 15-oz. can no-salt-added chickpeas, rinsed and drained (1½ cups) ⅓ cup chopped sun-dried tomatoes (not oil-packed) ¼ teaspoon sea salt ⅛ teaspoon ground cayenne pepper 1 cup quartered cherry tomatoes ½ cup slivered fresh snow pea pods",
            directions: "Cook pasta according to package directions; reserve ½ cup pasta cooking water. Place peas and garlic scapes (if using) in a colander set in the sink. Drain pasta into colander; return pasta, peas, and garlic scapes to pot. Add hummus, chickpeas, sun-dried tomatoes, chives (if using), salt, and cayenne pepper to pasta. Toss to coat, adding pasta cooking water a little at a time as needed to make sauce creamy. Serve topped with cherry tomatoes and snow pea pods.",
            category: "Snacks",
            datePublished: "2023-04-04",
            url: "https://www.forksoverknives.com/recipes/vegan-pasta-noodles/creamy-chickpea-pasta-primavera/"
          





        ),
    ]
}


