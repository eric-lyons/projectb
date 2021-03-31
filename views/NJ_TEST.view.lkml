# HELLO WORLD
# hello world two
<<<<<<< HEAD
##FIRST COMMIT
=======
#second
>>>>>>> branch 'main' of git@github.com:eric-lyons/barebears_of_lookml.git
view: NJ_TEST {
  derived_table: {
    sql: SELECT
        users.state  AS `users.state`,
        users.last_name  AS `users.last_name`,
        users.id  AS `users.id`,
        users.first_name  AS `users.first_name`,
        users.gender  AS `users.gender`,
        users.email  AS `users.email`,
        users.city  AS `users.city`,
        users.age  AS `users.age`,
        users.zip  AS `users.zip`
      FROM demo_db.order_items  AS order_items
      LEFT JOIN demo_db.orders  AS orders ON order_items.order_id = orders.id
      LEFT JOIN demo_db.users  AS users ON orders.user_id = users.id

      WHERE
      {% if NJ._parameter_value == "NJ" %}
        (users.state = 'New Jersey')
      {% elsif NJ._parameter_value == "NY" %}
        (users.state = 'New York')
      {% else %}
      (users.state LIKE '%')

      {% endif %}


      GROUP BY 1,2,3,4,5,6,7,8,9
      ORDER BY users.state
      LIMIT 500
       ;;
  }

  parameter: NJ {
    type: unquoted
    allowed_value: {label:"NJ" value:"NJ"}
    allowed_value: {label:"NY" value:"NY"}
    allowed_value: {label:"NOT_NJ" value:"NOT_NJ"}
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: users_state {
    type: string
    sql: ${TABLE}.`users.state` ;;
    drill_fields: [users_zip,users_age]
  }

  dimension: users_last_name {
    type: string
    sql: ${TABLE}.`users.last_name` ;;
  }

  dimension: users_id {
    type: number
    sql: ${TABLE}.`users.id` ;;
  }

  dimension: users_first_name {
    type: string
    sql: ${TABLE}.`users.first_name` ;;
  }

  dimension: change_this_name {
    type: string
    sql: ${TABLE}.`users.first_name` ;;
  }

  dimension: users_gender {
    type: string
    sql: ${TABLE}.`users.gender` ;;
  }

  dimension: users_email {
    type: string
    sql: ${TABLE}.`users.email` ;;
  }

  dimension: users_city {
    type: string
    sql: ${TABLE}.`users.city` ;;
  }

  dimension: users_age {
    type: number
    sql: ${TABLE}.`users.age` ;;
  }

  dimension: users_zip {
    type: number
    sql: ${TABLE}.`users.zip` ;;
  }

  set: detail {
    fields: [
      users_state,
      users_last_name,
      users_id,
      users_first_name,
      users_gender,
      users_email,
      users_city,
      users_age,
      users_zip
    ]
  }
}
