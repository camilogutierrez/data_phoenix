view: lk_result_reason_ag {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_ResultReasonAG`;;
  fields_hidden_by_default: yes

  dimension: resultreason_agsrcid {
    type: string
    sql: ${TABLE}.RESULTREASON_AGSRCId ;;
  }
}
