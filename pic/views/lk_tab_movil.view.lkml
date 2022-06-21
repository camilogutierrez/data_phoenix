view: lk_tab_movil {
  sql_table_name: @{gcp_ambiente}.LK_TabMovil`;;
  fields_hidden_by_default: yes

  dimension: tab_movilsrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.TAB_MOVILSRCId ;;
  }
}