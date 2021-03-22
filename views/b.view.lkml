view: b {
  derived_table: {
    sql: SELECT
          order_items.order_id AS `order_items.order_id
      FROM
          demo_db.order_items AS order_items

       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: order_items_order_id {
    type: number
    sql: ${TABLE}.`order_items.order_id` ;;
  }

  set: detail {
    fields: [order_items_order_id]
  }
}
