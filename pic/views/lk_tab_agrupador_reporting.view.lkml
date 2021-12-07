view: lk_tab_agrupador_reporting {
  sql_table_name: @{gcp_dataset_pub}.LK_TabAgrupadorReporting`;;
  fields_hidden_by_default: yes

  dimension: tab_agrupador_reportingsrcid {
    type: string
    sql: ${TABLE}.TAB_AGRUPADOR_REPORTINGSRCId ;;
  }
}
