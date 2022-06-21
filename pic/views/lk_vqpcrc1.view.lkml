view: lk_vqpcrc1 {
  sql_table_name: @{gcp_ambiente}.LK_VQPCRC1`;;
  fields_hidden_by_default: yes

  dimension: vq_pcrc1_srcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.VQ_PCRC1SRCId ;;
  }
}