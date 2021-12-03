view: lk_resource_role_ag {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_ResourceRoleAG`;;
  fields_hidden_by_default: yes

  dimension: resourcerole_agsrcid {
    type: string
    sql: ${TABLE}.RESOURCEROLE_AGSRCId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
