def create_meals
  Meal.create(
    name: 'Miso Soup',
    category: 'Starter',
    description: 'A traditional Japanese soup made with soybean paste, tofu, seaweed, and green onions',
    price: 4.99
  )

  Meal.create(
    name: 'Samosa',
    category: 'Starter',
    description: 'Crispy pastry filled with spiced potatoes, peas, and sometimes meat',
    price: 6.99
  )

  Meal.create(
    name: 'Bruschetta',
    category: 'Starter',
    description: 'Toasted bread topped with fresh tomatoes, basil, garlic, and olive oil',
    price: 7.99
  )

  Meal.create(
    name: 'Chicken Shawarma',
    category: 'Starter',
    description: 'Thinly sliced marinated chicken served in a pita bread with tahini sauce',
    price: 8.99
  )

  Meal.create(
    name: 'Chicken Satay',
    category: 'Starter',
    description: 'Grilled marinated chicken skewers served with peanut sauce',
    price: 9.99
  )

  Meal.create(
    name: 'Pho',
    category: 'Starter',
    description: 'A fragrant noodle soup with beef or chicken, herbs, and rice noodles',
    price: 10.99
  )

  Meal.create(
    name: 'Bibimbap',
    category: 'Starter',
    description: 'A mixed rice dish with assorted vegetables, meat, and a fried egg',
    price: 11.99
  )

  Meal.create(
    name: 'Jollof Rice',
    category: 'Starter',
    description: 'A West African one-pot rice dish cooked with tomatoes, peppers, and spices',
    price: 12.99
  )

  Meal.create(
    name: 'Spring Rolls',
    category: 'Starter',
    description: 'Crispy rolls filled with vegetables and meat, served with dipping sauce',
    price: 8.99
  )

  Meal.create(
    name: 'Sushi Rolls',
    category: 'Starter',
    description: 'Assorted fresh fish and vegetables wrapped in seasoned rice and seaweed',
    price: 15.99
  )

  Meal.create(
    name: 'Paella',
    category: 'Starter',
    description: 'A saffron-infused rice dish with a variety of seafood, meat, and vegetables',
    price: 16.99
  )

  Meal.create(
    name: 'Tacos al Pastor',
    category: 'Main Course',
    description: 'Marinated pork cooked on a vertical spit, served in tortillas with pineapple and salsa',
    price: 9.99
  )

  Meal.create(
    name: 'Pad Thai',
    category: 'Main Course',
    description: 'Stir-fried rice noodles with shrimp, tofu, bean sprouts, and peanuts in a tangy sauce',
    price: 11.99
  )

  Meal.create(
    name: 'Spaghetti Bolognese',
    category: 'Main Course',
    description: 'Classic Italian pasta dish with a rich meat-based sauce',
    price: 12.99
  )

  Meal.create(
    name: 'Lasagna',
    category: 'Main Course',
    description: 'Layers of pasta, ground meat, tomato sauce, and cheese, baked to perfection',
    price: 12.99
  )

  Meal.create(
    name: 'Piri Piri Chicken',
    category: 'Main Course',
    description: 'Spicy grilled chicken marinated in a fiery chili sauce',
    price: 13.99
  )

  Meal.create(
    name: 'Chicken Tikka Masala',
    category: 'Main Course',
    description: 'Grilled chicken in a creamy tomato-based sauce, served with rice or naan bread',
    price: 13.99
  )

  Meal.create(
    name: 'Injera with Doro Wat',
    category: 'Main Course',
    description: 'Spongy Ethiopian flatbread served with spicy chicken stew',
    price: 14.99
  )

  Meal.create(
    name: 'Margherita Pizza',
    category: 'Main Course',
    description: 'Traditional Italian pizza topped with fresh tomatoes, mozzarella cheese, and basil',
    price: 14.99
  )

  Meal.create(
    name: 'Shrimp Etouffee',
    category: 'Main Course',
    description: 'A spicy Louisiana dish with shrimp, vegetables, and a rich roux-based sauce',
    price: 14.99
  )

  Meal.create(
    name: 'Moussaka',
    category: 'Main Course',
    description: 'A baked casserole with layers of eggplant, ground meat, and béchamel sauce',
    price: 14.99
  )

  Meal.create(
    name: 'Lemon Herb Roast Chicken',
    category: 'Main Course',
    description: 'Roasted chicken marinated with lemon, herbs, and garlic for a flavorful and juicy dish',
    price: 15.99
  )

  Meal.create(
    name: 'Beef Goulash',
    category: 'Main Course',
    description: 'A rich meat stew seasoned with paprika, served with noodles or dumplings',
    price: 15.99
  )

  Meal.create(
    name: 'Steak Au Poivre',
    category: 'Main Course',
    description: 'Tender steak coated with crushed peppercorns and served with a creamy pepper sauce',
    price: 19.99
  )

  Meal.create(
    name: 'Vegetable Spring Rolls',
    category: 'Vegetarian',
    description: 'Crispy rolls filled with vegetables only, served with dipping sauce',
    price: 6.99
  )

  Meal.create(
    name: 'Caprese Salad',
    category: 'Vegetarian',
    description: 'Refreshing salad with ripe tomatoes, fresh mozzarella, and basil, drizzled with balsamic glaze',
    price: 9.99
  )

  Meal.create(
    name: 'Vegetable Curry',
    category: 'Vegetarian',
    description: 'A flavorful medley of vegetables cooked in a fragrant curry sauce',
    price: 10.99
  )

  Meal.create(
    name: 'Kimchi Tofu Fried Rice',
    category: 'Vegetarian',
    description: 'Stir-fried rice with kimchi, vegetables, and tofu',
    price: 11.99
  )

  Meal.create(
    name: 'Spaghetti Carbonara',
    category: 'Vegetarian',
    description: 'Pasta tossed in a creamy sauce with pancetta, eggs, and Parmesan cheese',
    price: 13.99
  )

  Meal.create(
    name: 'Beef Wellington',
    category: 'Chef Special',
    description: 'Tender beef fillet coated with pâté and wrapped in puff pastry, baked to perfection',
    price: 18.99
  )

  Meal.create(
    name: 'Fruits de Mer',
    category: 'Chef Special',
    description: 'A mix of hot and cold, fish and shellfish',
    price: 29.99
  )

  Meal.create(
      name: 'Truffle-infused Lobster Risotto',
      category: 'Chef Special',
      description: 'Chef Tom throws the leftovers from over the last week into a pan and see what comes out!',
      price: 32.99
  )

  Meal.create(
    name: 'Chocolate Lava Cake',
    category: 'Dessert',
    description: 'Warm chocolate cake with a gooey chocolate center, served with a scoop of vanilla ice cream',
    price: 8.99
  )

  Meal.create(
    name: 'Fruit Salad',
    category: 'Dessert',
    description: 'Refreshing fruit salad with apples, mangos, pineapple, and grapes. Served with juice',
    price: 9.99
  )

  Meal.create(
    name: 'Ice Cream Cookies',
    category: 'Dessert',
    description: 'Two heated cookies with a choice of ice cream flavours (choc, vanilla, strawberry, or fudge)',
    price: 9.99
  )

  Meal.create(
    name: 'Cheese Board',
    category: 'Dessert',
    description: 'Selection of five European cheeses, served with crackers and a glass of port',
    price: 12.99
  )

end

create_meals

uu = User.new(name: 'Admin', email: 'admin@local.test', password: 'admin@123')
uu.save
