view: lk_resource_sub_type {
  sql_table_name: @{gcp_ambiente}.LK_ResourceSubType`;;
  fields_hidden_by_default: yes

  dimension: resource_subtypesrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.RESOURCE_SUBTYPESRCId ;;
  }
}