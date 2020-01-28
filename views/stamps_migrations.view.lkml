view: stamps_migrations {
  sql_table_name: public.stamps_migrations ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension_group: canceled {
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
    sql: ${TABLE}.canceled_at ;;
  }

  dimension_group: completed {
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
    sql: ${TABLE}.completed_at ;;
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

  dimension_group: customer_authorization_postponed_until {
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
    sql: ${TABLE}.customer_authorization_postponed_until ;;
  }

  dimension_group: customer_authorized {
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
    sql: ${TABLE}.customer_authorized_at ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: endicia_account_id {
    type: number
    sql: ${TABLE}.endicia_account_id ;;
  }

  dimension: failure_message {
    type: string
    sql: ${TABLE}.failure_message ;;
  }

  dimension_group: internal_authorized {
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
    sql: ${TABLE}.internal_authorized_at ;;
  }

  dimension: stamps_account_id {
    type: number
    sql: ${TABLE}.stamps_account_id ;;
  }

  dimension_group: stamps_authorized {
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
    sql: ${TABLE}.stamps_authorized_at ;;
  }

  dimension: stamps_rejection {
    type: string
    sql: ${TABLE}.stamps_rejection ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.account_name, customers.rate_card_name]
  }
}
