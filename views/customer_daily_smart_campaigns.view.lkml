view: customer_daily_smart_campaigns {
  sql_table_name: public.customer_daily_smart_campaigns ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: active_campaign_count {
    type: number
    sql: ${TABLE}.active_campaign_count ;;
  }

  dimension: campaign_emails_sent {
    type: number
    sql: ${TABLE}.campaign_emails_sent ;;
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

  dimension: total_campaign_count {
    type: number
    sql: ${TABLE}.total_campaign_count ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.account_name, customers.rate_card_name]
  }
}
