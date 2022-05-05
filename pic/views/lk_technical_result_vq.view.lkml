view: lk_technical_result_vq {
  sql_table_name: @{gcp_ambiente}.LK_TechnicalResultVQ`;;
  fields_hidden_by_default: yes

  dimension: technicalresult_vqsrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.TECHNICALRESULT_VQSRCId ;;
  }
}