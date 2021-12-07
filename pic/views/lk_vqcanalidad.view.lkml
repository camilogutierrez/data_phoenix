view: lk_vqcanalidad {
  sql_table_name: @{gcp_dataset_pub}.LK_VQCanalidad`;;
  fields_hidden_by_default: yes

  dimension: vq_canalidadsrcid {
    type: string
    sql: ${TABLE}.VQ_CANALIDADSRCId ;;
  }
}
