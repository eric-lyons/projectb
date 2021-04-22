view: test_dt {
  derived_table: {
    sql: SELECT
          `zip` AS `users.zip`,
          `state` AS `users.state`,
          `id` AS `users.id`,
          `gender` AS `users.gender`,
          `first_name` AS `users.first_name`,
              (DATE(`created_at`)) AS `users.created_date`,
          COUNT(*) AS `users.count`
      FROM
          `demo_db`.`users` AS `users`

      WHERE
      {% if eric_date_test._parameter_value == "'now'" %}
          EXTRACT(MONTH FROM (DATE(`created_at`))) = EXTRACT(MONTH FROM CURDATE())
      {% elsif eric_date_test._parameter_value == "'jan'" %}
          EXTRACT(MONTH FROM (DATE(`created_at`))) = 1
      {% else %}
           EXTRACT(MONTH FROM (DATE(`created_at`))) > 0
      {% endif %}
      GROUP BY
          1,
          2,
          3,
          4,
          5,
          6
      ORDER BY
          (DATE(`created_at`)) DESC
      LIMIT 500
       ;;
  }

  parameter: eric_date_test {
    type: string
    allowed_value: {value:"now"}
    allowed_value: {value:"jan"}
    allowed_value: {value:"oct"}
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: users_zip {
    type: number
    sql: ${TABLE}.`users.zip` ;;
  }

  dimension: users_state {
    type: string
    sql: ${TABLE}.`users.state` ;;
  }

  dimension: users_id {
    type: number
    sql: ${TABLE}.`users.id` ;;
    primary_key: yes
  }

  dimension: users_gender {
    type: string
    sql: ${TABLE}.`users.gender` ;;
  }

  dimension: users_first_name {
    type: string
    sql: ${TABLE}.`users.first_name` ;;
  }

  dimension: users_created_date {
    type: date
    sql: ${TABLE}.`users.created_date` ;;
  }

  dimension: users_count {
    type: number
    sql: ${TABLE}.`users.count` ;;
  }

  set: detail {
    fields: [
      users_zip,
      users_state,
      users_id,
      users_gender,
      users_first_name,
      users_created_date,
      users_count
    ]
  }
}
