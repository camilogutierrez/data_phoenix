view: lk_tab_contacto {
  sql_table_name: @{gcp_ambiente}.LK_TabContacto`;;
  fields_hidden_by_default: yes

  dimension: tab_contactosrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.TAB_CONTACTOSRCId ;;
  }
}