view: carrier_accounts {
  sql_table_name: public.carrier_accounts ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }

  dimension: account_identifier {
    type: string
    sql: ${TABLE}.account_identifier ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: allows_scan_based_return_labels {
    type: yesno
    sql: ${TABLE}.allows_scan_based_return_labels ;;
  }

  dimension: api_status_message {
    type: string
    sql: ${TABLE}.api_status_message ;;
  }

  dimension: auto_refill_amount_cents {
    type: number
    sql: ${TABLE}.auto_refill_amount_cents ;;
  }

  dimension: bypass_cached_rates {
    type: yesno
    sql: ${TABLE}.bypass_cached_rates ;;
  }

  dimension: carrier_id {
    type: number
    sql: ${TABLE}.carrier_id ;;
  }

  dimension_group: closed_for_esam {
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
    sql: ${TABLE}.closed_for_esam_at ;;
  }

  dimension: contract_id {
    type: string
    sql: ${TABLE}.contract_id ;;
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

  dimension: customer_email {
    type: string
    sql: ${TABLE}.customer_email ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: developer_key {
    type: string
    sql: ${TABLE}.developer_key ;;
  }

  dimension: domestic_consolidator_id {
    type: number
    sql: ${TABLE}.domestic_consolidator_id ;;
  }

  dimension: fedex_smart_post_hub_id {
    type: string
    sql: ${TABLE}.fedex_smart_post_hub_id ;;
  }

  dimension: has_discounted_rates {
    type: yesno
    sql: ${TABLE}.has_discounted_rates ;;
  }

  dimension: has_endicia_extended_first_class {
    type: yesno
    sql: ${TABLE}.has_endicia_extended_first_class ;;
  }

  dimension: has_fedex_etd_activated {
    type: yesno
    sql: ${TABLE}.has_fedex_etd_activated ;;
  }

  dimension: has_fedex_smart_post {
    type: yesno
    sql: ${TABLE}.has_fedex_smart_post ;;
  }

  dimension: has_ups_mail_innovations {
    type: yesno
    sql: ${TABLE}.has_ups_mail_innovations ;;
  }

  dimension: has_ups_sure_post {
    type: yesno
    sql: ${TABLE}.has_ups_sure_post ;;
  }

  dimension: import_process_id {
    type: number
    sql: ${TABLE}.import_process_id ;;
  }

  dimension: import_process_uuid {
    type: string
    sql: ${TABLE}.import_process_uuid ;;
  }

  dimension: international_consolidator_id {
    type: number
    sql: ${TABLE}.international_consolidator_id ;;
  }

  dimension: international_contract_id {
    type: string
    sql: ${TABLE}.international_contract_id ;;
  }

  dimension: invoice_verified {
    type: yesno
    sql: ${TABLE}.invoice_verified ;;
  }

  dimension: minimum_balance_threshold_cents {
    type: number
    sql: ${TABLE}.minimum_balance_threshold_cents ;;
  }

  dimension_group: phone_verification_completed {
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
    sql: ${TABLE}.phone_verification_completed_at ;;
  }

  dimension: phone_verification_status {
    type: string
    sql: ${TABLE}.phone_verification_status ;;
  }

  dimension: rate_card_id {
    type: number
    sql: ${TABLE}.rate_card_id ;;
  }

  dimension: rate_card_type {
    type: string
    sql: ${TABLE}.rate_card_type ;;
  }

  dimension: requester_identifier {
    type: string
    sql: ${TABLE}.requester_identifier ;;
  }

  dimension: reseller_id {
    type: number
    sql: ${TABLE}.reseller_id ;;
  }

  dimension: sub_account_id {
    type: number
    sql: ${TABLE}.sub_account_id ;;
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

  dimension: ups_cost_center {
    type: string
    sql: ${TABLE}.ups_cost_center ;;
  }

  dimension: uses_gap_for_first_class_mail_international {
    type: yesno
    sql: ${TABLE}.uses_gap_for_first_class_mail_international ;;
  }

  dimension: uses_gap_for_priority_mail_express_international {
    type: yesno
    sql: ${TABLE}.uses_gap_for_priority_mail_express_international ;;
  }

  dimension: uses_gap_for_priority_mail_international {
    type: yesno
    sql: ${TABLE}.uses_gap_for_priority_mail_international ;;
  }

  dimension: uses_gap_ship_in {
    type: yesno
    sql: ${TABLE}.uses_gap_ship_in ;;
  }

  dimension: workflow_state {
    type: string
    sql: ${TABLE}.workflow_state ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customer_name, shipments.count, shipments_old.count]
  }
}
