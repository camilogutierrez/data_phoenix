view: lk_vqfan {
  sql_table_name: @{gcp_ambiente}.LK_VQFan`;;
  fields_hidden_by_default: yes

  dimension: vq_fansrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.VQ_FANSRCId ;;
  }
}