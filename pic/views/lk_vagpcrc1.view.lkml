view: lk_vagpcrc1 {
  sql_table_name: @{gcp_dataset_pub}.LK_VAGPCRC1`;;
  fields_hidden_by_default: yes

  dimension: vag_pcrc1_srcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.VAG_PCRC1SRCId ;;
  }
}
