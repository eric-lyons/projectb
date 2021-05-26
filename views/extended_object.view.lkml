include: "/views/**/*.view"
view: extended_object {
  extends: [base_users]
    sql_table_name: demo_db.orders ;;
    drill_fields: [id]

    parameter: string {
      type: string
    }

    filter: time {
      type: date
      convert_tz: no
    }

    dimension: end {
      type: string
      sql: {% date_end time %} ;;
    }

    filter: date_filter_test {
      type: date
    }





    dimension: id {
      primary_key: yes
      type: number
      sql: ${TABLE}.id ;;
      html: {% for counter in (0..9) %}
            {{counter}} {{value}}
              {% endfor %} ;;
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



      dimension: status {
        type: string
        sql: ${TABLE}.status ;;
      }

      dimension: user_id {
        type: number
        # hidden: yes
        sql: ${TABLE}.user_id ;;
      }

  }
