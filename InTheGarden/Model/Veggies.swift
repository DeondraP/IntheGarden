//
//  File.swift
//  IntheGarden
//
//  Created by Yolanda Foy on 8/20/23.
//

import Foundation

struct Veggies {
    var name: String
    var image: String
    var description: String?
    
    static func loadVeggieData() -> [Veggies] {
        return [
            Veggies(name: "Carrots", image: "newCarrots", description: "Purple carrots require planting in full sun 1-2 inches a part. They also need 1-2 inches of water, getting them wet but not soaking the carrots. 59-68°F is the prime growing temperature for purple carrots."),
            Veggies(name: "Squash", image: "newSquash", description:  "Squash can be grown in the winter with any temperature that is not lower than 28°. You can also use covering for protecting your crops from a hard freeze. When planting winter squash, make sure seeds are at least three-fourths of an inch deep and 24-36 inches apart from each other. The rows of the planted squash should be 5-6 feet apart. Winter squash will need direct sunlight at least 6-8 hours daily and 0.62 gallon of water per square foot of the area per week."),
            Veggies(name: "Sweet Potatoes", image: "newSP", description: "Sweet potatoes are a warm-season, frost-sensitive crop that produces best when daily maximum air temperatures are between 85° and 95°F. Temperatures over 100°F are not harmful so long as the plants are adequately irrigated and temperatures drop to below 80°F at night, although growth may be slow above 100°F. They enjoy full sun at least 6-8 hours. Water them well and continue to irrigate the bed daily for the first week if there has been no rain.")
        ]
    }
    
    static func loadRecipeData() -> [Veggies] {
        return [
            Veggies(name: "Classic Glazed Carrot", image: "newCarrots", description: "Carrot recipe: 1 pound carrots, peeled2 to 3 tablespoons unsalted butter1 teaspoon salt1/3 cup chicken stock (use vegetable stock for vegetarian option)1 heaping tablespoon sugar1/4 teaspoon white pepper, optional Sauté the carrots: Melt the butter in a skillet over medium-high heat and then add the carrots. Toss to combine and reduce the heat to medium. Sprinkle the salt over carrots and toss again. Sauté for 3-4 minutes. 2.Add the sugar and white pepper (if using) and toss to combine. Add the stock. Cover the skillet and cook for another 3 minutes. 4. Uncover the skillet and increase heat to medium-high. Toss the carrots once or twice to keep them moving, and cook away most of the liquid. Turn off the heat and taste. Add more salt and sugar to taste."),
            Veggies(name: "Grilled Squash", image:"newSquash" , description: "Roast the squash: Preheat oven to 425F. Lightly brush two baking sheets with about 1 tablespoon of olive oil. In a large bowl, whisk together miso, maple syrup, the rest of the oil, salt, and pepper. Add butternut squash cubes, and toss to coat. Spread squash out onto baking sheets with plenty of room between pieces. Bake for 25 minutes or until golden brown and crispy at the edges. For more caramelization, turn the squash at the 15-minute mark."),
            Veggies(name: "Grilled Sweet Potato Fries", image: "newSP", description: "You just peel the sweet potatoes, slice them into 1/4-inch slices, paint them with olive oil, sprinkle on some salt, and place on a hot grill. To serve, you want to slather them with some sort of vinaigrette—olive oil to keep them from tasting too dry, and an acid like lime juice or lemon juice to balance the sweetness of the sweet potatoes." )
        ]
    }
}
    
    
    

