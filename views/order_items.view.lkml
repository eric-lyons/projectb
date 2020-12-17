view: order_items {
  sql_table_name: demo_db.order_items ;;
  drill_fields: [id]
  view_label: "10"

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  parameter: pick_dimension {
    allowed_value: { value: "inventory" }
    allowed_value: { value: "order" }
    allowed_value: { value: "price" }
  }

  dimension: inventory_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: dynamic_field {
    type: number
    sql:
    CASE
    WHEN {% parameter pick_dimension %} = 'inventory' THEN ${inventory_item_id}
    WHEN {% parameter pick_dimension %} = 'order' THEN ${order_id}
    WHEN {% parameter pick_dimension %} = 'prce' THEN ${sale_price}
    ELSE NULL
    END ;;

  }

  measure: dynamic_measure {
    type: sum
    sql: ${dynamic_field} ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  filter: test_timezone_filter {
    type: date_time
    convert_tz: no
  }

  dimension_group: returned {
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
    sql: CONVERT_TZ(${TABLE}.returned_at,'US/Eastern','Europe/Paris') ;;
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }

  dimension: date_yesno {
    type: yesno
    sql: ISNULL(${returned_date}) = 1 ;;
  }

  measure: null_filtered_measure {
    type: count
      filters: {
        field: date_yesno
        value: "yes"
      }
  }

  measure: count {
    type: count
    drill_fields: [id, orders.id, inventory_items.id]
  }
}
