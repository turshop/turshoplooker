view: personal_access_tokens {
  sql_table_name: turshop_mkpsanpedro_prod.personal_access_tokens ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: abilities {
    type: string
    sql: ${TABLE}.abilities ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: last_used {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_used_at ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }
  dimension: tokenable_id {
    type: number
    sql: ${TABLE}.tokenable_id ;;
  }
  dimension: tokenable_type {
    type: string
    sql: ${TABLE}.tokenable_type ;;
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
