view: reviews {
  sql_table_name: turshop_mkpsanpedro_prod.reviews ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: rating {
    type: yesno
    sql: ${TABLE}.rating ;;
  }
  dimension: reviewable_id {
    type: number
    sql: ${TABLE}.reviewable_id ;;
  }
  dimension: reviewable_type {
    type: string
    sql: ${TABLE}.reviewable_type ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: visibility {
    type: yesno
    sql: ${TABLE}.visibility ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name, customers.last_name, customers.id, customers.name]
  }
}
