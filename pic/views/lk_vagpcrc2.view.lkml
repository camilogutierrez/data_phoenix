view: lk_vagpcrc2 {
  sql_table_name: @{gcp_dataset_pub}.LK_VAGPCRC2`;;
  fields_hidden_by_default: yes

  dimension: vag_pcrc2_srcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.VAG_PCRC2SRCId ;;
  }
}
