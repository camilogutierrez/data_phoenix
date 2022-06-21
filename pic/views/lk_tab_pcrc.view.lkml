view: lk_tab_pcrc {
  sql_table_name: @{gcp_ambiente}.LK_TabPCRC`;;
  fields_hidden_by_default: yes

  dimension: tab_pcrcsrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.TAB_PCRCSRCId ;;
  }
}