view: events {
  sql_table_name: demo_db.events
;;
  drill_fields: [id]

  filter: date_filter {
    type: date
    suggestions: ["five days", "four days", "three days"]
  }

  dimension: filter_val1 {
    type: number
    sql: UNIX_TIMESTAMP(${created_raw}) ;;
  }

  dimension: filter_val2 {
    type: number
    sql: NULL ;;
  }



  parameter: date {
    type: number
    allowed_value: {label: "5 days ago" value: "5"}
    allowed_value: {label: "4 days ago" value: "4"}
    allowed_value: {label: "3 days ago" value: "3"}
    allowed_value: {label: "2 days ago" value: "2"}
    allowed_value: {label: "1 days ago" value: "1"}
  }

  dimension: date_field_relative {
    type: date
    sql: CURDATE() ;;
  }



  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  parameter: date_parameter {
    type: date_time
  }


  parameter: test_param {
    type: unquoted

  }

  filter: cool_date_filter {
    type: date
  }

  dimension: date_filter_diff {
    type: number
    sql: DATEDIFF({% date_start cool_date_filter %}, {% date_end cool_date_filter %}) ;;
  }

  parameter: country {
    type: string
    allowed_value: {label: "UK" value: "UK"}
    allowed_value: {label: "US" value: "US"}
    allowed_value: {label: "CHINA" value: "CHINA"}
  }

  dimension: test_dynamic {
    sql:
    CASE
    WHEN {% parameter country %} = 'UK' THEN ${user_id}
    WHEN {% parameter country %} = 'US' THEN ${created_week}
    WHEN {% parameter country %} = 'CHINA' THEN ${type_id}
    END ;;
  }
  # dimension: param_value {
  #   type: string
  #   sql: 1 ;;
  #   html: {% test_param._parameter_value %} ;;
  # }

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
    html: {{ rendered_value | date: "%d %m, %yyyy" }} ;;
  }

  dimension: type_id {
    type: number
    sql: ${TABLE}.type_id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.last_name, users.id, users.first_name]
  }
}
