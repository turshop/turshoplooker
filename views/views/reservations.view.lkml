view: reservations {
  sql_table_name: turshop_mkpsanpedro_prod.reservations ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: commission {
    type: number
    sql: ${TABLE}.commission ;;
  }
  dimension: consigned {
    type: yesno
    sql: ${TABLE}.consigned ;;
  }
  dimension_group: consigned {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.consigned_at ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: date_end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_end ;;
  }
  dimension_group: date_start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_start ;;
  }
  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }
  dimension: processed {
    type: yesno
    sql: ${TABLE}.processed ;;
  }
  dimension: room_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.room_id ;;
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
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	shoppings.comuna_name,
	shoppings.id,
	shoppings.customer_name,
	shoppings.cupon_code_name,
	rooms.id,
	rooms.name
	]
  }

}
