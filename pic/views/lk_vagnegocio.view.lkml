view: lk_vagnegocio {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_VAGNegocio`;;
  fields_hidden_by_default: yes

  dimension: vag_negociosrcid {
    type: string
    sql: ${TABLE}.VAG_NEGOCIOSRCId ;;
  }
}
