view: coupons {
  sql_table_name: turshop_mkpsanpedro_prod.coupons ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: discount_percentage {
    type: number
    sql: ${TABLE}.discount_percentage ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: uses {
    type: number
    sql: ${TABLE}.uses ;;
  }
  dimension_group: valid_from {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.valid_from ;;
  }
  dimension_group: valid_to {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.valid_to ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
