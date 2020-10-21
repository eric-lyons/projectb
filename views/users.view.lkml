view: users {
  sql_table_name: demo_db.users ;;


    parameter: state_picker {
      label: "state_picker"
      type: string
      allowed_value: { value: "PA" }
      allowed_value: { value: "MASS" }
      allowed_value: { value: "DL" }
      allowed_value: { value: "NJ" }
      default_value: "RI"
    }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }



  # measure: testval {
  #   type: number
  #   sql: CASE WHEN (SELECT `filter_value` from ${filterval.SQL_TABLE_NAME}) = 'New Jersey' AND {% parameter state_picker %} = 'NJ' THEN 3
  #         WHEN {% parameter state_picker %} = 'PA' THEN 2
  #         WHEN {% parameter state_picker %} = 'MASS' THEN 3
  #         WHEN {% parameter state_picker %} = 'DEL' THEN 1

  #         ELSE 50
  #         END;;
  # }


  dimension: eric_order_field {
    type: string
    sql:
    (
      SELECT ${TABLE}.state ORDER BY ${TABLE}.state DESC;
    ) ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count1 {
    type: count
    filters: {field: state value:"New Jersey"}
  }

  measure: count2 {
    type: count
    filters: {field: state value:"New York"}
  }

  measure: percentile {
    type: number
    sql: ${count1}/${count2} ;;
  }


  measure: sum1 {
    type: sum
    sql: ${id} ;;
    filters: {field: state value:"New Jersey"}
  }

  measure: sum2 {
    type: sum
    sql: ${id} ;;
    filters: {field: state value:"New York"}
  }

  measure: percentile2 {
    type: number
    sql: ${sum2}/${count1} ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      last_name,
      first_name,
      events.count,
      orders.count,
      saralooker.count,
      user_data.count
    ]
  }
}
