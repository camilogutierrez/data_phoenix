view: lk_technical_result_ag {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_TechnicalResultAG`;;
  fields_hidden_by_default: yes

  dimension: technicalresult_agsrcid {
    type: string
    sql: ${TABLE}.TECHNICALRESULT_AGSRCId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
