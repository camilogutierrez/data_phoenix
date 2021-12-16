view: lk_technical_result_ag {
  sql_table_name: @{gcp_dataset_pub}.LK_TechnicalResultAG`;;
  fields_hidden_by_default: yes

  dimension: technicalresult_agsrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.TECHNICALRESULT_AGSRCId ;;
  }
}
