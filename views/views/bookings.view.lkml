view: bookings {
  sql_table_name: turshop_mkpsanpedro_prod.bookings ;;
  drill_fields: [booking_id]

  dimension: booking_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.booking_id ;;
  }
  dimension: additional_data {
    type: string
    sql: ${TABLE}.additional_data ;;
  }
  dimension: cancelled {
    type: yesno
    sql: ${TABLE}.cancelled ;;
  }
  dimension_group: cancelled {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.cancelled_at ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }
  dimension: error_log {
    type: string
    sql: ${TABLE}.error_log ;;
  }
  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }
  dimension: price_org {
    type: number
    sql: ${TABLE}.price_org ;;
  }
  dimension: processed {
    type: yesno
    sql: ${TABLE}.processed ;;
  }
  dimension: shopping_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.shopping_id ;;
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
	booking_id,
	shoppings.comuna_name,
	shoppings.id,
	shoppings.customer_name,
	shoppings.cupon_code_name,
	users.id,
	users.name,
	users.lastname,
	users.firstname
	]
  }

}
