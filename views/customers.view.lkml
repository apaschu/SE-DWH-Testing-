view: customers {
  sql_table_name: public.customers ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }

  dimension: active_products {
    type: number
    sql: ${TABLE}.active_products ;;
  }

  dimension: active_sub_accounts {
    type: number
    sql: ${TABLE}.active_sub_accounts ;;
  }

  dimension: agent {
    type: string
    sql: ${TABLE}.agent ;;
  }

  dimension: allow_amazon_fulfillment {
    type: yesno
    sql: ${TABLE}.allow_amazon_fulfillment ;;
  }

  dimension: amzn_ss_added_on_reg {
    type: yesno
    sql: ${TABLE}.amzn_ss_added_on_reg ;;
  }

  dimension: automated_campaigns_enabled {
    type: yesno
    sql: ${TABLE}.automated_campaigns_enabled ;;
  }

  dimension: calculated_registration_state {
    type: string
    sql: ${TABLE}.calculated_registration_state ;;
  }

  dimension_group: cancelation {
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
    sql: ${TABLE}.cancelation_date ;;
  }

  dimension_group: cm_added {
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
    sql: ${TABLE}.cm_added_at ;;
  }

  dimension: cm_added_on_reg {
    type: yesno
    sql: ${TABLE}.cm_added_on_reg ;;
  }

  dimension_group: cm_removed {
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
    sql: ${TABLE}.cm_removed_at ;;
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

  dimension: data_center {
    type: string
    sql: ${TABLE}.data_center ;;
  }

  dimension: data_center_id {
    type: number
    sql: ${TABLE}.data_center_id ;;
  }

  dimension: default_address {
    type: string
    sql: ${TABLE}.default_address ;;
  }

  dimension: default_city {
    type: string
    sql: ${TABLE}.default_city ;;
  }

  dimension: default_postal_code {
    type: string
    sql: ${TABLE}.default_postal_code ;;
  }

  dimension: default_state {
    type: string
    sql: ${TABLE}.default_state ;;
  }

  dimension: direct_usps_delivery_tracking {
    type: yesno
    sql: ${TABLE}.direct_usps_delivery_tracking ;;
  }

  dimension: download_prime_orders {
    type: yesno
    sql: ${TABLE}.download_prime_orders ;;
  }

  dimension: dsc {
    type: string
    sql: ${TABLE}.dsc ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: esam {
    type: yesno
    sql: ${TABLE}.esam ;;
  }

  dimension_group: esam_conversion_postponed {
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
    sql: ${TABLE}.esam_conversion_postponed_at ;;
  }

  dimension_group: esam_migrated {
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
    sql: ${TABLE}.esam_migrated_at ;;
  }

  dimension: fba_inventory {
    type: yesno
    sql: ${TABLE}.fba_inventory ;;
  }

  dimension: fba_orders {
    type: yesno
    sql: ${TABLE}.fba_orders ;;
  }

  dimension_group: first_campaign_sent {
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
    sql: ${TABLE}.first_campaign_sent_at ;;
  }

  dimension_group: first_fba_shipment {
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
    sql: ${TABLE}.first_fba_shipment_date ;;
  }

  dimension_group: first_shipment {
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
    sql: ${TABLE}.first_shipment_date ;;
  }

  dimension_group: first_shipment_date {
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
    sql: ${TABLE}.first_shipment_date_time ;;
  }

  dimension: fraudulent {
    type: yesno
    sql: ${TABLE}.fraudulent ;;
  }

  dimension: free_amazon_prime {
    type: yesno
    sql: ${TABLE}.free_amazon_prime ;;
  }

  dimension: google_client_id {
    type: string
    sql: ${TABLE}.google_client_id ;;
  }

  dimension: has_addl_users {
    type: yesno
    sql: ${TABLE}.has_addl_users ;;
  }

  dimension: has_branding {
    type: yesno
    sql: ${TABLE}.has_branding ;;
  }

  dimension: has_connect_easy_printer {
    type: yesno
    sql: ${TABLE}.has_connect_easy_printer ;;
  }

  dimension: has_connect_easy_scale {
    type: yesno
    sql: ${TABLE}.has_connect_easy_scale ;;
  }

  dimension: has_customer_marketing {
    type: yesno
    sql: ${TABLE}.has_customer_marketing ;;
  }

  dimension: has_default_shipment_insurance_rule {
    type: yesno
    sql: ${TABLE}.has_default_shipment_insurance_rule ;;
  }

  dimension: has_generated_recommendation {
    type: yesno
    sql: ${TABLE}.has_generated_recommendation ;;
  }

  dimension: has_inventory {
    type: yesno
    sql: ${TABLE}.has_inventory ;;
  }

  dimension: has_inventory_adjustment {
    type: yesno
    sql: ${TABLE}.has_inventory_adjustment ;;
  }

  dimension: has_order_categories {
    type: yesno
    sql: ${TABLE}.has_order_categories ;;
  }

  dimension: has_quickbooks_addon {
    type: yesno
    sql: ${TABLE}.has_quickbooks_addon ;;
  }

  dimension: has_reporting {
    type: yesno
    sql: ${TABLE}.has_reporting ;;
  }

  dimension: has_saved_custom_packaging {
    type: yesno
    sql: ${TABLE}.has_saved_custom_packaging ;;
  }

  dimension: has_se_created_endicia_account {
    type: yesno
    sql: ${TABLE}.has_se_created_endicia_account ;;
  }

  dimension: has_se_created_stamps_account {
    type: yesno
    sql: ${TABLE}.has_se_created_stamps_account ;;
  }

  dimension: has_shipping_rules {
    type: yesno
    sql: ${TABLE}.has_shipping_rules ;;
  }

  dimension: has_unmigrated_fedex_account {
    type: yesno
    sql: ${TABLE}.has_unmigrated_fedex_account ;;
  }

  dimension_group: im_added {
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
    sql: ${TABLE}.im_added_at ;;
  }

  dimension: im_added_on_reg {
    type: yesno
    sql: ${TABLE}.im_added_on_reg ;;
  }

  dimension_group: im_first_interaction {
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
    sql: ${TABLE}.im_first_interaction_at ;;
  }

  dimension_group: im_last_interaction {
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
    sql: ${TABLE}.im_last_interaction_at ;;
  }

  dimension_group: im_removed {
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
    sql: ${TABLE}.im_removed_at ;;
  }

  dimension: import_process_id {
    type: number
    sql: ${TABLE}.import_process_id ;;
  }

  dimension: import_process_uuid {
    type: string
    sql: ${TABLE}.import_process_uuid ;;
  }

  dimension: insure_all_domestic {
    type: yesno
    sql: ${TABLE}.insure_all_domestic ;;
  }

  dimension: insure_all_international {
    type: yesno
    sql: ${TABLE}.insure_all_international ;;
  }

  dimension: inventory_promo_offer {
    type: string
    sql: ${TABLE}.inventory_promo_offer ;;
  }

  dimension: inventory_synced_store_count {
    type: number
    sql: ${TABLE}.inventory_synced_store_count ;;
  }

  dimension: is_billed_monthly {
    type: yesno
    sql: ${TABLE}.is_billed_monthly ;;
  }

  dimension: is_blocked {
    type: yesno
    sql: ${TABLE}.is_blocked ;;
  }

  dimension: is_migrated {
    type: yesno
    sql: ${TABLE}.is_migrated ;;
  }

  dimension: is_rate_card_locked {
    type: yesno
    sql: ${TABLE}.is_rate_card_locked ;;
  }

  dimension: is_top_customer {
    type: yesno
    sql: ${TABLE}.is_top_customer ;;
  }

  dimension: last_attempted_feature {
    type: string
    sql: ${TABLE}.last_attempted_feature ;;
  }

  dimension_group: last_fba_shipment {
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
    sql: ${TABLE}.last_fba_shipment_date ;;
  }

  dimension_group: last_recommendation_sent {
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
    sql: ${TABLE}.last_recommendation_sent_at ;;
  }

  dimension_group: last_shipment {
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
    sql: ${TABLE}.last_shipment_date ;;
  }

  dimension_group: last_smart_campaign_email_sent {
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
    sql: ${TABLE}.last_smart_campaign_email_sent_at ;;
  }

  dimension_group: most_recent_billing {
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
    sql: ${TABLE}.most_recent_billing_at ;;
  }

  dimension_group: most_recent_campaign_sent {
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
    sql: ${TABLE}.most_recent_campaign_sent_at ;;
  }

  dimension: partner {
    type: string
    sql: ${TABLE}.partner ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: plan {
    type: string
    sql: ${TABLE}.plan ;;
  }

  dimension: preferred_plan {
    type: string
    sql: ${TABLE}.preferred_plan ;;
  }

  dimension: preferred_store_platform {
    type: string
    sql: ${TABLE}.preferred_store_platform ;;
  }

  dimension: products {
    type: number
    sql: ${TABLE}.products ;;
  }

  dimension: rate_card_name {
    type: string
    sql: ${TABLE}.rate_card_name ;;
  }

  dimension: recommend_on_campaigns {
    type: yesno
    sql: ${TABLE}.recommend_on_campaigns ;;
  }

  dimension: recommend_on_packing_slips {
    type: yesno
    sql: ${TABLE}.recommend_on_packing_slips ;;
  }

  dimension: recommend_on_shipment_notifications {
    type: yesno
    sql: ${TABLE}.recommend_on_shipment_notifications ;;
  }

  dimension: recommendations_enabled {
    type: yesno
    sql: ${TABLE}.recommendations_enabled ;;
  }

  dimension: referred_by {
    type: string
    sql: ${TABLE}.referred_by ;;
  }

  dimension: referred_through {
    type: string
    sql: ${TABLE}.referred_through ;;
  }

  dimension_group: signup {
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
    sql: ${TABLE}.signup_date ;;
  }

  dimension: simple_ux_mode {
    type: yesno
    sql: ${TABLE}.simple_ux_mode ;;
  }

  dimension_group: starter_upgrade_action {
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
    sql: ${TABLE}.starter_upgrade_action_date ;;
  }

  dimension: starter_upgrade_offer {
    type: string
    sql: ${TABLE}.starter_upgrade_offer ;;
  }

  dimension: store_count {
    type: number
    sql: ${TABLE}.store_count ;;
  }

  dimension: stripe_token {
    type: string
    sql: ${TABLE}.stripe_token ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension_group: terms_accepted {
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
    sql: ${TABLE}.terms_accepted_at ;;
  }

  dimension: time_zone {
    type: string
    sql: ${TABLE}.time_zone ;;
  }

  dimension: total_app_shipments {
    type: number
    sql: ${TABLE}.total_app_shipments ;;
  }

  dimension: total_available_orders {
    type: number
    sql: ${TABLE}.total_available_orders ;;
  }

  dimension: total_buyers {
    type: number
    sql: ${TABLE}.total_buyers ;;
  }

  dimension: total_campaigns {
    type: number
    sql: ${TABLE}.total_campaigns ;;
  }

  dimension: total_downloaded_orders {
    type: number
    sql: ${TABLE}.total_downloaded_orders ;;
  }

  dimension: total_fba_shipments {
    type: number
    sql: ${TABLE}.total_fba_shipments ;;
  }

  dimension: total_recommendations {
    type: number
    sql: ${TABLE}.total_recommendations ;;
  }

  dimension: total_recommendations_clicked {
    type: number
    sql: ${TABLE}.total_recommendations_clicked ;;
  }

  dimension: total_shipments {
    type: number
    sql: ${TABLE}.total_shipments ;;
  }

  dimension_group: trial_expires {
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
    sql: ${TABLE}.trial_expires_at ;;
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

  dimension: uses_sub_accounts {
    type: yesno
    sql: ${TABLE}.uses_sub_accounts ;;
  }

  dimension: usps_agent_code {
    type: string
    sql: ${TABLE}.usps_agent_code ;;
  }

  dimension: was_trial_extended {
    type: yesno
    sql: ${TABLE}.was_trial_extended ;;
  }

  dimension_group: winback {
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
    sql: ${TABLE}.winback_date ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      account_name,
      rate_card_name,
      campaigns.count,
      canceled_customers.count,
      customer_daily_plans.count,
      customer_daily_smart_campaigns.count,
      customer_daily_tracked_products.count,
      sales_taxes.count,
      shipments.count,
      shipments_old.count,
      signup_form_users.count,
      stamps_migrations.count,
      stores.count,
      subscription_add_on_changes.count,
      subscription_changes.count
    ]
  }
}
