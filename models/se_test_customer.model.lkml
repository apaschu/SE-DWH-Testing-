connection: "shippingeasy-warehouse"

# include all the views
include: "/views/**/*.view"

datagroup: se_test_customer_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: se_test_customer_default_datagroup

explore: campaigns {
  join: customers {
    type: left_outer
    sql_on: ${campaigns.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: canceled_customers {
  join: customers {
    type: left_outer
    sql_on: ${canceled_customers.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: carrier_accounts {}

explore: customer_daily_plans {
  join: customers {
    type: left_outer
    sql_on: ${customer_daily_plans.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: customer_daily_smart_campaigns {
  join: customers {
    type: left_outer
    sql_on: ${customer_daily_smart_campaigns.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: customer_daily_tracked_products {
  join: customers {
    type: left_outer
    sql_on: ${customer_daily_tracked_products.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: customers {}

explore: endicia_daily_shipments {}

explore: endicia_shipments {}

explore: endicia_weekly_shipments {}

explore: sales_taxes {
  join: customers {
    type: left_outer
    sql_on: ${sales_taxes.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: shipments {
  join: customers {
    type: left_outer
    sql_on: ${shipments.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }

  join: carrier_accounts {
    type: left_outer
    sql_on: ${shipments.carrier_account_id} = ${carrier_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: shipments_old {
  join: customers {
    type: left_outer
    sql_on: ${shipments_old.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }

  join: carrier_accounts {
    type: left_outer
    sql_on: ${shipments_old.carrier_account_id} = ${carrier_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: signup_form_users {
  join: customers {
    type: left_outer
    sql_on: ${signup_form_users.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${signup_form_users.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }
}

explore: stamps_migrations {
  join: customers {
    type: left_outer
    sql_on: ${stamps_migrations.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: stamps_shipments {}

explore: stores {
  join: customers {
    type: left_outer
    sql_on: ${stores.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: subscription_add_on_changes {
  join: customers {
    type: left_outer
    sql_on: ${subscription_add_on_changes.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: subscription_changes {
  join: customers {
    type: left_outer
    sql_on: ${subscription_changes.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: tmp_shipment_identifiers {
  join: shipments {
    type: left_outer
    sql_on: ${tmp_shipment_identifiers.shipment_id} = ${shipments.id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${shipments.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }

  join: carrier_accounts {
    type: left_outer
    sql_on: ${shipments.carrier_account_id} = ${carrier_accounts.id} ;;
    relationship: many_to_one
  }
}
