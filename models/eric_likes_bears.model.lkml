connection: "thelook"

# include all the views
include: "/views/**/*.view"
include: "/eric@thebesteverlookmld@shboard.dashboard"
include: "/dashboard_lookml.dashboard"

access_grant: not_newjersey {
  user_attribute: erics_favorite_state
  allowed_values: ["New York"]
}

datagroup: eric_likes_bears_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

test: status_is_not_null {
  explore_source: orders {
    column: status {}
    sorts: [orders.status: desc]
    limit: 1
  }
  assert: status_is_not_null {
    expression: NOT is_null(${orders.status}) ;;
  }
}


explore: NJ_TEST {}

explore: pivot_ndt {}

persist_with: eric_likes_bears_default_datagroup

explore: connection_reg_r3 {}

explore: TIME_TEST {}

# explore: events {
#   join: users {
#     type: left_outer
#     view_label: "Events"
#     sql_on: ${events.user_id} = ${users.id} ;;
#     relationship: many_to_one
#   }
#   sql_always_where: {% date_start events.date_filter %} = ${users.created_date} ;;
# }

explore: flights {}

explore: imgsrc1onerroralert2 {}

explore: inventory_items {


}

explore: test_dt {}
# explore: order_items {
#   always_filter: {filters:[users.test_filter: "New^_Jersey, New^_York"]}
#   join: orders {
#     type: left_outer
#     sql_on: ${order_items.order_id} = ${orders.id} ;;
#     relationship: many_to_one
#   }

#   join: inventory_items {
#     type: left_outer
#     sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
#     relationship: many_to_one
#   }

#   join: users {
#     type: left_outer
#     sql_on: ${orders.user_id} = ${users.id} ;;
#     relationship: many_to_one
#   }

#   join: products {
#     type: left_outer
#     sql_on: ${inventory_items.product_id} = ${products.id} ;;
#     relationship: many_to_one
#   }
#}

explore: events {}

# explore: events {
#   view_name: events
#   extends: [order_items]

#   join: users {
#     type: left_outer
#     view_label: "Events"
#     sql_on: ${events.user_id} = ${users.id} ;;
#     relationship: many_to_one
#   }
#   join: orders {
#     sql_on: ${orders.user_id} = ${users.id};;
#     relationship: many_to_one
#   }
#   join: order_items
#   {
#     sql_on: ${order_items.order_id} = ${orders.id};;
#     relationship: many_to_one
#   }
# }

explore: orders {
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

}


explore: products {}

explore: saralooker {
  join: users {
    type: left_outer
    sql_on: ${saralooker.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: schema_migrations {}

explore: user_data {
  join: users {
    type: left_outer
    sql_on: ${user_data.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: order_items {
  ##cancel_grouping_fields: [orders.eric_case_when_test]
  join: users {
    type: left_outer
    relationship: many_to_one
    sql_on: ${orders.user_id} = ${users.id} ;;
  }
  join: orders {
    type: left_outer
    relationship: many_to_one
    sql_on: ${order_items.order_id} = ${orders.id} ;;
  }
}

test: order_id_is_unique {
  explore_source: orders {
    column: id {}
    column: count {}
    sorts: [orders.count: desc]
    limit: 1
  }
  assert: order_id_is_unique {
    expression: ${orders.count} = 1 ;;
  }
}

# access_grant: not_newjersey {
#   user_attribute: erics_favorite_state
#   allowed_values: [ "New York"]
# }

explore: users {

}


explore: +orders {
  label: "Sales Totals"
  join: order_items {
    sql_on: ${orders.id} = ${order_items.id} ;;
    relationship: many_to_one
  }
  aggregate_table: sales_monthly {
    materialization: {
      persist_for: "24 hours"
    }
    query: {
      dimensions: [created_month, orders.status]
      measures: [orders.count]
      filters: [orders.status: "cancelled, complete, pending"]
      timezone: "America/Los_Angeles"
    }


  }
  # other explore parameters
}
