view: lk_vq {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_VQ`;;
  fields_hidden_by_default: yes

  dimension: vqsrcid {
    type: string
    sql: ${TABLE}.VQSRCId ;;
  }
}
