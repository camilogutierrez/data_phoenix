view: lk_vagfan {
  sql_table_name: @{gcp_dataset_pub}.LK_VAGFan`;;
  fields_hidden_by_default: yes

  dimension: vag_fansrcid {
    type: string
    sql: ${TABLE}.VAG_FANSRCId ;;
  }
}
