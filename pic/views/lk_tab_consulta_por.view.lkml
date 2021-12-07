view: lk_tab_consulta_por {
  sql_table_name: @{gcp_dataset_pub}.LK_TabConsultaPor`;;
  fields_hidden_by_default: yes

  dimension: tab_consulta_porsrcid {
    type: string
    sql: ${TABLE}.TAB_CONSULTA_PORSRCId ;;
  }
}
