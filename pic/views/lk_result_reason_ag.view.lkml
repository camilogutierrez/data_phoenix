view: lk_result_reason_ag {
  sql_table_name: @{gcp_dataset_pub}.LK_ResultReasonAG`;;
  fields_hidden_by_default: yes

  dimension: resultreason_agsrcid {
    type: string
    sql: ${TABLE}.RESULTREASON_AGSRCId ;;
  }
}
