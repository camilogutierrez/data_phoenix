view: lk_vag {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_VAG`;;
  fields_hidden_by_default: yes

  dimension: vagsrcid {
    type: string
    sql: ${TABLE}.VAGSRCId ;;
  }
}
