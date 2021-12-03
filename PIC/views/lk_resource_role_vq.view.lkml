view: lk_resource_role_vq {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_ResourceRoleVQ`;;
  fields_hidden_by_default: yes

  dimension: resourcerole_vqsrcid {
    type: string
    sql: ${TABLE}.RESOURCEROLE_VQSRCId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
