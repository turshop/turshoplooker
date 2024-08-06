view: operators {
  sql_table_name: turshop_mkpsanpedro_prod.operators ;;
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
  dimension: billing_address {
    type: string
    sql: ${TABLE}.billing_address ;;
  }
  dimension: billing_city {
    type: string
    sql: ${TABLE}.billing_city ;;
  }
  dimension: billing_community_id {
    type: number
    sql: ${TABLE}.billing_community_id ;;
  }
  dimension: billing_name {
    type: string
    sql: ${TABLE}.billing_name ;;
  }
  dimension: billing_rut {
    type: string
    sql: ${TABLE}.billing_rut ;;
  }
  dimension: commission {
    type: number
    sql: ${TABLE}.commission ;;
  }
  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
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
  dimension: doc {
    type: string
    sql: ${TABLE}.doc ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
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
	name,
	billing_name,
	users.id,
	users.name,
	users.lastname,
	users.firstname,
	rooms.count,
	tours.count
	]
  }

}
