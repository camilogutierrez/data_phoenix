view: lk_technical_result_vq {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_TechnicalResultVQ`;;
  fields_hidden_by_default: yes

  dimension: technicalresult_vqsrcid {
    type: string
    sql: ${TABLE}.TECHNICALRESULT_VQSRCId ;;
  }
}
