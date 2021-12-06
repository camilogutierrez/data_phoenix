view: lk_gvq {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_GVQ`;;
  fields_hidden_by_default: yes

  dimension: gvqsrcid {
    type: string
    sql: ${TABLE}.GVQSRCId ;;
  }
}
