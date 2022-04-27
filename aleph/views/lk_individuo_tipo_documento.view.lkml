view: lk_individuo_tipo_documento {
  sql_table_name: @{gcp_ambiente}.LK_IndividuoTipoDocumento` ;;
  fields_hidden_by_default: yes

  dimension: individuo_tipo_documento_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.IndividuoTipoDocumentoSK ;;
  }

  dimension: individuo_tipo_documento_nombre {
    type: string
    sql: ${TABLE}.IndividuoTipoDocumentoNombre ;;
  }
}