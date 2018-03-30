connection: "the_look"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: affinity_analysis_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: affinity_analysis_default_datagroup

explore: orders {}

#   joins:
#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one


# - explore: order_items
#   joins:
#     - join: orders
#       type: left_outer
#       sql_on: ${order_items.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one


# - explore: products

# - explore: schema_migrations

# - explore: user_data
#   joins:
#     - join: users
#       type: left_outer
#       sql_on: ${user_data.user_id} = ${users.id}
#       relationship: many_to_one


# - explore: users

# - explore: users_nn
