view: lk_technical_result_vq {
  sql_table_name: @{gcp_dataset_pub}.LK_TechnicalResultVQ`;;
  fields_hidden_by_default: yes

  dimension: technicalresult_vqsrcid {
    type: string
    sql: ${TABLE}.TECHNICALRESULT_VQSRCId ;;
  }
}
