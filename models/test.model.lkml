connection: "turshopcl"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_default_datagroup

explore: amenities {}

explore: answers {
  join: users {
    type: left_outer 
    sql_on: ${answers.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: questions {
    type: left_outer 
    sql_on: ${answers.question_id} = ${questions.id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer 
    sql_on: ${questions.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }

  join: states {
    type: left_outer 
    sql_on: ${customers.state_id} = ${states.id} ;;
    relationship: many_to_one
  }
}

explore: bankdetails {}

explore: bankingentities {}

explore: bookings {
  join: shoppings {
    type: left_outer 
    sql_on: ${bookings.shopping_id} = ${shoppings.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer 
    sql_on: ${bookings.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer 
    sql_on: ${shoppings.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }

  join: states {
    type: left_outer 
    sql_on: ${customers.state_id} = ${states.id} ;;
    relationship: many_to_one
  }
}

explore: carts {
  join: sessions {
    type: left_outer 
    sql_on: ${carts.session_id} = ${sessions.id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer 
    sql_on: ${carts.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer 
    sql_on: ${sessions.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: states {
    type: left_outer 
    sql_on: ${customers.state_id} = ${states.id} ;;
    relationship: many_to_one
  }
}

explore: cart_items {
  join: carts {
    type: left_outer 
    sql_on: ${cart_items.cart_id} = ${carts.id} ;;
    relationship: many_to_one
  }

  join: sessions {
    type: left_outer 
    sql_on: ${carts.session_id} = ${sessions.id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer 
    sql_on: ${carts.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer 
    sql_on: ${sessions.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: states {
    type: left_outer 
    sql_on: ${customers.state_id} = ${states.id} ;;
    relationship: many_to_one
  }
}

explore: ciudad {}

explore: climatrade_proyects {}

explore: climatrade_sales {
  join: shoppings {
    type: left_outer 
    sql_on: ${climatrade_sales.shopping_id} = ${shoppings.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer 
    sql_on: ${climatrade_sales.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer 
    sql_on: ${shoppings.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }

  join: states {
    type: left_outer 
    sql_on: ${customers.state_id} = ${states.id} ;;
    relationship: many_to_one
  }
}

explore: climatrade_setting {}

explore: communities {
  join: states {
    type: left_outer 
    sql_on: ${communities.state_id} = ${states.id} ;;
    relationship: many_to_one
  }
}

explore: comuna {}

explore: contactos {}

explore: countries {}

explore: coupons {}

explore: customers {
  join: users {
    type: left_outer 
    sql_on: ${customers.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: states {
    type: left_outer 
    sql_on: ${customers.state_id} = ${states.id} ;;
    relationship: many_to_one
  }
}

explore: destinations {}

explore: devices {
  join: users {
    type: left_outer 
    sql_on: ${devices.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: failed_jobs {}

explore: favoritables {
  join: users {
    type: left_outer 
    sql_on: ${favoritables.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: images {}

explore: locations {}

explore: messages {}

explore: migrations {}

explore: operators {
  join: users {
    type: left_outer 
    sql_on: ${operators.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: parameters {}

explore: password_resets {}

explore: permissions {}

explore: personal_access_tokens {}

explore: pictures {}

explore: posts {}

explore: questions {
  join: customers {
    type: left_outer 
    sql_on: ${questions.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer 
    sql_on: ${customers.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: states {
    type: left_outer 
    sql_on: ${customers.state_id} = ${states.id} ;;
    relationship: many_to_one
  }
}

explore: reservations {
  join: shoppings {
    type: left_outer 
    sql_on: ${reservations.shopping_id} = ${shoppings.id} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer 
    sql_on: ${reservations.room_id} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer 
    sql_on: ${shoppings.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer 
    sql_on: ${shoppings.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: states {
    type: left_outer 
    sql_on: ${customers.state_id} = ${states.id} ;;
    relationship: many_to_one
  }

  join: operators {
    type: left_outer 
    sql_on: ${rooms.operator_id} = ${operators.id} ;;
    relationship: many_to_one
  }
}

explore: reviews {
  join: customers {
    type: left_outer 
    sql_on: ${reviews.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer 
    sql_on: ${customers.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: states {
    type: left_outer 
    sql_on: ${customers.state_id} = ${states.id} ;;
    relationship: many_to_one
  }
}

explore: roles {}

explore: rooms {
  join: operators {
    type: left_outer 
    sql_on: ${rooms.operator_id} = ${operators.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer 
    sql_on: ${operators.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: sales {
  join: shoppings {
    type: left_outer 
    sql_on: ${sales.shopping_id} = ${shoppings.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer 
    sql_on: ${sales.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: tours {
    type: left_outer 
    sql_on: ${sales.tour_id} = ${tours.id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer 
    sql_on: ${shoppings.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }

  join: states {
    type: left_outer 
    sql_on: ${customers.state_id} = ${states.id} ;;
    relationship: many_to_one
  }

  join: destinations {
    type: left_outer 
    sql_on: ${tours.destination_id} = ${destinations.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer 
    sql_on: ${tours.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }

  join: operators {
    type: left_outer 
    sql_on: ${tours.operator_id} = ${operators.id} ;;
    relationship: many_to_one
  }
}

explore: sessions {
  join: users {
    type: left_outer 
    sql_on: ${sessions.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: shoppings {
  join: customers {
    type: left_outer 
    sql_on: ${shoppings.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer 
    sql_on: ${shoppings.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: states {
    type: left_outer 
    sql_on: ${customers.state_id} = ${states.id} ;;
    relationship: many_to_one
  }
}

explore: social_profiles {
  join: users {
    type: left_outer 
    sql_on: ${social_profiles.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: states {}

explore: suscriptores {
  join: users {
    type: left_outer 
    sql_on: ${suscriptores.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: tours {
  join: destinations {
    type: left_outer 
    sql_on: ${tours.destination_id} = ${destinations.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer 
    sql_on: ${tours.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }

  join: operators {
    type: left_outer 
    sql_on: ${tours.operator_id} = ${operators.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer 
    sql_on: ${operators.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: users {}

explore: users_permissions {
  join: users {
    type: left_outer 
    sql_on: ${users_permissions.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: permissions {
    type: left_outer 
    sql_on: ${users_permissions.permission_id} = ${permissions.id} ;;
    relationship: many_to_one
  }
}

explore: users_roles {
  join: roles {
    type: left_outer 
    sql_on: ${users_roles.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer 
    sql_on: ${users_roles.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: users_rrss {}

