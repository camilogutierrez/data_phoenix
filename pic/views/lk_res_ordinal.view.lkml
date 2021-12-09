view: lk_res_ordinal {
  sql_table_name: @{gcp_dataset_pub}.LK_ResOrdinal`;;
  fields_hidden_by_default: yes

  dimension: res_ordinalsrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.RES_ORDINALSRCId ;;
  }
}
