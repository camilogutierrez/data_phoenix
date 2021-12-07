view: lk_tabpackage {
  sql_table_name: @{gcp_dataset_pub}.LK_Tabpackage`;;
  fields_hidden_by_default: yes

  dimension: tabpackagesrcid {
    type: string
    sql: ${TABLE}.TABPACKAGESRCId ;;
  }
}
