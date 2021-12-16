view: lk_tab_motivo {
  sql_table_name: @{gcp_dataset_pub}.LK_TabMotivo`;;
  fields_hidden_by_default: yes

  dimension: tab_motivosrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.TAB_MOTIVOSRCId ;;
  }
}
