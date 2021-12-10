view: lk_resource_role_ag {
  sql_table_name: @{gcp_dataset_pub}.LK_ResourceRoleAG`;;
  fields_hidden_by_default: yes

  dimension: resourcerole_agsrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.RESOURCEROLE_AGSRCId ;;
  }
}
