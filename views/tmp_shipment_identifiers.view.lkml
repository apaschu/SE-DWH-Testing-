view: tmp_shipment_identifiers {
  sql_table_name: public.tmp_shipment_identifiers ;;

  dimension: destination_address_md5 {
    type: string
    sql: ${TABLE}.destination_address_md5 ;;
  }

  dimension: destination_email_md5 {
    type: string
    sql: ${TABLE}.destination_email_md5 ;;
  }

  dimension: shipment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.shipment_id ;;
  }

  measure: count {
    type: count
    drill_fields: [shipments.customer_name, shipments.id]
  }
}
