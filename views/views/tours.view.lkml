view: tours {
  sql_table_name: turshop_mkpsanpedro_prod.tours ;;
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
  dimension: carbon_calculation {
    type: string
    sql: ${TABLE}.carbon_calculation ;;
  }
  dimension: carbon_calculation_val {
    type: string
    sql: ${TABLE}.carbon_calculation_val ;;
  }
  dimension: commission {
    type: number
    sql: ${TABLE}.commission ;;
  }
  dimension: costo_price {
    type: number
    sql: ${TABLE}.costo_price ;;
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
  dimension: dates_excludes {
    type: string
    sql: ${TABLE}.dates_excludes ;;
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
  dimension: description_english {
    type: string
    sql: ${TABLE}.description_english ;;
  }
  dimension: description_portuguese {
    type: string
    sql: ${TABLE}.description_portuguese ;;
  }
  dimension: destination_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.destination_id ;;
  }
  dimension: duration {
    type: string
    sql: ${TABLE}.duration ;;
  }
  dimension: duration_english {
    type: string
    sql: ${TABLE}.duration_english ;;
  }
  dimension: duration_portuguese {
    type: string
    sql: ${TABLE}.duration_portuguese ;;
  }
  dimension: equipment {
    type: string
    sql: ${TABLE}.equipment ;;
  }
  dimension: equipment_english {
    type: string
    sql: ${TABLE}.equipment_english ;;
  }
  dimension: equipment_portuguese {
    type: string
    sql: ${TABLE}.equipment_portuguese ;;
  }
  dimension: information {
    type: string
    sql: ${TABLE}.information ;;
  }
  dimension: information_english {
    type: string
    sql: ${TABLE}.information_english ;;
  }
  dimension: information_portuguese {
    type: string
    sql: ${TABLE}.information_portuguese ;;
  }
  dimension: is_included {
    type: string
    sql: ${TABLE}.is_included ;;
  }
  dimension: is_included_english {
    type: string
    sql: ${TABLE}.is_included_english ;;
  }
  dimension: is_included_portuguese {
    type: string
    sql: ${TABLE}.is_included_portuguese ;;
  }
  dimension: is_not_included {
    type: string
    sql: ${TABLE}.is_not_included ;;
  }
  dimension: is_not_included_english {
    type: string
    sql: ${TABLE}.is_not_included_english ;;
  }
  dimension: is_not_included_portuguese {
    type: string
    sql: ${TABLE}.is_not_included_portuguese ;;
  }
  dimension: itinerary {
    type: string
    sql: ${TABLE}.itinerary ;;
  }
  dimension: itinerary_english {
    type: string
    sql: ${TABLE}.itinerary_english ;;
  }
  dimension: itinerary_portuguese {
    type: string
    sql: ${TABLE}.itinerary_portuguese ;;
  }
  dimension: languages {
    type: string
    sql: ${TABLE}.languages ;;
  }
  dimension: location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.location_id ;;
  }
  dimension: moderation {
    type: yesno
    sql: ${TABLE}.moderation ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: name_english {
    type: string
    sql: ${TABLE}.name_english ;;
  }
  dimension: name_portuguese {
    type: string
    sql: ${TABLE}.name_portuguese ;;
  }
  dimension: nombre_proveedor {
    type: string
    sql: ${TABLE}.nombre_proveedor ;;
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
  dimension: travelers_max {
    type: number
    sql: ${TABLE}.travelers_max ;;
  }
  dimension: travelers_min {
    type: number
    sql: ${TABLE}.travelers_min ;;
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
	destinations.id,
	destinations.name,
	locations.name,
	locations.id,
	operators.name,
	operators.id,
	operators.billing_name,
	sales.count
	]
  }

}
