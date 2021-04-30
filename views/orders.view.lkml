view: orders {
  sql_table_name: demo_db.orders ;;
  drill_fields: [id]

  parameter: string {
    type: string
  }

 filter: time {
   type: date
  convert_tz: no
 }

  filter: date_filter_test {
    type: date
  }

  dimension: start_date {
    type: date
    sql: {% date_start date_filter_test %}  ;;
  }

  dimension: check_last_7_days {
    type: number
    sql: DATEDIFF(${start_date},${created_date}) ;;
  }

  dimension: is_last_seven {
    sql: ${check_last_7_days} <= 7 ;;
    type: yesno
  }


measure: eric_case_when_test {
  type: number
  sql: CASE WHEN ${created_month} = ${users.created_month} THEN ${id} + ${test1} + ${test2}
  ELSE 0 END;;
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
    html: {% for counter in (0..9) %}
    {{counter}} {{value}}
      {% endfor %} ;;
  }

  dimension: test1 {
    type: number
    sql: hour(${created_time});;}

  dimension: test2 {
    type: number
    sql: minute(${created_time}) ;;
  }

  dimension: time_formmatedA {
    type: date_time
    sql: ${created_time};;
    html: {{rendered_value | date: "%b %e %l %P" }};;
  }

    dimension: time_formmatedB {
      type: date_time
      sql: ${created_time};;
      html: {{rendered_value | date: "%l %P" }};;
    }

    dimension: final_time {
      type: date_time
      sql: ${created_time};;
      html: {% if test2._value == 0 %}
              {% if test1._value == 16 %}
                {{rendered_value | date: "%b %e %l %P" }}
              {% else %}
                {{rendered_value | date: "%l %P" }}
            {% endif %}
            {% else %}
            {{rendered_value | date: "%l %P" }}
          {% endif %};;
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

  dimension: UNIX1 {
    sql: UNIX_TIMESTAMP(DATE_ADD(${created_raw},INTERVAL 10 DAY)) ;;
    type: number
  }

  dimension: UNIX2 {
    type: number
    sql: UNIX_TIMESTAMP(${created_date}) ;;
  }

  measure: operator {
    type: string
    sql: 1=1 ;;
    html:    {% if UNIX1._value <= UNIX2._value %}

                    "Hello"

                  {% else %}

                  "good bye"

                  {% endif %} ;;


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
    # html:
    # {% if value < 100 %}
    # <div class="vis" style="width: 400px; background-color: #808080; border: 2px solid #000;
    # border-radius: 15px; -moz-border-radius: 15px">

    # <div class="vis-single-value" style="background-color: red; font-color:white; width: 200px; border: 2px solid #000;
    # border-radius: 15px; -moz-border-radius: 15px;">{{ rendered_value }}</div></div>

    # {% elsif value >1000 %}
    # <div class="vis" style="width: 400px; background-color:#808080; border: 2px solid #000;
    # border-radius: 15px; -moz-border-radius: 15px">
    # <div class="vis-single-value" style="background-color: blue; font-color:white; width: 300px;  border: 2px solid #000;
    # border-radius: 15px; -moz-border-radius: 15px;">{{ rendered_value }}
    # </div></div>
    # {% else %}
    # <div class="vis" style="width: 400px; background-color:  #808080; border: 2px solid #000;
    # border-radius: 15px; -moz-border-radius: 15px">
    # <div class="vis-single-value" style="background-color: black; font-color:white;  width: 400px;  border: 2px solid #000;
    # border-radius: 15px; -moz-border-radius: 15px;">{{ rendered_value }}
    # </div></div>
    # {% endif %};;
  }
}
