view: endicia_shipments {
  sql_table_name: public.endicia_shipments ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: apo_fpo {
    type: string
    sql: ${TABLE}.apo_fpo ;;
  }

  dimension: billing_plan {
    type: string
    sql: ${TABLE}.billing_plan ;;
  }

  dimension: carrier_service_id {
    type: number
    sql: ${TABLE}.carrier_service_id ;;
  }

  dimension: container_type {
    type: string
    sql: ${TABLE}.container_type ;;
  }

  dimension: credit_card_fee {
    type: number
    sql: ${TABLE}.credit_card_fee ;;
  }

  dimension: credit_card_fee_cents {
    type: number
    sql: ${TABLE}.credit_card_fee_cents ;;
  }

  dimension: cubic_value {
    type: string
    sql: ${TABLE}.cubic_value ;;
  }

  dimension: cubic_value_retail {
    type: string
    sql: ${TABLE}.cubic_value_retail ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.customer ;;
  }

  dimension: customer_contact_name {
    type: string
    sql: ${TABLE}.customer_contact_name ;;
  }

  dimension: destination_country {
    type: string
    sql: ${TABLE}.destination_country ;;
  }

  dimension: destination_postal_code {
    type: string
    sql: ${TABLE}.destination_postal_code ;;
  }

  dimension: endicia_account_identifier {
    type: string
    sql: ${TABLE}.endicia_account_identifier ;;
  }

  dimension: endicia_contract_id {
    type: string
    sql: ${TABLE}.endicia_contract_id ;;
  }

  dimension: endicia_fee_adjusted_cents {
    type: number
    sql: ${TABLE}.endicia_fee_adjusted_cents ;;
  }

  dimension: endicia_fee_cents {
    type: number
    sql: ${TABLE}.endicia_fee_cents ;;
  }

  dimension: endicia_partner_code {
    type: string
    sql: ${TABLE}.endicia_partner_code ;;
  }

  dimension: endicia_rate_plan {
    type: string
    sql: ${TABLE}.endicia_rate_plan ;;
  }

  dimension: endicia_requester_description {
    type: string
    sql: ${TABLE}.endicia_requester_description ;;
  }

  dimension: endicia_requester_id {
    type: string
    sql: ${TABLE}.endicia_requester_id ;;
  }

  dimension: endicia_retail_transaction_id {
    type: number
    sql: ${TABLE}.endicia_retail_transaction_id ;;
  }

  dimension: endicia_tracking_number {
    type: string
    sql: ${TABLE}.endicia_tracking_number ;;
  }

  dimension: extra_service_fee_cents {
    type: number
    sql: ${TABLE}.extra_service_fee_cents ;;
  }

  dimension: frequency_key {
    type: string
    sql: ${TABLE}.frequency_key ;;
  }

  dimension: height_in_inches {
    type: number
    sql: ${TABLE}.height_in_inches ;;
  }

  dimension: import_process_id {
    type: number
    sql: ${TABLE}.import_process_id ;;
  }

  dimension: import_process_uuid {
    type: string
    sql: ${TABLE}.import_process_uuid ;;
  }

  dimension: is_cubic {
    type: yesno
    sql: ${TABLE}.is_cubic ;;
  }

  dimension: is_cubic_retail {
    type: string
    sql: ${TABLE}.is_cubic_retail ;;
  }

  dimension: is_international {
    type: yesno
    sql: ${TABLE}.is_international ;;
  }

  dimension: length_in_inches {
    type: number
    sql: ${TABLE}.length_in_inches ;;
  }

  dimension: mail_class {
    type: string
    sql: ${TABLE}.mail_class ;;
  }

  dimension: mail_class_country_rate_group {
    type: string
    sql: ${TABLE}.mail_class_country_rate_group ;;
  }

  dimension: master_meter_id {
    type: string
    sql: ${TABLE}.master_meter_id ;;
  }

  dimension: origin_postal_code {
    type: string
    sql: ${TABLE}.origin_postal_code ;;
  }

  dimension: original_mail_class {
    type: string
    sql: ${TABLE}.original_mail_class ;;
  }

  dimension: original_mail_class_retail {
    type: string
    sql: ${TABLE}.original_mail_class_retail ;;
  }

  dimension: packaging_type_indicator {
    type: string
    sql: ${TABLE}.packaging_type_indicator ;;
  }

  dimension: parcel {
    type: string
    sql: ${TABLE}.parcel ;;
  }

  dimension: partner {
    type: string
    sql: ${TABLE}.partner ;;
  }

  dimension: partner_share {
    type: string
    sql: ${TABLE}.partner_share ;;
  }

  dimension: postage_balance_cents {
    type: number
    sql: ${TABLE}.postage_balance_cents ;;
  }

  dimension: postage_deposit_amount_cents {
    type: number
    sql: ${TABLE}.postage_deposit_amount_cents ;;
  }

  dimension: postage_payment_method {
    type: string
    sql: ${TABLE}.postage_payment_method ;;
  }

  dimension: retail_postage_rate_cents {
    type: number
    sql: ${TABLE}.retail_postage_rate_cents ;;
  }

  dimension: source_filename {
    type: string
    sql: ${TABLE}.source_filename ;;
  }

  dimension_group: transacted {
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
    sql: ${TABLE}.transacted_at ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}.transaction_type ;;
  }

  dimension: usps_postage_account_number {
    type: string
    sql: ${TABLE}.usps_postage_account_number ;;
  }

  dimension: usps_zone {
    type: string
    sql: ${TABLE}.usps_zone ;;
  }

  dimension: weight_in_ounces {
    type: number
    sql: ${TABLE}.weight_in_ounces ;;
  }

  dimension: wholesale_postage_rate_cents {
    type: number
    sql: ${TABLE}.wholesale_postage_rate_cents ;;
  }

  dimension: width_in_inches {
    type: number
    sql: ${TABLE}.width_in_inches ;;
  }

  measure: count {
    type: count
    drill_fields: [id, source_filename, customer_contact_name]
  }
}
