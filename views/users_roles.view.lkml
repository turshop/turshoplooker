view: users_roles {
  sql_table_name: turshop_mkpsanpedro_prod.users_roles ;;

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.role_id ;;
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
	roles.name,
	roles.id,
	users.id,
	users.name,
	users.lastname,
	users.firstname
	]
  }

}
