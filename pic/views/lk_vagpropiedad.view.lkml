view: lk_vagpropiedad {
  sql_table_name: @{gcp_dataset_pub}.LK_VAGPropiedad`;;
  fields_hidden_by_default: yes

  dimension: vag_propiedadsrcid {
    type: string
    sql: ${TABLE}.VAG_PROPIEDADSRCId ;;
  }
}
