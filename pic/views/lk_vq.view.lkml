view: lk_vq {
  sql_table_name: @{gcp_ambiente}.LK_VQ`;;
  fields_hidden_by_default: yes

  dimension: vqsrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.VQSRCId ;;
  }
}