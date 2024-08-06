view: rooms {
  sql_table_name: turshop_mkpsanpedro_prod.rooms ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }
  dimension: amenities {
    type: string
    sql: ${TABLE}.amenities ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: guest {
    type: yesno
    sql: ${TABLE}.guest ;;
  }
  dimension: moderation {
    type: yesno
    sql: ${TABLE}.moderation ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: offer_price {
    type: number
    sql: ${TABLE}.offer_price ;;
  }
  dimension: operator_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.operator_id ;;
  }
  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }
  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
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
	name,
	operators.name,
	operators.id,
	operators.billing_name,
	reservations.count
	]
  }

}
