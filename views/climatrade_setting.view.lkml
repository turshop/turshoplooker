view: climatrade_setting {
  sql_table_name: turshop_mkpsanpedro_prod.climatrade_setting ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: api_key {
    type: string
    sql: ${TABLE}.apiKey ;;
  }
  dimension: cobro {
    type: string
    sql: ${TABLE}.cobro ;;
  }
  dimension: compensa {
    type: string
    sql: ${TABLE}.compensa ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: detail {
    type: string
    sql: ${TABLE}.detail ;;
  }
  dimension: id_api {
    type: number
    sql: ${TABLE}.id_api ;;
  }
  dimension: imagen {
    type: string
    sql: ${TABLE}.imagen ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
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
