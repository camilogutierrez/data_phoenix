view: lk_tabulacion4 {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_Tabulacion4`;;
  fields_hidden_by_default: yes

  dimension: tabulacion4_srcid {
    type: string
    sql: ${TABLE}.TABULACION4SRCId ;;
  }
}
