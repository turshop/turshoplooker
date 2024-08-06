view: bankdetails {
  sql_table_name: turshop_mkpsanpedro_prod.bankdetails ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bankdetailable_id {
    type: number
    sql: ${TABLE}.bankdetailable_id ;;
  }
  dimension: bankdetailable_type {
    type: string
    sql: ${TABLE}.bankdetailable_type ;;
  }
  dimension: bankingentity_id {
    type: number
    sql: ${TABLE}.bankingentity_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: master {
    type: yesno
    sql: ${TABLE}.master ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: number {
    type: string
    sql: ${TABLE}.number ;;
  }
  dimension: rut {
    type: string
    sql: ${TABLE}.rut ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
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
