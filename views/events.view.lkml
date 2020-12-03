view: events {
  sql_table_name:
    -- if prod -- demo_db.events2
    -- if dev -- demo_db.events
;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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
