view: lk_fcr {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_FCR`;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
