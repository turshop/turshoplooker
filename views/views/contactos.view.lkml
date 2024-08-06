view: contactos {
  sql_table_name: turshop_mkpsanpedro_prod.contactos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: asunto {
    type: string
    sql: ${TABLE}.asunto ;;
  }
  dimension: correo_electronico {
    type: string
    sql: ${TABLE}.correo_electronico ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: detalle {
    type: string
    sql: ${TABLE}.detalle ;;
  }
  dimension: estatus {
    type: string
    sql: ${TABLE}.estatus ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
