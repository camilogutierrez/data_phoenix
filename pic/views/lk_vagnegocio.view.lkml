view: lk_vagnegocio {
  sql_table_name: @{gcp_dataset_pub}.LK_VAGNegocio`;;
  fields_hidden_by_default: yes

  dimension: vag_negociosrcid {
    type: string
    sql: ${TABLE}.VAG_NEGOCIOSRCId ;;
  }
}
