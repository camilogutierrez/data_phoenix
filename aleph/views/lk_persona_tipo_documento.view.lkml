view: lk_persona_tipo_documento {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_PersonaTipoDocumento` ;;
  fields_hidden_by_default: yes

  dimension: persona_tipo_documento_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.PersonaTipoDocumentoSK ;;
  }

  dimension: persona_tipo_documento_nombre {
    type: string
    sql: ${TABLE}.PersonaTipoDocumentoNombre ;;
  }
}
