view: climatrade_proyects {
  sql_table_name: turshop_mkpsanpedro_prod.climatrade_proyects ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: active {
    type: number
    sql: ${TABLE}.active ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: dcto_global {
    type: number
    sql: ${TABLE}.dcto_global ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: detail {
    type: string
    sql: ${TABLE}.detail ;;
  }
  dimension: id_api {
    type: number
    sql: ${TABLE}.id_api ;;
  }
  dimension: local_price {
    type: number
    sql: ${TABLE}.local_price ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
