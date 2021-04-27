# view: filterval {
#   derived_table: {
#     sql: SELECT
#         users.email  AS `users.email`,
#         users.id  AS `users.id`,
#         users.gender  AS `users.gender`,
#         --users.state  AS `users.state`,
#       '{{_filters['users.state']}}' AS `filter_value`



#       FROM demo_db.users  AS users

#       ORDER BY users.email

#       ;;
#   }

#   measure: count {
#     type: count
#     drill_fields: [detail*]
#   }

#   dimension: users_email {
#     type: string
#     sql: ${TABLE}.`users.email` ;;
#   }

#   dimension: users_id {
#     type: number
#     sql: ${TABLE}.`users.id` ;;
#     primary_key: yes
#   }

#   dimension: users_gender {
#     type: string
#     sql: ${TABLE}.`users.gender` ;;
#   }

#   # dimension: users_state {
#   #   type: string
#   #   sql: ${TABLE}.`users.state` ;;
#   # }


#   set: detail {
#     fields: [users_email, users_id, users_gender]
#   }
# }
