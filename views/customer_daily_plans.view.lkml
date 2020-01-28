view: customer_daily_plans {
  sql_table_name: public.customer_daily_plans ;;
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
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: import_process_uuid {
    type: string
    sql: ${TABLE}.import_process_uuid ;;
  }

  dimension: plan {
    type: string
    sql: ${TABLE}.plan ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.account_name, customers.rate_card_name]
  }
}
