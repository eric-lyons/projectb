view: order_items {
  sql_table_name: demo_db.order_items ;;
  drill_fields: [id]
  view_label: "10"

  dimension: id {
    ##primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    drill_fields: [inventory_items.id, order_id]
    html: {{value}} <br> "Title Goes here";;
  }

  parameter: dynamica_sum {
    type: unquoted
    allowed_value: { value: "id" }
    allowed_value: { value: "inventory_item_id" }

  }


  dimension: corre {
    sql: (SELECT ${users.state} FROM ${users.SQL_TABLE_NAME} WHERE users.state = 'New Jersey' LIMIT 1);;
    type: string
  }

  measure: sum_test {
    type: sum
    sql: ${TABLE}.{% parameter dynamica_sum %} ;;
  }

  parameter: pick_dimension {
    type: unquoted
    allowed_value: { value: "inventory" }
    allowed_value: { value: "order" }
    allowed_value: { value: "price" }
  }

  dimension: inventory_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
    html: {{value}} <br> "Title Goes here";;
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
    sql: ${TABLE}.returned_at ;;
  }




  dimension: result_date {
    sql:1=1;;
    html:
    {% if orders.created_raw._value < order_items.returned_raw._value  %}
    {{ orders.created_date._value }}
      {% else %}
      {{ order_items.returned_date._value }}
      {% endif %} ;;
  }


  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price;;
  }
  #new

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

  dimension: monthback1 {
    type: number
    sql: DATEDIFF(CURDATE(),${returned_date});;
  }

  dimension: monthback2 {
    type: number
    sql: DATEDIFF(CURDATE(),DATE_ADD(${returned_date}, INTERVAL 1 month));;
  }


  dimension: yesno_test {
    type: yesno
    sql: ${monthback1} - ${monthback2} <=60 ;;
  }

  measure: filtered_count {
    type: count
    filters: [yesno_test: "yes"]
  }

  measure: count {
    type: count
    drill_fields: [id, orders.id, inventory_items.id]
  }
}
