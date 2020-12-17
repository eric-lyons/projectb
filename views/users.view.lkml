view: users {
  sql_table_name: demo_db.users ;;
  view_label: " 1"

    parameter: state_picker {
      label: "state_picker"
      type: string
      suggest_dimension: state
      # allowed_value: { value: "PA" }
      # allowed_value: { value: "MASS" }
      # allowed_value: { value: "DL" }
      # allowed_value: { value: "NJ" }
      # default_value: "RI"
    }

  parameter: starting_letter {
    label: "starting letter"
    type: number
    allowed_value: { value: "1" label:"A" }
    allowed_value: { value: "2" label:"B" }
    allowed_value: { value: "3" label:"C" }
    allowed_value: { value: "4" label:"D" }
    allowed_value: { value: "5" label:"E" }
    allowed_value: { value: "6" label:"F" }
    allowed_value: { value: "7" label:"G" }
    allowed_value: { value: "8" label:"H" }
    allowed_value: { value: "9" label:"I" }
    allowed_value: { value: "10" label:"J" }
    allowed_value: { value: "11" label:"K" }
    allowed_value: { value: "12" label:"L" }
    allowed_value: { value: "13" label:"M" }
    allowed_value: { value: "14" label:"N" }
    allowed_value: { value: "15" label:"O" }
    allowed_value: { value: "16" label:"P" }
    allowed_value: { value: "17" label:"Q" }
    allowed_value: { value: "18" label:"R" }
    allowed_value: { value: "19" label:"S" }
    allowed_value: { value: "20" label:"T" }
    allowed_value: { value: "21" label:"U" }
    allowed_value: { value: "22" label:"V" }
    allowed_value: { value: "23" label:"W" }
    allowed_value: { value: "24" label:"X" }
    allowed_value: { value: "25" label:"Y" }
    allowed_value: { value: "26" label:"Z" }
  }

  parameter: ending_letter {
    label: "ending letter"
    type: number
    allowed_value: { value: "1" label:"A" }
    allowed_value: { value: "2" label:"B" }
    allowed_value: { value: "3" label:"C" }
    allowed_value: { value: "4" label:"D" }
    allowed_value: { value: "5" label:"E" }
    allowed_value: { value: "6" label:"F" }
    allowed_value: { value: "7" label:"G" }
    allowed_value: { value: "8" label:"H" }
    allowed_value: { value: "9" label:"I" }
    allowed_value: { value: "10" label:"J" }
    allowed_value: { value: "11" label:"K" }
    allowed_value: { value: "12" label:"L" }
    allowed_value: { value: "13" label:"M" }
    allowed_value: { value: "14" label:"N" }
    allowed_value: { value: "15" label:"O" }
    allowed_value: { value: "16" label:"P" }
    allowed_value: { value: "17" label:"Q" }
    allowed_value: { value: "18" label:"R" }
    allowed_value: { value: "19" label:"S" }
    allowed_value: { value: "20" label:"T" }
    allowed_value: { value: "21" label:"U" }
    allowed_value: { value: "22" label:"V" }
    allowed_value: { value: "23" label:"W" }
    allowed_value: { value: "24" label:"X" }
    allowed_value: { value: "25" label:"Y" }
    allowed_value: { value: "26" label:"Z" }
  }

  dimension: first_letter_num {
    type: number
    sql: case when ${first_name} LIKE 'A%' THEN 1
              when ${first_name} LIKE 'B%' THEN 2
              when ${first_name} LIKE 'C%' THEN 3
              when ${first_name} LIKE 'D%' THEN 4
              when ${first_name} LIKE 'E%' THEN 5
              when ${first_name} LIKE 'F%' THEN 6
              when ${first_name} LIKE 'G%' THEN 7
              when ${first_name} LIKE 'H%' THEN 8
              when ${first_name} LIKE 'I%' THEN 9
              when ${first_name} LIKE 'J%' THEN 10
              when ${first_name} LIKE 'K%' THEN 11
              when ${first_name} LIKE 'L%' THEN 12
              when ${first_name} LIKE 'M%' THEN 13
              when ${first_name} LIKE 'N%' THEN 14
              when ${first_name} LIKE 'O%' THEN 15
              when ${first_name} LIKE 'P%' THEN 16
              when ${first_name} LIKE 'Q%' THEN 17
              when ${first_name} LIKE 'R%' THEN 18
              when ${first_name} LIKE 'S%' THEN 19
              when ${first_name} LIKE 'T%' THEN 20
              when ${first_name} LIKE 'U%' THEN 21
              when ${first_name} LIKE 'V%' THEN 22
              when ${first_name} LIKE 'W%' THEN 23
              when ${first_name} LIKE 'X%' THEN 24
              when ${first_name} LIKE 'Y%' THEN 25
              when ${first_name} LIKE 'Z%' THEN 26
            else NULL end
    ;;
  }

  dimension: letter_yesno {
    type: yesno
    sql: ${first_letter_num} >= {% parameter starting_letter %} AND ${first_letter_num} <= {% parameter ending_letter %}   ;;
  }



    filter: does_this_work {
      type: string
      suggest_dimension: state
    }

  # dimension: test_new {
  #   type: string
  #   sql: 1=1 ;;
  #   html: {{_filters['users.does_this_work'] }} ;;
  # }



  parameter: parameter_named_string {
    type: string
  }

  measure: userscount {
    type: count_distinct
    value_format: "#,##0"
    sql: ${TABLE}.id ;;
  }

  dimension: test_list {
    html: {% if test_list._is_filtered %} {{value}} {% else %} {% endif %} ;;
    sql: {% parameter state_picker %} ;;

  }

  dimension: contain_string {
    type: string
    sql: CONCAT('%',{% parameter parameter_named_string %},'%') ;;
  }

  dimension: yesno_filter {
    type: yesno
    sql: ${state} LIKE ${contain_string} ;;
  }

  dimension: namedimension {
   type: string
  sql: "Hello Old Friend" ;;
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


parameter: change {
   allowed_value: {
    label: "Total Sale Price"
    value: "sale_price"
  }
  allowed_value: {
    label: "Total Cost"
    value: "cost"
  }
  allowed_value: {
    label: "Total Profit"
    value: "profit"
  }
}
    filter: dynamic_filter {
      type: string
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


  # dimension: eric_order_field {
  #   type: string
  #   sql:
  #   (
  #     SELECT ${TABLE}.state ORDER BY ${TABLE}.state DESC;
  #   ) ;;
  # }

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
      year,
      month_num
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension_group: new_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      month_num
    ]
    sql: CASE WHEN ${state} = "New Jersey" THEN NULL
    ELSE ${TABLE}.created_at END;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;

    link: {
      label: "ERIC_TEST"
      url: "/dashboards/sara_dasb_test::refresh_dashboard_"}}

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
    link: {
      label: "TEST Drill Look"
      url:"/looks/1955"
    }
  }

  dimension: I_walk_in{
    type: string
    sql: CONCAT("I walk in ", CAST(${created_date} AS CHAR)) ;;

  }

  dimension: test_yesno_in {
    type: yesno
    sql: ${state} IN("New Jersey", "New York", "California") ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count1 {
    type: count
    filters: {field: gender value:"m"}
  }

  measure: count2 {
    type: count
    filters: {field: gender value:"f"}
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
    html: <div style="background-color:red;"> {{first_name._rendered_value}} </div> ;;

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
