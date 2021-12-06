view: lk_tab_agrupador_reporting {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_TabAgrupadorReporting`;;
  fields_hidden_by_default: yes

  dimension: tab_agrupador_reportingsrcid {
    type: string
    sql: ${TABLE}.TAB_AGRUPADOR_REPORTINGSRCId ;;
  }
}
