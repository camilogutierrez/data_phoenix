view: lk_caso_hito_tipo_registro {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_CasoHitoTipoRegistro` ;;
  fields_hidden_by_default: yes

  dimension: caso_hito_tipo_registro_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CasoHitoTipoRegistroSK ;;
  }

  dimension: caso_hito_tipo_registro_nombre {
    type: string
    sql: ${TABLE}.CasoHitoTipoRegistroNombre ;;
  }
}
