view: lk_vq {
  sql_table_name: @{gcp_dataset_pub}.LK_VQ`;;
  fields_hidden_by_default: yes

  dimension: vqsrcid {
    type: string
    sql: ${TABLE}.VQSRCId ;;
  }
}
