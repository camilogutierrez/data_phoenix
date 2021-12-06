view: lk_tabulacion1 {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_Tabulacion1`;;
  fields_hidden_by_default: yes

  dimension: tabulacion1_srcid {
    type: string
    sql: ${TABLE}.TABULACION1SRCId ;;
  }
}
