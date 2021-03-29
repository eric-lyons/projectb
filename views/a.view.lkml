view: a {
  derived_table: {
    sql: SELECT
          orders.status  AS `orders.status`,
          orders.id  AS `orders.id`,
              (DATE(CONVERT_TZ(orders.created_at ,'UTC','America/Los_Angeles'))) AS `orders.created_date`
      FROM demo_db.orders  AS orders

      WHERE {% date_start date_test %} < CURDATE()
      GROUP BY 1,2,3
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: orders_status {
    type: string
    sql: ${TABLE}.`orders.status` ;;
  }

  dimension: orders_id {
    type: number
    sql: ${TABLE}.`orders.id` ;;
  }

  dimension: orders_created_date {
    type: date
    sql: ${TABLE}.`orders.created_date` ;;
  }

  filter: date_test {
    type: date
  }

  set: detail {
    fields: [orders_status, orders_id, orders_created_date]
  }
}

test: data_test_templated_filter {
  explore_source: a {
    column: orders_status {
      field: a.orders_status
    }
    column: count {
      field: a.count
    }
      filters: [a.date_test: "2018/11/06",
    a.orders_status: "complete"]
    }

    assert: count_expected {
      expression: ${a.count} = 31377 ;;
    }
}
