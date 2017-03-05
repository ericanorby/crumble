# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all

norbsie = User.create(username: "norbsie", email: "erica@email.com", password: "helloworld")

shephards_pie = Recipe.create(author: norbsie.username, name: "Shephard's Pie w/ Cauliflower", web_source: "https://www.tastemade.com/shows/healthy-af/shepherds-pie-with-cauliflower-mash", photo_url: "http://www.ovenloveblog.com/wp-content/uploads/2013/09/sheppie5.jpg", servings: 6, total_cost: 15, difficulty: "easy", directions: "	1. Preheat the oven to 400 degrees. Grease a casserole dish and set aside.
	2. In a large pot, steam or boil cauliflower until tender.
	3. Heat 2 tablespoons of oil in a large skillet over medium high heat. Add the onion, celery, carrots and garlic and cook for 5 minutes.
	4. Add the ground beef to the pan and cook until browned. Add the parsley and season with salt and pepper. Let simmer while you prepare the cauliflower topping.
	5. Drain the cooked cauliflower. Mash or puree with a blender until smooth. Add 2 tablespoons of fat and season with salt and pepper.
	6. To assemble, spread the beef mixture on the bottom of the dish. Top with the cauliflower mixture and smooth with a spoon.
Bake for 30 minutes or until the top is brown and bubbly. Serve warm.")
egg_muffin = Recipe.create(author: norbsie.username, name: "Bacon & Veggie Egg Muffins", web_source: "https://mymealprepsunday.com/2016/03/06/bacon-veggie-egg-muffins/", photo_url: "https://farm8.staticflickr.com/7346/16593215412_81d3eecf0d_c.jpg", servings: 16, total_cost: 20, difficulty: "easy", directions: "	1. Grease a muffin tin and preheat oven to 375 F.
	2. Cook bacon fully.
	3. Chop onion, pepper, and spinach.
	4. Whisk 7 eggs.
	5. Add cottage cheese, veggies, spices, and bacon. Mix.
	6. Pour the mixture into muffin tins and top with cheddar cheese.
Bake for 20-25 minutes or until fully cooked. Tip: Poke a knife in the center – if it comes out clean, it’s done!")
pb_bars = Recipe.create( author: norbsie.username, name: "Peanut Butter Trail Mix Bars", web_source: "http://sallysbakingaddiction.com/2012/12/15/peanut-butter-trail-mix-bars/", photo_url: "http://sallysbakingaddiction.com/wp-content/uploads/2012/12/No-Bake-Healthy-Peanut-Butter-Trail-Mix-Bars-everyone-will-love-these.jpg", servings: 16, total_cost: 25, difficulty: "medium", directions: "Line an 8×8 baking pan with parchment paper. Leave extra on the sides to use as handles for removing the bars when they are finished. Set aside.
In a food processor (or blender), pulverize the almonds and cashews for about 10 seconds into small pieces, leaving some large chunks in tact. In a large bowl, combine the oats, ground flax, crushed nuts, chocolate chips, dried cranberries, and raisins. Mix thoroughly. Set aside.
Mix together melted peanut butter and honey in a small bowl and pour over the dry ingredients. Mix until each bit is fully coated. Scoop the mixture into prepared baking dish and press firmly until the tops are completely even. You'll want to pack it down nice and tight.
Place bars into the refrigerator to set up for at least one hour. Cut into 16 squares. Bars can be stored at room temperature for up to 1 week, in the refrigerator for up to 2 weeks, or in the freezer for up to 3 months. Thaw overnight in the refrigerator.")
chickpea = Recipe.create(author: norbsie.username, name: "Curried Cauliflower Chickpea Wraps", web_source: "http://themuffinmyth.com/2015/03/05/curried-cauliflower-chickpea-wraps/", photo_url: "http://themuffinmyth.com/wp-content/uploads/2015/03/curried_cauliflower_wraps_3.jpg", servings: 6, total_cost: 30, difficulty: "hard", directions: "	1. Start with breaking down the cauliflower into large chunks.
	2. Place cauliflower chunks into a pot, cover with water, add a pinch of salt, and bring to the boil over high heat. Reduce to a simmer, cover, and simmer until cauliflower is tender (but not mushy!) about 15-20 minutes.
	3. Drain the cauliflower, and using a potato masher, mash it roughly. There should still be some chunks, but mostly mashed. Set this aside to cool a bit.
	4. While the cauliflower is boiling, set a large pot over medium-high heat. This is the pot in which you'll mix everything together in the end, so make sure it's large enough!
	5. Add the olive oil to the pot to heat, then add the onions and sauté for 5-7 minutes, until they're just beginning to brown.
	6. Add the ginger and sauté for a minute more.
	7. Reduce the heat to medium, and then add the salt, garam masala, and cayenne, and sauté for one minute.
	8. Add the mashed cauliflower, chickpeas, and cilantro and stir well, cooking for 3-5 minutes more.
	9. Remove from heat, and let cool slightly.
	10. To make the garlic yoghurt sauce (if using) whisk together plain yoghurt, crushed garlic, and add salt and pepper to taste.
	11. Spoon about ⅙th of the filling into the center of each tortilla. Fold one side over towards the center, fold the edges in, and roll up like a burrito.
Serve with garlic yoghurt sauce if desired.")
salmon = Recipe.create(author: norbsie.username, name: "Maple Glazed Salmon", photo_url: "http://cdn.skim.gs/image/upload/v1456343513/msi/maple-glazed-salmon_gi9pua.jpg", servings: 4, total_cost: 25, difficulty: "easy", directions: "In a small bowl, mix the maple syrup, soy sauce, garlic, garlic salt, and pepper.
Place salmon in a shallow glass baking dish, and coat with the maple syrup mixture. Cover the dish, and marinate salmon in the refrigerator 30 minutes, turning once.
Preheat oven to 400 degrees F (200 degrees C).
Place the baking dish in the preheated oven, and bake salmon uncovered 20 minutes, or until easily flaked with a fork.")
pasta = Recipe.create(author: norbsie.username, name: "Buffalo Chicken Cheesy Pasta", web_source: "http://whitneybond.com/2012/02/23/whats-for-lunch-buffalo-chicken-cheesy-penne/", photo_url: "http://whitneybond.com/wp-content/uploads/2012/02/IMG_1420.jpg", servings: 4, total_cost: 18, difficulty: "medium", directions: "Heat a large skillet over medium heat.
Add the cream cheese, buffalo sauce and chicken broth.
Whisk until creamy.
Add the paprika, garlic powder, black pepper and salt.
Stir to combine
Add the blue cheese dressing.
Stir to combine
Add the shredded chicken.
Allow the sauce to simmer for 10 minutes over low heat.
In the meantime, boil a large pot of water and cook the penne pasta according to package directions, drain, add to the cheesy buffalo chicken sauce and stir to combine.")
# pad_thai = Recipe.create(author: norbsie.username, name: "Pad Thai", web_source: "http://www.peanutbutterrunner.com/the-best-easy-homemade-pad-thai-recipe/", photo_url: "https://i2.wp.com/www.peanutbutterrunner.com/wp-content/uploads/2015/04/Homemade-Pad-Thai-Recipe.jpg", servings: 3, total_cost: 25, difficulty: "medium", directions: "Whisk together sauce ingredients and set aside.
# Cook noodles according to package direction. Rinse and set aside in a colander.
# Preheat a skillet over medium heat and add oil. Add chicken breast and cook until browned and mostly cooked through. Push the chicken over to one side of the skillet and pour the beaten egg into the skillet in the space you've created and use your cooking spatula to scramble the egg in the skillet. Add the shrimp and keep cooking for about another minute.
# Add the noodles to the skillet and then pour the sauce over the noodles. You might want to reduce the heat a little at this point to more like medium-low. The mixture will be saucy at first but let it cook for another 3-5 minutes, stirring frequently. The noodles and proteins will soak up the sauce and it will thicken. Stir the bean sprouts in once everything has thickened and remove from heat. Use a pasta sever to scoop the noodle mixture from the skillet and into shallow bowls (or onto plates).
# Top with desired toppings and adjust spice level with Sriracha." )
# burrito = Recipe.create(author: norbsie.username, name: "Freezer Breakfast Burritos", web_source: "http://www.thekitchn.com/how-to-make-freezer-friendly-breakfast-burritos-234556", photo_url: "http://atmedia.imgix.net/d94c6c6669d456660950646b4ae0cf730854b470?w=1500&fit=max", servings: 12, total_cost: 40, difficulty: "medium", directions: "Heat the oven: Arrange a rack in the middle of the oven and heat to 400°F. Prepare space in the freezer for a baking sheet.
# Roast your vegetables: Combine the potatoes, peppers, and onions together in a medium bowl. Drizzle with the oil and 1/2 teaspoon of the salt, and toss to coat. Transfer to an even layer on a baking sheet and roast until the potatoes are tender, about 20 minutes.
# Cook your eggs: While the veggies roast, whisk together the eggs, milk, and remaining 1/2 teaspoon salt until combined. Melt the butter in a 10-inch skillet (cast iron or nonstick would be ideal) over medium heat. Add the eggs and cook, stirring occasionally, until mostly set but still moist, 4 to 5 minutes. Remove from the heat.
# Assemble the burritos: Let the eggs and roasted vegetables cool while you set up an assembly station — the eggs and vegetables should be room temperature for best assembly. Tear off 12 squares of aluminum foil. Have your cheese and tortillas standing by. Place a tortilla on top of a piece of foil. Sprinkle 2 tablespoons of cheese onto the tortilla. Top the cheese with 1/4 cup roasted vegetables, followed by 2 heaping tablespoons of the scrambled eggs, and any extra toppings.
# Fold the burritos: Roll the burrito tightly by folding the sides over the filling, then rolling from the bottom up.
# Wrap and freeze: Wrap the burrito tightly in the aluminum foil and repeat with filling and folding the remaining burritos. Freeze the burritos in a single layer on a baking sheet — they'll freeze faster and more uniformly this way. Store frozen burritos in a gallon-sized zip-top freezer bag for longer-term freezing.
# To eat: Unwrap and microwave on high for 1 to 2 minutes, until warmed through, or heat in a regular or toaster oven at 350°F for 12 to 15 minutes.")

Ingredient.create(name: "Cauliflower", amount: 2, measurement: "head", calories: 292, recipe: shephards_pie)
Ingredient.create(name: "Olive oil", amount: 2, measurement: "tbsp", calories: 238, recipe: shephards_pie)
Ingredient.create(name: "Onion", amount: 1, measurement: nil, calories: 44, recipe: shephards_pie)
Ingredient.create(name: "Celery", amount: 4, measurement: "ribs", calories: 16, recipe: shephards_pie)
Ingredient.create(name: "Carrots", amount: 4, measurement: nil, calories: 100, recipe: shephards_pie)
Ingredient.create(name: "Garlic", amount: 4, measurement: "cloves", calories: 16, recipe: shephards_pie)
Ingredient.create(name: "Turkey", amount: 2, measurement: "lbs", calories: 1080, recipe: shephards_pie)
Ingredient.create(name: "Parsley", amount: 4, measurement: "tbsp", calories: 10, recipe: shephards_pie)
Ingredient.create(name: "Butter", amount: 4, measurement: "tbsp", calories: 408, recipe: shephards_pie)

Ingredient.create(name: "Onion", amount: 1, measurement: nil, calories: 44, recipe: egg_muffin)
Ingredient.create(name: "Red bell pepper", amount: 1, measurement: nil, calories: 37, recipe: egg_muffin)
Ingredient.create(name: "Spinach", amount: 2, measurement: "cups", calories: 14, recipe: egg_muffin)
Ingredient.create(name: "Eggs", amount: 7, measurement: nil, calories: 546, recipe: egg_muffin)
Ingredient.create(name: "Cottage Cheese", amount: 2, measurement: "cups", calories: 354, recipe: egg_muffin)
Ingredient.create(name: "Turkey Bacon", amount: 5, measurement: "strips", calories: 210, recipe: egg_muffin)

Ingredient.create(name: "Almonds", amount: "2/3", measurement: "cup", calories: 554, recipe: pb_bars)
Ingredient.create(name: "Cashews", amount: "2/3", measurement: "cup", calories: 505, recipe: pb_bars)
Ingredient.create(name: "Rolled oats", amount: "1 1/2", measurement: "cup", calories: 450, recipe: pb_bars)
Ingredient.create(name: "Ground flax", amount: "1/3", measurement: "cup", calories: 256, recipe: pb_bars)
Ingredient.create(name: "Dried cranberries", amount: "1/3", measurement: "cup", calories: 123, recipe: pb_bars)
Ingredient.create(name: "Raisins", amount: "1/3", measurement: "cup", calories: 143, recipe: pb_bars)
Ingredient.create(name: "Honey", amount: "1/2", measurement: "cup", calories: 515, recipe: pb_bars)
Ingredient.create(name: "Peanut butter", amount: 1, measurement: "cup", calories: 1518, recipe: pb_bars)

Ingredient.create(name: "Cauliflower", amount: 1, measurement: "head", calories: 100, recipe: chickpea)
Ingredient.create(name: "Olive oil", amount: 3, measurement: "tbsp", calories: 300, recipe: chickpea)
Ingredient.create(name: "Yellow onion", amount: 1, measurement: "medium", calories: 80, recipe: chickpea)
Ingredient.create(name: "Ginger", amount: 1, measurement: "tbsp", calories: 30, recipe: chickpea)
Ingredient.create(name: "Garam masala", amount: 1, measurement: "tbsp", calories: 40, recipe: chickpea)
Ingredient.create(name: "Cayenne pepper", amount: 1, measurement: "tsp", calories: 10, recipe: chickpea)
Ingredient.create(name: "Chickpeas", amount: 2, measurement: "cans", calories: 150, recipe: chickpea)
Ingredient.create(name: "Cilantro", amount: "1/2", measurement: "cup", calories: 10, recipe: chickpea)
Ingredient.create(name: "Wheat tortilla", amount: 6, measurement: "large", calories: 600, recipe: chickpea)
Ingredient.create(name: "Plain greek yogurt", amount: 1, measurement: "cup", calories: 300, recipe: chickpea)
Ingredient.create(name: "Garlic", amount: 1, measurement: "clove", calories: 60, recipe: chickpea)

Ingredient.create(name: "Maple syrup", amount: "1/4", measurement: "cup", calories: 300, recipe: salmon)
Ingredient.create(name: "Soy sauce", amount: 2, measurement: "tbsp", calories: 140, recipe: salmon)
Ingredient.create(name: "Garlic", amount: 1, measurement: "clove", calories: 30, recipe: salmon)
Ingredient.create(name: "Salt", amount: "1/4", measurement: "tsp", calories: 10, recipe: salmon)
Ingredient.create(name: "Black pepper", amount: "1/8", measurement: "tsp", calories: 10, recipe: salmon)
Ingredient.create(name: "Salmon", amount: 1, measurement: "lb", calories: 944, recipe: salmon)

Ingredient.create(name: "Shredded chicken breast", amount: 2, measurement: "cups", calories: 300, recipe: pasta)
Ingredient.create(name: "Cream cheese", amount: 8, measurement: "oz", calories: 776, recipe: pasta)
Ingredient.create(name: "Buffalo sauce", amount: "1/3", measurement: "cup", calories: 300, recipe: pasta)
Ingredient.create(name: "Chicken broth", amount: "1/2", measurement: "cup", calories: 200, recipe: pasta)
Ingredient.create(name: "Penne pasta", amount: 12, measurement: "oz", calories: 500, recipe: pasta)
Ingredient.create(name: "Blue cheese dressing", amount: "3/4", measurement: "cup", calories: 500, recipe: pasta)
Ingredient.create(name: "Paprika", amount: 1, measurement: "tsp", calories: 10, recipe: pasta)
Ingredient.create(name: "Garlic powder", amount: 1, measurement: "tsp", calories: 10, recipe: pasta)
