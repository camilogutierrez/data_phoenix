view: lk_tab_que_tiene {
  sql_table_name: @{gcp_ambiente}.LK_TabQueTiene`;;
  fields_hidden_by_default: yes

  dimension: tab_que_tienesrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.TAB_QUE_TIENESRCId ;;
  }
}