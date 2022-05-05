view: lk_vqcanalidad {
  sql_table_name: @{gcp_ambiente}.LK_VQCanalidad`;;
  fields_hidden_by_default: yes

  dimension: vq_canalidadsrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.VQ_CANALIDADSRCId ;;
  }
}