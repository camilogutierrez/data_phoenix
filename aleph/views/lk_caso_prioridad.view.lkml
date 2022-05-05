view: lk_caso_prioridad {
  sql_table_name: @{gcp_ambiente}.LK_CasoPrioridad` ;;
  fields_hidden_by_default: yes

  dimension: caso_prioridad_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CasoPrioridadSK ;;
  }

  dimension: caso_prioridad_nombre {
    type: string
    sql: ${TABLE}.CasoPrioridadNombre ;;
  }
}