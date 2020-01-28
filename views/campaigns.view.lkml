view: campaigns {
  sql_table_name: public.campaigns ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension_group: approved {
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
    sql: ${TABLE}.approved_at ;;
  }

  dimension_group: archived {
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
    sql: ${TABLE}.archived_at ;;
  }

  dimension_group: blocked {
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
    sql: ${TABLE}.blocked_at ;;
  }

  dimension: bounced {
    type: number
    sql: ${TABLE}.bounced ;;
  }

  dimension: buyer_emailable_count {
    type: number
    sql: ${TABLE}.buyer_emailable_count ;;
  }

  dimension: campaign_status {
    type: number
    sql: ${TABLE}.campaign_status ;;
  }

  dimension_group: check_acceptance {
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
    sql: ${TABLE}.check_acceptance_at ;;
  }

  dimension: clicked {
    type: number
    sql: ${TABLE}.clicked ;;
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

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: default_campaign_key {
    type: string
    sql: ${TABLE}.default_campaign_key ;;
  }

  dimension: delivered {
    type: number
    sql: ${TABLE}.delivered ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: dropped {
    type: number
    sql: ${TABLE}.dropped ;;
  }

  dimension: emails_clicked {
    type: number
    sql: ${TABLE}.emails_clicked ;;
  }

  dimension: import_process_id {
    type: number
    sql: ${TABLE}.import_process_id ;;
  }

  dimension: import_process_uuid {
    type: string
    sql: ${TABLE}.import_process_uuid ;;
  }

  dimension_group: in_progress {
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
    sql: ${TABLE}.in_progress_at ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension_group: on_hold {
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
    sql: ${TABLE}.on_hold_at ;;
  }

  dimension: opened {
    type: number
    sql: ${TABLE}.opened ;;
  }

  dimension_group: released {
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
    sql: ${TABLE}.released_at ;;
  }

  dimension: reported_as_spam {
    type: number
    sql: ${TABLE}.reported_as_spam ;;
  }

  dimension: revenue_generated {
    type: number
    sql: ${TABLE}.revenue_generated ;;
  }

  dimension_group: scheduled {
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
    sql: ${TABLE}.scheduled_at ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_date ;;
  }

  dimension: stats {
    type: string
    sql: ${TABLE}.stats ;;
  }

  dimension: subject_line {
    type: string
    sql: ${TABLE}.subject_line ;;
  }

  dimension_group: tested {
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
    sql: ${TABLE}.tested_at ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: unsubscribed {
    type: number
    sql: ${TABLE}.unsubscribed ;;
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
    drill_fields: [id, name, customers.id, customers.account_name, customers.rate_card_name]
  }
}
