view: lk_tab_contacto {
  sql_table_name: @{gcp_dataset_pub}.LK_TabContacto`;;
  fields_hidden_by_default: yes

  dimension: tab_contactosrcid {
    type: string
    sql: ${TABLE}.TAB_CONTACTOSRCId ;;
  }
}
