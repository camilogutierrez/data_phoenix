view: lk_resource_sub_type {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_ResourceSubType`;;
  fields_hidden_by_default: yes

  dimension: resource_subtypesrcid {
    type: string
    sql: ${TABLE}.RESOURCE_SUBTYPESRCId ;;
  }
}
