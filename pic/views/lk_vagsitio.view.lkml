view: lk_vagsitio {
  sql_table_name: @{gcp_dataset_pub}.LK_VAGSitio`;;
  fields_hidden_by_default: yes

  dimension: vag_sitiosrcid {
    type: string
    sql: ${TABLE}.VAG_SITIOSRCId ;;
  }
}
