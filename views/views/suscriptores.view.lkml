view: suscriptores {
  sql_table_name: turshop_mkpsanpedro_prod.suscriptores ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: consentimiento_marketing {
    type: yesno
    sql: ${TABLE}.consentimiento_marketing ;;
  }
  dimension: correo_electronico {
    type: string
    sql: ${TABLE}.correo_electronico ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado_suscripcion {
    type: number
    sql: ${TABLE}.estado_suscripcion ;;
  }
  dimension: formato_preferido {
    type: string
    sql: ${TABLE}.formato_preferido ;;
  }
  dimension: historial_transacciones {
    type: string
    sql: ${TABLE}.historial_transacciones ;;
  }
  dimension: http_agente {
    type: string
    sql: ${TABLE}.http_agente ;;
  }
  dimension: idioma_preferido {
    type: string
    sql: ${TABLE}.idioma_preferido ;;
  }
  dimension: interacciones {
    type: string
    sql: ${TABLE}.interacciones ;;
  }
  dimension: localitation {
    type: string
    sql: ${TABLE}.localitation ;;
  }
  dimension: suscripciones_interes {
    type: string
    sql: ${TABLE}.suscripciones_interes ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, users.id, users.name, users.lastname, users.firstname]
  }
}
