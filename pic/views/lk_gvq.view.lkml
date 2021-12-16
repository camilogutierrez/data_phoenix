view: lk_gvq {
  sql_table_name: @{gcp_dataset_pub}.LK_GVQ`;;
  fields_hidden_by_default: yes

  dimension: gvqsrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.GVQSRCId ;;
  }
}
