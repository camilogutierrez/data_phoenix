view: lk_vagagrupador4 {
  sql_table_name: @{gcp_dataset_pub}.LK_VAGAgrupador4`;;
  fields_hidden_by_default: yes

  dimension: vag_agrupador4_srcid {
    type: string
    sql: ${TABLE}.VAG_AGRUPADOR4SRCId ;;
  }
}
