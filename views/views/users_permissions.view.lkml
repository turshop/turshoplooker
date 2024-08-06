view: users_permissions {
  sql_table_name: turshop_mkpsanpedro_prod.users_permissions ;;

  dimension: permission_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.permission_id ;;
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
	users.id,
	users.name,
	users.lastname,
	users.firstname,
	permissions.id,
	permissions.name
	]
  }

}
