view: lk_vqfcr {
  sql_table_name: @{gcp_ambiente}.LK_VQFCR`;;
  fields_hidden_by_default: yes

  dimension: vq_fcrsrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.VQ_FCRSRCId ;;
  }
}