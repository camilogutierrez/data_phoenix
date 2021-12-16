view: lk_tab_resultado {
  sql_table_name: @{gcp_dataset_pub}.LK_TabResultado`;;
  fields_hidden_by_default: yes

  dimension: tab_resultadosrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.TAB_RESULTADOSRCId ;;
  }
}
