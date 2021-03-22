view: a {
  derived_table: {
    sql: SELECT
          `id` AS `orders.id`
      FROM
          `demo_db`.`orders` AS `orders`

       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: orders_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.`orders.id` ;;
  }

  set: detail {
    fields: [orders_id]
  }
}
