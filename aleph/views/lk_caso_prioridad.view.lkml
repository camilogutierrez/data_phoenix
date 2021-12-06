view: lk_caso_prioridad {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_CasoPrioridad` ;;
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
