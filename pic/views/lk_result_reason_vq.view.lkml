view: lk_result_reason_vq {
  sql_table_name: @{gcp_dataset_pub}.LK_ResultReasonVQ`;;
  fields_hidden_by_default: yes

  dimension: resultreason_vqsrcid {
    type: string
    sql: ${TABLE}.RESULTREASON_VQSRCId ;;
  }
}
