view: products {
  sql_table_name: demo_db.products ;;
  drill_fields: [id]
  view_label: "1"

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  filter: date {
    type: date
  }

  dimension: start_date {
    type: date
    sql: {% date_start date %}  ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }



  parameter: test1 {
    type: unquoted
    allowed_value: {value:"Airport"}
    allowed_value: {value:"City"}
    allowed_value: {value:"Country"}
    allowed_value: {value:"Region"}
  }

  dimension: Departure {
    label:  "{% assign airport = 'Departure Airport' -%} {% assign region = 'region' -%} {% assign city = 'Departure City' -%} {% assign hello = 'Hello' -%}
    {% if test1._parameter_value == 'Airport' %}
    {{ airport | strip}}
    {% elsif test1._parameter_value == 'City' %} {{city | strip}}
    {% elsif test1._parameter_value == 'Country' %} Departure Country
    {% elsif test1._parameter_value == 'Region' %} {{ region | strip}}
    {% else %}  {{hello | strip}} {% endif %}"
    sql: ${brand} ;;

}
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
    label_from_parameter: test1
  }

  dimension: hashed {
    type: string
    sql: ${brand} ;;
    ##html:  {{ products.category._value |  md5 }} ;;
  }

  measure: category_2 {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
    drill_fields: [sku, item_name, rank]
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count]
  }
}
