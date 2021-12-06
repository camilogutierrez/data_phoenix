view: lk_tabulacion3 {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_Tabulacion3`;;
  fields_hidden_by_default: yes

  dimension: tabulacion3_srcid {
    type: string
    sql: ${TABLE}.TABULACION3SRCId ;;
  }
}
