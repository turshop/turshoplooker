view: social_profiles {
  sql_table_name: turshop_mkpsanpedro_prod.social_profiles ;;
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
  dimension: social_avatar {
    type: string
    sql: ${TABLE}.social_avatar ;;
  }
  dimension: social_id {
    type: string
    sql: ${TABLE}.social_id ;;
  }
  dimension: social_name {
    type: string
    sql: ${TABLE}.social_name ;;
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
	social_name,
	users.id,
	users.name,
	users.lastname,
	users.firstname
	]
  }

}
