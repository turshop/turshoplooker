view: comuna {
  sql_table_name: turshop_mkpsanpedro_prod.comuna ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: id_ciudad {
    type: number
    sql: ${TABLE}.id_ciudad ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
