view: lk_vag {
  sql_table_name: @{gcp_dataset_pub}.LK_VAG`;;
  fields_hidden_by_default: yes

  dimension: vagsrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.VAGSRCId ;;
  }
}
