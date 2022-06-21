view: lk_vqsegmento {
  sql_table_name: @{gcp_ambiente}.LK_VQSegmento`;;
  fields_hidden_by_default: yes

  dimension: vq_segmentosrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.VQ_SEGMENTOSRCId ;;
  }
}