view: lk_caso_hito_estado {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_CasoHitoEstado` ;;
  fields_hidden_by_default: yes

  dimension: caso_hito_estado_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CasoHitoEstadoSK ;;
  }

  dimension: caso_hito_estado_nombre {
    type: string
    sql: ${TABLE}.CasoHitoEstadoNombre ;;
  }
}
