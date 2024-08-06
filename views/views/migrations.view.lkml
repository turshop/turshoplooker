view: migrations {
  sql_table_name: turshop_mkpsanpedro_prod.migrations ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: batch {
    type: number
    sql: ${TABLE}.batch ;;
  }
  dimension: migration {
    type: string
    sql: ${TABLE}.migration ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
