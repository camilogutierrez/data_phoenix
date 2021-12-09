view: lk_vqpcrc3 {
  sql_table_name: @{gcp_dataset_pub}.LK_VQPCRC3`;;
  fields_hidden_by_default: yes

  dimension: vq_pcrc3_srcid {
    type: string
    sql: ${TABLE}.VQ_PCRC3SRCId ;;
  }
}
