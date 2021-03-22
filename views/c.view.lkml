view: c {
  derived_table: {
    sql:
    SELECT
    order_items.order_id  AS order_id,
    orders.id AS id
FROM ${b.SQL_TABLE_NAME} AS order_items
LEFT JOIN ${a.SQL_TABLE_NAME} AS orders ON order_items.order_id = orders.id
GROUP BY
    1,
    2;;
}

dimension:order_items_id {
  type: number
  sql: ${TABLE}.order_items.order_id ;;
}

  dimension:orders_id {
   type: number
    sql: ${TABLE}.orders_id ;;
  }

}
