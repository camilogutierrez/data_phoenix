view: lk_vag {
  sql_table_name: @{gcp_dataset_pub}.LK_VAG`;;
  fields_hidden_by_default: yes

  dimension: vagsrcid {
    type: string
    sql: ${TABLE}.VAGSRCId ;;
  }
}
