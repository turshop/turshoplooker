view: climatrade_sales {
  sql_table_name: turshop_mkpsanpedro_prod.climatrade_sales ;;
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
  dimension: commission {
    type: number
    sql: ${TABLE}.commission ;;
  }
  dimension: consigned {
    type: yesno
    sql: ${TABLE}.consigned ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: customer_cert_url {
    type: string
    sql: ${TABLE}.customer_cert_url ;;
  }
  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
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
  dimension: shopping_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.shopping_id ;;
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
	users.firstname
	]
  }

}
