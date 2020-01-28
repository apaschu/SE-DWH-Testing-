view: stamps_shipments {
  sql_table_name: public.stamps_shipments ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: account_balance_id {
    type: number
    sql: ${TABLE}.account_balance_id ;;
  }

  dimension: account_balance_id_original {
    type: number
    value_format_name: id
    sql: ${TABLE}.account_balance_id_original ;;
  }

  dimension: apo_fpo {
    type: yesno
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

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: credit_card_fee_cents {
    type: number
    sql: ${TABLE}.credit_card_fee_cents ;;
  }

  dimension: cubic_pricing_cents {
    type: number
    sql: ${TABLE}.cubic_pricing_cents ;;
  }

  dimension: cubic_pricing_retail_cents {
    type: number
    sql: ${TABLE}.cubic_pricing_retail_cents ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: destination_country {
    type: string
    sql: ${TABLE}.destination_country ;;
  }

  dimension: destination_zip_code {
    type: string
    sql: ${TABLE}.destination_zip_code ;;
  }

  dimension: endicia_account_id {
    type: string
    sql: ${TABLE}.endicia_account_id ;;
  }

  dimension: extra_service_fee_cents {
    type: number
    sql: ${TABLE}.extra_service_fee_cents ;;
  }

  dimension: import_process_uuid {
    type: string
    sql: ${TABLE}.import_process_uuid ;;
  }

  dimension: integration_id {
    type: string
    sql: ${TABLE}.integration_id ;;
  }

  dimension: integration_name {
    type: string
    sql: ${TABLE}.integration_name ;;
  }

  dimension: integrator_transaction_id {
    type: string
    sql: ${TABLE}.integrator_transaction_id ;;
  }

  dimension: international_country_group {
    type: string
    sql: ${TABLE}.international_country_group ;;
  }

  dimension: is_cubic {
    type: yesno
    sql: ${TABLE}.is_cubic ;;
  }

  dimension: is_cubic_retail {
    type: yesno
    sql: ${TABLE}.is_cubic_retail ;;
  }

  dimension: is_international {
    type: yesno
    sql: ${TABLE}.is_international ;;
  }

  dimension: mail_class {
    type: string
    sql: ${TABLE}.mail_class ;;
  }

  dimension: meter_number {
    type: number
    sql: ${TABLE}.meter_number ;;
  }

  dimension: origin_zip_code {
    type: string
    sql: ${TABLE}.origin_zip_code ;;
  }

  dimension: package_height {
    type: number
    sql: ${TABLE}.package_height ;;
  }

  dimension: package_length {
    type: number
    sql: ${TABLE}.package_length ;;
  }

  dimension: package_type {
    type: string
    sql: ${TABLE}.package_type ;;
  }

  dimension: package_width {
    type: number
    sql: ${TABLE}.package_width ;;
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

  dimension: rate_set_description_core {
    type: string
    sql: ${TABLE}.rate_set_description_core ;;
  }

  dimension: rate_set_description_sas {
    type: string
    sql: ${TABLE}.rate_set_description_sas ;;
  }

  dimension: rate_set_id_core {
    type: number
    value_format_name: id
    sql: ${TABLE}.rate_set_id_core ;;
  }

  dimension: rate_set_id_sas {
    type: number
    value_format_name: id
    sql: ${TABLE}.rate_set_id_sas ;;
  }

  dimension: retail_price_cents {
    type: number
    sql: ${TABLE}.retail_price_cents ;;
  }

  dimension: se_mail_class {
    type: string
    sql: ${TABLE}.se_mail_class ;;
  }

  dimension: service_provider {
    type: string
    sql: ${TABLE}.service_provider ;;
  }

  dimension: source_filename {
    type: string
    sql: ${TABLE}.source_filename ;;
  }

  dimension: stamps_customer_id {
    type: number
    sql: ${TABLE}.stamps_customer_id ;;
  }

  dimension: stamps_transaction_id {
    type: string
    sql: ${TABLE}.stamps_transaction_id ;;
  }

  dimension: tracking_number {
    type: string
    sql: ${TABLE}.tracking_number ;;
  }

  dimension_group: transaction_date_gmt {
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
    sql: ${TABLE}.transaction_date_gmt ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}.transaction_type ;;
  }

  dimension: usps_cost_cents {
    type: number
    sql: ${TABLE}.usps_cost_cents ;;
  }

  dimension: weight_ounces {
    type: number
    sql: ${TABLE}.weight_ounces ;;
  }

  dimension: zone {
    type: string
    sql: ${TABLE}.zone ;;
  }

  measure: count {
    type: count
    drill_fields: [id, company_name, customer_name, integration_name, source_filename]
  }
}
