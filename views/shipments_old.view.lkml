view: shipments_old {
  sql_table_name: public.shipments_old ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: agent {
    type: string
    sql: ${TABLE}.agent ;;
  }

  dimension: carrier_account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.carrier_account_id ;;
  }

  dimension: carrier_id {
    type: number
    sql: ${TABLE}.carrier_id ;;
  }

  dimension: carrier_key {
    type: string
    sql: ${TABLE}.carrier_key ;;
  }

  dimension: carrier_packaging_key {
    type: string
    sql: ${TABLE}.carrier_packaging_key ;;
  }

  dimension: carrier_packaging_option_id {
    type: number
    sql: ${TABLE}.carrier_packaging_option_id ;;
  }

  dimension: carrier_service_id {
    type: number
    sql: ${TABLE}.carrier_service_id ;;
  }

  dimension: carrier_service_key {
    type: string
    sql: ${TABLE}.carrier_service_key ;;
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

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension_group: customer_signup {
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
    sql: ${TABLE}.customer_signup_date ;;
  }

  dimension: destination_address_md5 {
    type: string
    sql: ${TABLE}.destination_address_md5 ;;
  }

  dimension: destination_country {
    type: string
    sql: ${TABLE}.destination_country ;;
  }

  dimension: destination_email_md5 {
    type: string
    sql: ${TABLE}.destination_email_md5 ;;
  }

  dimension: destination_postal_code {
    type: string
    sql: ${TABLE}.destination_postal_code ;;
  }

  dimension: fees_cents {
    type: number
    sql: ${TABLE}.fees_cents ;;
  }

  dimension: import_process_id {
    type: number
    sql: ${TABLE}.import_process_id ;;
  }

  dimension: import_process_uuid {
    type: string
    sql: ${TABLE}.import_process_uuid ;;
  }

  dimension: insurance_cost_cents {
    type: number
    sql: ${TABLE}.insurance_cost_cents ;;
  }

  dimension: insurance_price_cents {
    type: number
    sql: ${TABLE}.insurance_price_cents ;;
  }

  dimension: is_canceled {
    type: yesno
    sql: ${TABLE}.is_canceled ;;
  }

  dimension: is_gap_label_returned {
    type: yesno
    sql: ${TABLE}.is_gap_label_returned ;;
  }

  dimension: is_gap_requested {
    type: yesno
    sql: ${TABLE}.is_gap_requested ;;
  }

  dimension: is_gap_ship_in {
    type: yesno
    sql: ${TABLE}.is_gap_ship_in ;;
  }

  dimension: is_international {
    type: yesno
    sql: ${TABLE}.is_international ;;
  }

  dimension: is_partner_shipment {
    type: yesno
    sql: ${TABLE}.is_partner_shipment ;;
  }

  dimension: is_prime {
    type: yesno
    sql: ${TABLE}.is_prime ;;
  }

  dimension: is_saved_carrier_default {
    type: yesno
    sql: ${TABLE}.is_saved_carrier_default ;;
  }

  dimension: marginable {
    type: yesno
    sql: ${TABLE}.marginable ;;
  }

  dimension: order_number {
    type: string
    sql: ${TABLE}.order_number ;;
  }

  dimension: order_source {
    type: string
    sql: ${TABLE}.order_source ;;
  }

  dimension: origin_postal_code {
    type: string
    sql: ${TABLE}.origin_postal_code ;;
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

  dimension: plan {
    type: string
    sql: ${TABLE}.plan ;;
  }

  dimension: postage_cents {
    type: number
    sql: ${TABLE}.postage_cents ;;
  }

  dimension: rate_provider {
    type: string
    sql: ${TABLE}.rate_provider ;;
  }

  dimension: rate_quote_source {
    type: string
    sql: ${TABLE}.rate_quote_source ;;
  }

  dimension: return_label_tracking_number {
    type: string
    sql: ${TABLE}.return_label_tracking_number ;;
  }

  dimension: saved_carrier_selection {
    type: string
    sql: ${TABLE}.saved_carrier_selection ;;
  }

  dimension: service_type {
    type: string
    sql: ${TABLE}.service_type ;;
  }

  dimension_group: shipment {
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
    sql: ${TABLE}.shipment_date ;;
  }

  dimension: shipping_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.shipping_paid ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: store {
    type: string
    sql: ${TABLE}.store ;;
  }

  dimension: tracking_number {
    type: string
    sql: ${TABLE}.tracking_number ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }

  dimension: zone {
    type: number
    sql: ${TABLE}.zone ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      customer_name,
      customers.id,
      customers.account_name,
      customers.rate_card_name,
      carrier_accounts.id,
      carrier_accounts.customer_name
    ]
  }
}
