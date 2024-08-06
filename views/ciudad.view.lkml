view: ciudad {
  sql_table_name: turshop_mkpsanpedro_prod.ciudad ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: id_state {
    type: number
    sql: ${TABLE}.id_state ;;
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
