view: shoppings {
  sql_table_name: turshop_mkpsanpedro_prod.shoppings ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
  }
  dimension: comuna_name {
    type: string
    sql: ${TABLE}.comuna_name ;;
  }
  dimension: comuna_name2 {
    type: string
    sql: ${TABLE}.comuna_name2 ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: cupon_code {
    type: number
    sql: ${TABLE}.cupon_code ;;
  }
  dimension: cupon_code_name {
    type: string
    sql: ${TABLE}.cupon_code_name ;;
  }
  dimension: customer_activity {
    type: string
    sql: ${TABLE}.customer_activity ;;
  }
  dimension: customer_activity2 {
    type: string
    sql: ${TABLE}.customer_activity2 ;;
  }
  dimension: customer_address {
    type: string
    sql: ${TABLE}.customer_address ;;
  }
  dimension: customer_address2 {
    type: string
    sql: ${TABLE}.customer_address2 ;;
  }
  dimension: customer_city {
    type: string
    sql: ${TABLE}.customer_city ;;
  }
  dimension: customer_city2 {
    type: string
    sql: ${TABLE}.customer_city2 ;;
  }
  dimension: customer_country_id {
    type: number
    sql: ${TABLE}.customer_country_id ;;
  }
  dimension: customer_country_id2 {
    type: number
    value_format_name: id
    sql: ${TABLE}.customer_country_id2 ;;
  }
  dimension: customer_doc {
    type: string
    sql: ${TABLE}.customer_doc ;;
  }
  dimension: customer_doc2 {
    type: string
    sql: ${TABLE}.customer_doc2 ;;
  }
  dimension: customer_doc_url {
    type: string
    sql: ${TABLE}.customer_doc_url ;;
  }
  dimension: customer_email {
    type: string
    sql: ${TABLE}.customer_email ;;
  }
  dimension: customer_email2 {
    type: string
    sql: ${TABLE}.customer_email2 ;;
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
  dimension: customer_name2 {
    type: string
    sql: ${TABLE}.customer_name2 ;;
  }
  dimension: customer_otro_doc {
    type: number
    sql: ${TABLE}.customer_otroDoc ;;
  }
  dimension: customer_phone {
    type: string
    sql: ${TABLE}.customer_phone ;;
  }
  dimension: customer_phone2 {
    type: string
    sql: ${TABLE}.customer_phone2 ;;
  }
  dimension: customer_state_id {
    type: number
    sql: ${TABLE}.customer_state_id ;;
  }
  dimension: customer_state_id2 {
    type: number
    value_format_name: id
    sql: ${TABLE}.customer_state_id2 ;;
  }
  dimension: customer_typedoc_id {
    type: number
    sql: ${TABLE}.customer_typedoc_id ;;
  }
  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.exchange_rate ;;
  }
  dimension: method {
    type: string
    sql: ${TABLE}.method ;;
  }
  dimension: processed {
    type: yesno
    sql: ${TABLE}.processed ;;
  }
  dimension: ref {
    type: string
    sql: ${TABLE}.ref ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	comuna_name,
	customer_name,
	cupon_code_name,
	customers.last_name,
	customers.id,
	customers.name,
	users.id,
	users.name,
	users.lastname,
	users.firstname,
	bookings.count,
	climatrade_sales.count,
	reservations.count,
	sales.count
	]
  }

}
