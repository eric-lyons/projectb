view: inventory_items {
  sql_table_name: demo_db.inventory_items ;;
  drill_fields: [id]
  view_label: " 2"

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  measure: max_date_test {
    type: date
    sql: MAX(${created_raw}) ;;
   convert_tz: no
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;

  }

  measure: max_cost {
    type: max
    sql: ${cost} ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: diff {
    sql: DATEDIFF(${sold_date}, ${created_date}) ;;
    type: number
  }

  dimension: only_positive {
    type: number
    sql:  CASE WHEN ${diff} >= 0 THEN ${diff}
    ELSE NULL END;;
  }

  measure: average_diff {
    sql: ${only_positive} ;;
    type: average
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }

  dimension_group: sold {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.sold_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, products.id, products.item_name, order_items.count]
  }
}
