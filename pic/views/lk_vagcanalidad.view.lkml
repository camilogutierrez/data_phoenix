view: lk_vagcanalidad {
  sql_table_name: @{gcp_dataset_pub}.LK_VAGCanalidad`;;
  fields_hidden_by_default: yes

  dimension: vag_canalidadsrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.VAG_CANALIDADSRCId ;;
  }
}
