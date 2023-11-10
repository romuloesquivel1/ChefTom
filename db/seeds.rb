def create_meals

  # change category string to reference to table category
  category = Category.find_or_initialize_by(name: 'Starter')
  category.description = 'A small dish served before the main course'
  category.save

  Meal.create(
    name: 'Miso Soup',
    category: category,
    description: 'A traditional Japanese soup made with soybean paste, tofu, seaweed, and green onions',
    price: 4.99
  )

  Meal.create(
    name: 'Samosa',
    category: category,
    description: 'Crispy pastry filled with spiced potatoes, peas, and sometimes meat',
    price: 6.99
  )

  Meal.create(
    name: 'Bruschetta',
    category: category,
    description: 'Toasted bread topped with fresh tomatoes, basil, garlic, and olive oil',
    price: 7.99
  )

  Meal.create(
    name: 'Chicken Shawarma',
    category: category,
    description: 'Thinly sliced marinated chicken served in a pita bread with tahini sauce',
    price: 8.99
  )

  Meal.create(
    name: 'Chicken Satay',
    category: category,
    description: 'Grilled marinated chicken skewers served with peanut sauce',
    price: 9.99
  )

  Meal.create(
    name: 'Pho',
    category: category,
    description: 'A fragrant noodle soup with beef or chicken, herbs, and rice noodles',
    price: 10.99
  )

  Meal.create(
    name: 'Bibimbap',
    category: category,
    description: 'A mixed rice dish with assorted vegetables, meat, and a fried egg',
    price: 11.99
  )

  Meal.create(
    name: 'Jollof Rice',
    category: category,
    description: 'A West African one-pot rice dish cooked with tomatoes, peppers, and spices',
    price: 12.99
  )

  Meal.create(
    name: 'Spring Rolls',
    category: category,
    description: 'Crispy rolls filled with vegetables and meat, served with dipping sauce',
    price: 8.99
  )

  Meal.create(
    name: 'Sushi Rolls',
    category: category,
    description: 'Assorted fresh fish and vegetables wrapped in seasoned rice and seaweed',
    price: 15.99
  )

  Meal.create(
    name: 'Paella',
    category: category,
    description: 'A saffron-infused rice dish with a variety of seafood, meat, and vegetables',
    price: 16.99
  )

  category = Category.find_or_initialize_by(name: 'Main Course')
  category.description = 'The main dish of a meal'
  category.save

  Meal.create(
    name: 'Tacos al Pastor',
    category: category,
    description: 'Marinated pork cooked on a vertical spit, served in tortillas with pineapple and salsa',
    price: 9.99
  )

  Meal.create(
    name: 'Pad Thai',
    category: category,
    description: 'Stir-fried rice noodles with shrimp, tofu, bean sprouts, and peanuts in a tangy sauce',
    price: 11.99
  )

  Meal.create(
    name: 'Spaghetti Bolognese',
    category: category,
    description: 'Classic Italian pasta dish with a rich meat-based sauce',
    price: 12.99
  )

  Meal.create(
    name: 'Lasagna',
    category: category,
    description: 'Layers of pasta, ground meat, tomato sauce, and cheese, baked to perfection',
    price: 12.99
  )

  Meal.create(
    name: 'Piri Piri Chicken',
    category: category,
    description: 'Spicy grilled chicken marinated in a fiery chili sauce',
    price: 13.99
  )

  Meal.create(
    name: 'Chicken Tikka Masala',
    category: category,
    description: 'Grilled chicken in a creamy tomato-based sauce, served with rice or naan bread',
    price: 13.99
  )

  Meal.create(
    name: 'Injera with Doro Wat',
    category: category,
    description: 'Spongy Ethiopian flatbread served with spicy chicken stew',
    price: 14.99
  )

  Meal.create(
    name: 'Margherita Pizza',
    category: category,
    description: 'Traditional Italian pizza topped with fresh tomatoes, mozzarella cheese, and basil',
    price: 14.99
  )

  Meal.create(
    name: 'Shrimp Etouffee',
    category: category,
    description: 'A spicy Louisiana dish with shrimp, vegetables, and a rich roux-based sauce',
    price: 14.99
  )

  Meal.create(
    name: 'Moussaka',
    category: category,
    description: 'A baked casserole with layers of eggplant, ground meat, and béchamel sauce',
    price: 14.99
  )

  Meal.create(
    name: 'Lemon Herb Roast Chicken',
    category: category,
    description: 'Roasted chicken marinated with lemon, herbs, and garlic for a flavorful and juicy dish',
    price: 15.99
  )

  Meal.create(
    name: 'Beef Goulash',
    category: category,
    description: 'A rich meat stew seasoned with paprika, served with noodles or dumplings',
    price: 15.99
  )

  Meal.create(
    name: 'Steak Au Poivre',
    category: category,
    description: 'Tender steak coated with crushed peppercorns and served with a creamy pepper sauce',
    price: 19.99
  )

  category = Category.find_or_initialize_by(name: 'Vegetarian')
  category.description = 'A meal that does not include meat'
  category.save

  Meal.create(
    name: 'Vegetable Spring Rolls',
    category: category,
    description: 'Crispy rolls filled with vegetables only, served with dipping sauce',
    price: 6.99
  )

  Meal.create(
    name: 'Caprese Salad',
    category: category,
    description: 'Refreshing salad with ripe tomatoes, fresh mozzarella, and basil, drizzled with balsamic glaze',
    price: 9.99
  )

  Meal.create(
    name: 'Vegetable Curry',
    category: category,
    description: 'A flavorful medley of vegetables cooked in a fragrant curry sauce',
    price: 10.99
  )

  Meal.create(
    name: 'Kimchi Tofu Fried Rice',
    category: category,
    description: 'Stir-fried rice with kimchi, vegetables, and tofu',
    price: 11.99
  )

  Meal.create(
    name: 'Spaghetti Carbonara',
    category: category,
    description: 'Pasta tossed in a creamy sauce with pancetta, eggs, and Parmesan cheese',
    price: 13.99
  )

  category = Category.find_or_initialize_by(name: 'Chef Special')
  category.description = 'A dish that is not on the menu, but is specially prepared by the chef'
  category.save

  Meal.create(
    name: 'Beef Wellington',
    category: category,
    description: 'Tender beef fillet coated with pâté and wrapped in puff pastry, baked to perfection',
    price: 18.99
  )

  Meal.create(
    name: 'Fruits de Mer',
    category: category,
    description: 'A mix of hot and cold, fish and shellfish',
    price: 29.99
  )

  Meal.create(
      name: 'Truffle-infused Lobster Risotto',
      category: category,
      description: 'Chef Tom throws the leftovers from over the last week into a pan and see what comes out!',
      price: 32.99
  )

  category = Category.find_or_initialize_by(name: 'Dessert')
  category.description = 'A sweet dish served at the end of a meal'
  category.save

  Meal.create(
    name: 'Chocolate Lava Cake',
    category: category,
    description: 'Warm chocolate cake with a gooey chocolate center, served with a scoop of vanilla ice cream',
    price: 8.99
  )

  Meal.create(
    name: 'Fruit Salad',
    category: category,
    description: 'Refreshing fruit salad with apples, mangos, pineapple, and grapes. Served with juice',
    price: 9.99
  )

  Meal.create(
    name: 'Ice Cream Cookies',
    category: category,
    description: 'Two heated cookies with a choice of ice cream flavours (choc, vanilla, strawberry, or fudge)',
    price: 9.99
  )

  Meal.create(
    name: 'Cheese Board',
    category: category,
    description: 'Selection of five European cheeses, served with crackers and a glass of port',
    price: 12.99
  )

end

create_meals

user = User.find_or_initialize_by(name: 'Admin', email: 'admin@local.test')
user.password = 'admin@123'
user.save
