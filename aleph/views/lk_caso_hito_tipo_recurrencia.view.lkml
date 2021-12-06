view: lk_caso_hito_tipo_recurrencia {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_CasoHitoTipoRecurrencia` ;;
  fields_hidden_by_default: yes

  dimension: caso_hito_tipo_recurrencia_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CasoHitoTipoRecurrenciaSK ;;
  }

  dimension: caso_hito_tipo_recurrencia_nombre {
    type: string
    sql: ${TABLE}.CasoHitoTipoRecurrenciaNombre ;;
  }
}
