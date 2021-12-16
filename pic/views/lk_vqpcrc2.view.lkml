view: lk_vqpcrc2 {
  sql_table_name: @{gcp_dataset_pub}.LK_VQPCRC2`;;
  fields_hidden_by_default: yes

  dimension: vq_pcrc2_srcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.VQ_PCRC2SRCId ;;
  }
}
