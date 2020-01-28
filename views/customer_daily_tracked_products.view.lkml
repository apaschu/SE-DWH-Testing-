view: customer_daily_tracked_products {
  sql_table_name: public.customer_daily_tracked_products ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: plan_add_on_key {
    type: string
    sql: ${TABLE}.plan_add_on_key ;;
  }

  dimension: tracked_products {
    type: number
    sql: ${TABLE}.tracked_products ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.account_name, customers.rate_card_name]
  }
}
