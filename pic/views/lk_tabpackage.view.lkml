view: lk_tabpackage {
  sql_table_name: @{gcp_ambiente}.LK_Tabpackage`;;
  fields_hidden_by_default: yes

  dimension: tabpackagesrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.TABPACKAGESRCId ;;
  }
}