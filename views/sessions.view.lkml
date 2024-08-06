view: sessions {
  sql_table_name: turshop_mkpsanpedro_prod.sessions ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
  }
  dimension: last_activity {
    type: number
    sql: ${TABLE}.last_activity ;;
  }
  dimension: payload {
    type: string
    sql: ${TABLE}.payload ;;
  }
  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
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
	users.id,
	users.name,
	users.lastname,
	users.firstname,
	carts.count
	]
  }

}
