view: lk_tab_pcrc {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_TabPCRC`;;
  fields_hidden_by_default: yes

  dimension: tab_pcrcsrcid {
    type: string
    sql: ${TABLE}.TAB_PCRCSRCId ;;
  }
}
