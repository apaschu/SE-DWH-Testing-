view: sales_taxes {
  sql_table_name: public.sales_taxes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: city_tax_amount_cents {
    type: number
    sql: ${TABLE}.city_tax_amount_cents ;;
  }

  dimension: county_tax_amount_cents {
    type: number
    sql: ${TABLE}.county_tax_amount_cents ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_postal_code {
    type: string
    sql: ${TABLE}.customer_postal_code ;;
  }

  dimension: customer_state {
    type: string
    sql: ${TABLE}.customer_state ;;
  }

  dimension: import_process_id {
    type: number
    sql: ${TABLE}.import_process_id ;;
  }

  dimension: import_process_uuid {
    type: string
    sql: ${TABLE}.import_process_uuid ;;
  }

  dimension_group: invoice {
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
    sql: ${TABLE}.invoice_date ;;
  }

  dimension: invoice_id {
    type: string
    sql: ${TABLE}.invoice_id ;;
  }

  dimension_group: payment {
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
    sql: ${TABLE}.payment_date ;;
  }

  dimension: pre_tax_subtotal_cents {
    type: number
    sql: ${TABLE}.pre_tax_subtotal_cents ;;
  }

  dimension: special_tax_amount_cents {
    type: number
    sql: ${TABLE}.special_tax_amount_cents ;;
  }

  dimension: state_tax_amount_cents {
    type: number
    sql: ${TABLE}.state_tax_amount_cents ;;
  }

  dimension: stripe_invoice_id {
    type: string
    sql: ${TABLE}.stripe_invoice_id ;;
  }

  dimension: stripe_token {
    type: string
    sql: ${TABLE}.stripe_token ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.account_name, customers.rate_card_name]
  }
}
