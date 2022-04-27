view: lk_tab_negocio {
  sql_table_name: @{gcp_ambiente}.LK_TabNegocio` ;;
  fields_hidden_by_default: yes

  dimension: tab_negociosrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.TAB_NEGOCIOSRCId ;;
  }
}