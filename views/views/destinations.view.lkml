view: destinations {
  sql_table_name: turshop_mkpsanpedro_prod.destinations ;;
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
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: dtt_town_id {
    type: number
    sql: ${TABLE}.dtt_town_id ;;
  }
  dimension: ex_id {
    type: number
    sql: ${TABLE}.ex_id ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: roombeast_id {
    type: number
    sql: ${TABLE}.roombeast_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name, tours.count]
  }
}
