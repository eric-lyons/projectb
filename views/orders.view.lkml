view: orders {
  sql_table_name: demo_db.orders ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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
    drill_fields: [id, users.last_name, users.id, users.first_name, order_items.count]
  }
}
