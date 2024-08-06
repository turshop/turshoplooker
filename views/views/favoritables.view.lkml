view: favoritables {
  sql_table_name: turshop_mkpsanpedro_prod.favoritables ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: favoritable_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.favoritable_id ;;
  }
  dimension: favoritable_type {
    type: string
    sql: ${TABLE}.favoritable_type ;;
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
	favoritables.id,
	users.id,
	users.name,
	users.lastname,
	users.firstname,
	favoritables.count
	]
  }

}
