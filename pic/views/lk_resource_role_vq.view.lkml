view: lk_resource_role_vq {
  sql_table_name: @{gcp_ambiente}.LK_ResourceRoleVQ`;;
  fields_hidden_by_default: yes

  dimension: resourcerole_vqsrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.RESOURCEROLE_VQSRCId ;;
  }
}