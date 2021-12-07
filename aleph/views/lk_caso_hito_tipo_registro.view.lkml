view: lk_caso_hito_tipo_registro {
  sql_table_name: @{gcp_dataset_pub}.LK_CasoHitoTipoRegistro` ;;
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
