view: lk_vqpcrc1 {
  sql_table_name: @{gcp_dataset_pub}.LK_VQPCRC1`;;
  fields_hidden_by_default: yes

  dimension: vq_pcrc1_srcid {
    type: string
    sql: ${TABLE}.VQ_PCRC1SRCId ;;
  }
}
