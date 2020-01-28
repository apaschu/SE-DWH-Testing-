view: stores {
  sql_table_name: public.stores ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: api_key {
    type: string
    sql: ${TABLE}.api_key ;;
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

  dimension: disable_scheduled_downloads {
    type: yesno
    sql: ${TABLE}.disable_scheduled_downloads ;;
  }

  dimension: display_product_options {
    type: yesno
    sql: ${TABLE}.display_product_options ;;
  }

  dimension: enabled {
    type: yesno
    sql: ${TABLE}.enabled ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.external_id ;;
  }

  dimension: import_process_id {
    type: number
    sql: ${TABLE}.import_process_id ;;
  }

  dimension: import_process_uuid {
    type: string
    sql: ${TABLE}.import_process_uuid ;;
  }

  dimension_group: last_downloaded {
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
    sql: ${TABLE}.last_downloaded_at ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: ship_from_postal_code {
    type: string
    sql: ${TABLE}.ship_from_postal_code ;;
  }

  dimension: starting_order {
    type: string
    sql: ${TABLE}.starting_order ;;
  }

  dimension_group: starting_order {
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
    sql: ${TABLE}.starting_order_date ;;
  }

  dimension: starting_order_limit {
    type: number
    sql: ${TABLE}.starting_order_limit ;;
  }

  dimension: store_type_id {
    type: number
    sql: ${TABLE}.store_type_id ;;
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

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  dimension: workflow_state {
    type: string
    sql: ${TABLE}.workflow_state ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      username,
      customer_name,
      customers.id,
      customers.account_name,
      customers.rate_card_name,
      signup_form_users.count
    ]
  }
}
