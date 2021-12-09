view: lk_vagsegmento {
  sql_table_name: @{gcp_dataset_pub}.LK_VAGSegmento`;;
  fields_hidden_by_default: yes

  dimension: vag_segmentosrcid {
    type: string
    sql: ${TABLE}.VAG_SEGMENTOSRCId ;;
  }
}
