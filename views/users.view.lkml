view: users {
  sql_table_name: turshop_mkpsanpedro_prod.users ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: additional_data {
    type: string
    sql: ${TABLE}.additional_data ;;
  }
  dimension: birthday {
    type: string
    sql: ${TABLE}.birthday ;;
  }
  dimension: comision {
    type: string
    sql: ${TABLE}.comision ;;
  }
  dimension: comision_tour {
    type: string
    sql: ${TABLE}.comision_tour ;;
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
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension_group: email_verified {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.email_verified_at ;;
  }
  dimension: firstname {
    type: string
    sql: ${TABLE}.firstname ;;
  }
  dimension: lastname {
    type: string
    sql: ${TABLE}.lastname ;;
  }
  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }
  dimension: photo {
    type: string
    sql: ${TABLE}.photo ;;
  }
  dimension: remember_token {
    type: string
    sql: ${TABLE}.remember_token ;;
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
	lastname,
	firstname,
	answers.count,
	bookings.count,
	climatrade_sales.count,
	customers.count,
	devices.count,
	favoritables.count,
	operators.count,
	sales.count,
	sessions.count,
	shoppings.count,
	social_profiles.count,
	suscriptores.count,
	users_permissions.count,
	users_roles.count
	]
  }

}
