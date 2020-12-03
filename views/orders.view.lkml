view: orders {
  sql_table_name: demo_db.orders ;;
  drill_fields: [id]

  parameter: string {
    type: string
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  parameter: date_param {
    type: date
  }

  dimension: dimension_day1 {
    type: date
    sql: {% parameter  date_param %} ;;
  }

  dimension: dimension_day2 {
    type: date
    sql: DATE_ADD(${dimension_day1}, INTERVAL -1 DAY);;
  }

  dimension: yesno_day1 {
    type: yesno
    sql: ${created_date} = ${dimension_day1} ;;
  }

  dimension: yesno_day2 {
    type: yesno
    sql: ${created_date} = ${dimension_day2} ;;
  }

  measure: measure_day1 {
    type: count
    filters: [yesno_day1: "yes"]
  }

  measure: measure_day2 {
    type: count
    filters: [yesno_day2: "yes"]
  }

  dimension: eric_order {
    type: string
    sql: CASE WHEN ${status} = "pending" THEN "1. Pending"
              WHEN ${status} = "cancelled" THEN "2. Canceled"
              WHEN ${status} = "complete" THEN "3. Completed"
              END ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    link: {
      label: "Drill Explore"
      url:"/explore/BigQuery/mvw_ft_orderitems?qid=fZew8NuVsyLURVkfCA0QCZ&origin_space=undefined&toggle=vis
      "
    }
  }
}
