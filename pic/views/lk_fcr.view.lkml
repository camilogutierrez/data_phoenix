view: lk_fcr {
  sql_table_name: @{gcp_dataset_pub}.LK_FCR`;;
  fields_hidden_by_default: yes

  dimension: fcrnombre {
    type: string
    sql: ${TABLE}.FCRNombre ;;
  }

  dimension: fcrsrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.FCRSRCId ;;
  }
}
