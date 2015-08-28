User.create!([
  {email: "amandafriant@gmail.com", encrypted_password: "$2a$10$dahJ.B53O9/gaag0r/7HhOeeCnZU11diaoSzO4YZ5tmYGDi8A/q.m", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 7, current_sign_in_at: "2015-08-28 03:22:32", last_sign_in_at: "2015-08-28 02:02:33", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: nil, firstname: nil, lastname: nil, gender: nil},
  {email: "harrybarry@gmail.com", encrypted_password: "$2a$10$hYYubDqPJHpdcAItZlvN3uTrt4sN0I30uaPqEKnZOsaQeZPbS6/d.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 5, current_sign_in_at: "2015-08-28 08:21:28", last_sign_in_at: "2015-08-28 08:13:50", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: nil, firstname: "Harry", lastname: "Barry", gender: 0},
  {email: "ab@gmail.com", encrypted_password: "$2a$10$COgKLJbZx9fLbq0OLR18L.h4rVsWh2zPluReZXdjOpbBaOAIq6TkS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2015-08-28 08:14:10", last_sign_in_at: "2015-08-28 02:56:51", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: nil, firstname: "Amanda", lastname: "Banana", gender: 0}
])
Guest.create!([
  {party_id: 1, item_id: 1, user_id: nil},
  {party_id: 1, item_id: 2, user_id: nil},
  {party_id: 1, item_id: 3, user_id: nil},
  {party_id: 1, item_id: 4, user_id: nil},
  {party_id: 24, item_id: nil, user_id: 1},
  {party_id: 25, item_id: nil, user_id: 3},
  {party_id: 26, item_id: nil, user_id: 2},
  {party_id: 27, item_id: nil, user_id: 3},
  {party_id: 28, item_id: nil, user_id: 2}
])
Item.create!([
  {name: "Deviled Eggs", category: "Appetizer", amount: 1, units: "carton", serving_size: 24.0, price: 5},
  {name: "Chips and Salsa", category: "Appetizer", amount: 1, units: "bag", serving_size: 10.0, price: 7},
  {name: "Brownies", category: "Dessert", amount: 1, units: "box", serving_size: 16.0, price: 6},
  {name: "Pizza (Large)", category: "Entree", amount: 1, units: "pie", serving_size: 5.0, price: 15},
  {name: "Mini Quiche (Frozen)", category: "Appetizer", amount: 1, units: "box", serving_size: 18.0, price: 10},
  {name: "Vegetable Tray (Storebought)", category: "Appetizer", amount: 1, units: "tray", serving_size: 10.0, price: 10},
  {name: "Bacon-wrapped Dates", category: "Appetizer", amount: 1, units: "package", serving_size: 24.0, price: 10},
  {name: "Red Wine", category: "Alcohol", amount: 1, units: "Bottle", serving_size: 4.0, price: 10},
  {name: "Lasagna", category: "Entree", amount: 1, units: "tray", serving_size: 12.0, price: 20},
  {name: "Burgers", category: "Entree", amount: 1, units: "packages", serving_size: 8.0, price: 17},
  {name: "Coors Light", category: "Alcohol", amount: 1, units: "case", serving_size: 24.0, price: 15},
  {name: "Corona Light (bottles)", category: "Alcohol", amount: 1, units: "case", serving_size: 12.0, price: 13},
  {name: "312 (bottles)", category: "Alcohol", amount: 1, units: "case", serving_size: 12.0, price: 13},
  {name: "Budweiser", category: "Alcohol", amount: 1, units: "case", serving_size: 24.0, price: 15},
  {name: "Quarter Sheet Cake (storebought)", category: "Dessert", amount: 1, units: "cake", serving_size: 16.0, price: 24},
  {name: "Ice", category: "Other", amount: 1, units: "bag", serving_size: 20.0, price: 5},
  {name: "Paper Plates", category: "Flatware", amount: 1, units: "package", serving_size: 20.0, price: 5},
  {name: "Solo cups", category: "other", amount: 1, units: "bag", serving_size: 50.0, price: 10},
  {name: "Hotdogs", category: "Entree", amount: 1, units: "package", serving_size: 8.0, price: 13},
  {name: "Beef Tenderloin", category: "Entree", amount: 1, units: "platter", serving_size: 6.0, price: 40},
  {name: "Coke", category: "Non-Alcohol", amount: 1, units: "bottle", serving_size: 8.0, price: 2},
  {name: "Coffee K-cups", category: "Non-Alcohol", amount: 1, units: "box", serving_size: 12.0, price: 10},
  {name: "Mimosas", category: "Appetizer", amount: 1, units: "bottle", serving_size: 4.0, price: 10},
  {name: "Margarita (from mix)", category: "Alcohol", amount: 1, units: "bottle", serving_size: 8.0, price: 25},
  {name: "Crab Cake", category: "Entree", amount: 1, units: "cake", serving_size: 1.0, price: 8}
])
Party.create!([
  {name: "Amanda's Birthday", date: "2015-09-05", duration: 3, male_count: 20, female_count: 10, food_level: 1, drink_level: 4, budget: 400, appetizer_course: "1", entree_course: "1", dessert_course: "1", alcohol_course: "1"},
  {name: "Corey's Rodeo Bday", date: "2015-10-10", duration: 4, male_count: 10, female_count: 7, food_level: 2, drink_level: 4, budget: 500, appetizer_course: "1", entree_course: "0", dessert_course: "1", alcohol_course: "1"},
  {name: "Bridal Shower", date: "2015-09-05", duration: 3, male_count: 0, female_count: 20, food_level: 3, drink_level: 3, budget: 200, appetizer_course: "1", entree_course: "0", dessert_course: "1", alcohol_course: "1"},
  {name: "Halloween Party", date: "2015-10-31", duration: 3, male_count: 20, female_count: 20, food_level: 3, drink_level: 3, budget: 300, appetizer_course: "1", entree_course: "0", dessert_course: "1", alcohol_course: "1"},
  {name: "Knitting Circle Reunion", date: "2015-09-05", duration: 3, male_count: 2, female_count: 10, food_level: 2, drink_level: 3, budget: 200, appetizer_course: "1", entree_course: "0", dessert_course: "1", alcohol_course: "1"},
  {name: "Harry's Holiday Party", date: "2015-12-19", duration: 3, male_count: 7, female_count: 8, food_level: 3, drink_level: 3, budget: 300, appetizer_course: "1", entree_course: "1", dessert_course: "1", alcohol_course: "1"},
  {name: "Hayride", date: "2015-09-19", duration: 2, male_count: 10, female_count: 10, food_level: 1, drink_level: 4, budget: 100, appetizer_course: "1", entree_course: "0", dessert_course: "1", alcohol_course: "1"},
  {name: "New Years Eve", date: "2015-12-31", duration: 4, male_count: 14, female_count: 17, food_level: 3, drink_level: 5, budget: 300, appetizer_course: "1", entree_course: "0", dessert_course: "1", alcohol_course: "1"}
])
ShoppingList.create!([
  {item_id: 5, party_id: 0, delegation_status: "", user_id: nil, completion_status: "", quantity: nil, notes: nil, owner: nil},
  {item_id: 2, party_id: 2, delegation_status: "", user_id: nil, completion_status: "", quantity: 2, notes: "", owner: nil},
  {item_id: 1, party_id: 2, delegation_status: "Host", user_id: 1, completion_status: nil, quantity: 1, notes: "homemade", owner: nil},
  {item_id: 8, party_id: 1, delegation_status: "host", user_id: 0, completion_status: nil, quantity: 4, notes: "Either Pinot or Rioja", owner: nil},
  {item_id: 4, party_id: 1, delegation_status: "Host", user_id: 1, completion_status: nil, quantity: 4, notes: "Jet's Pizza", owner: nil},
  {item_id: 3, party_id: 1, delegation_status: "Unclaimed", user_id: nil, completion_status: nil, quantity: 2, notes: "homemade", owner: nil},
  {item_id: 1, party_id: 1, delegation_status: "host", user_id: 0, completion_status: nil, quantity: 1, notes: "", owner: nil},
  {item_id: 4, party_id: 22, delegation_status: "host", user_id: 0, completion_status: nil, quantity: 4, notes: "Jet's XL various toppings", owner: nil},
  {item_id: 5, party_id: 22, delegation_status: "host", user_id: 0, completion_status: nil, quantity: 1, notes: "Costco", owner: nil},
  {item_id: 3, party_id: 22, delegation_status: "unclaimed", user_id: nil, completion_status: nil, quantity: 2, notes: "extra fudgey", owner: nil},
  {item_id: 8, party_id: 27, delegation_status: "host", user_id: 1, completion_status: nil, quantity: 3, notes: "", owner: nil},
  {item_id: 3, party_id: 27, delegation_status: "host", user_id: 1, completion_status: nil, quantity: 2, notes: "", owner: nil},
  {item_id: 1, party_id: 26, delegation_status: "Host", user_id: nil, completion_status: nil, quantity: 2, notes: "homemade", owner: "Harry"},
  {item_id: 7, party_id: 26, delegation_status: "Unclaimed", user_id: 1, completion_status: nil, quantity: 2, notes: "homemade", owner: "Carolyn"},
  {item_id: 4, party_id: 26, delegation_status: "Host", user_id: 1, completion_status: nil, quantity: 2, notes: "Order the pizzas at least o", owner: "Harry"}
])
