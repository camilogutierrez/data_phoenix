view: lk_vagpcrc3 {
  sql_table_name: @{gcp_dataset_pub}.LK_VAGPCRC3`;;
  fields_hidden_by_default: yes

  dimension: vag_pcrc3_srcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.VAG_PCRC3SRCId ;;
  }
}
