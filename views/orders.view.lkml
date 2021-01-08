view: orders {
  sql_table_name: demo_db.orders ;;
  drill_fields: [id]

  parameter: string {
    type: string
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
    sql: DATE_SUB(CURDATE(), INTERVAL {% parameter date %} DAY) ;;
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
    html:
    {% if value < 100 %}
    <div class="vis" style="width: 400px; background-color: #808080; border: 2px solid #000;
    border-radius: 15px; -moz-border-radius: 15px">

    <div class="vis-single-value" style="background-color: red; font-color:white; width: 200px; border: 2px solid #000;
    border-radius: 15px; -moz-border-radius: 15px;">{{ rendered_value }}</div></div>

    {% elsif value >1000 %}
     <div class="vis" style="width: 400px; background-color:#808080; border: 2px solid #000;
    border-radius: 15px; -moz-border-radius: 15px">
    <div class="vis-single-value" style="background-color: blue; font-color:white; width: 300px;  border: 2px solid #000;
    border-radius: 15px; -moz-border-radius: 15px;">{{ rendered_value }}
    </div></div>
    {% else %}
     <div class="vis" style="width: 400px; background-color:  #808080; border: 2px solid #000;
    border-radius: 15px; -moz-border-radius: 15px">
    <div class="vis-single-value" style="background-color: black; font-color:white;  width: 400px;  border: 2px solid #000;
    border-radius: 15px; -moz-border-radius: 15px;">{{ rendered_value }}
    </div></div>
    {% endif %};;
  }
}
