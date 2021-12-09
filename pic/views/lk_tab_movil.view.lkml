view: lk_tab_movil {
  sql_table_name: @{gcp_dataset_pub}.LK_TabMovil`;;
  fields_hidden_by_default: yes

  dimension: tab_movilsrcid {
    type: string
    sql: ${TABLE}.TAB_MOVILSRCId ;;
  }
}
