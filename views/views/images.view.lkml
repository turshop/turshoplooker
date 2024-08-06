view: images {
  sql_table_name: turshop_mkpsanpedro_prod.images ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: imageable_id {
    type: number
    sql: ${TABLE}.imageable_id ;;
  }
  dimension: imageable_type {
    type: string
    sql: ${TABLE}.imageable_type ;;
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
