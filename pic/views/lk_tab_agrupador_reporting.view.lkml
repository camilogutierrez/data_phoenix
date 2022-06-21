view: lk_tab_agrupador_reporting {
  sql_table_name: @{gcp_ambiente}.LK_TabAgrupadorReporting`;;
  fields_hidden_by_default: yes

  dimension: tab_agrupador_reportingsrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.TAB_AGRUPADOR_REPORTINGSRCId ;;
  }
}