view: countries {
  sql_table_name: turshop_mkpsanpedro_prod.countries ;;
  drill_fields: [dtt_country_id]

  dimension: dtt_country_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.dtt_country_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: dtt_country_iva {
    type: yesno
    sql: ${TABLE}.dtt_country_iva ;;
  }
  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
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
    drill_fields: [dtt_country_id, name]
  }
}
