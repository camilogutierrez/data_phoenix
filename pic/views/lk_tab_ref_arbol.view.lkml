view: lk_tab_ref_arbol {
  sql_table_name: @{gcp_dataset_pub}.LK_TabRefArbol`;;
  fields_hidden_by_default: yes

  dimension: tab_ref_arbolsrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.TAB_REF_ARBOLSRCId ;;
  }
}
