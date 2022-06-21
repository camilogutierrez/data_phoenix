view: lk_vqpcrc3 {
  sql_table_name: @{gcp_ambiente}.LK_VQPCRC3`;;
  fields_hidden_by_default: yes

  dimension: vq_pcrc3_srcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.VQ_PCRC3SRCId ;;
  }
}