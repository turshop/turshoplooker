view: sales {
  sql_table_name: turshop_mkpsanpedro_prod.sales ;;
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
  dimension: completed {
    type: yesno
    sql: ${TABLE}.completed ;;
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
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
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
  dimension: price_org {
    type: string
    sql: ${TABLE}.price_org ;;
  }
  dimension: processed {
    type: yesno
    sql: ${TABLE}.processed ;;
  }
  dimension: rating {
    type: yesno
    sql: ${TABLE}.rating ;;
  }
  dimension: shopping_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.shopping_id ;;
  }
  dimension: tour_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.tour_id ;;
  }
  dimension: travelers {
    type: number
    sql: ${TABLE}.travelers ;;
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
	shoppings.comuna_name,
	shoppings.id,
	shoppings.customer_name,
	shoppings.cupon_code_name,
	users.id,
	users.name,
	users.lastname,
	users.firstname,
	tours.id,
	tours.name
	]
  }

}
