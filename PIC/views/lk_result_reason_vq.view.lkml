view: lk_result_reason_vq {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_ResultReasonVQ`;;
  fields_hidden_by_default: yes

  dimension: resultreason_vqsrcid {
    type: string
    sql: ${TABLE}.RESULTREASON_VQSRCId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
