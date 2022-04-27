view: lk_tabulacion3 {
  sql_table_name: @{gcp_ambiente}.LK_Tabulacion3`;;
  fields_hidden_by_default: yes

  dimension: tabulacion3_srcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.TABULACION3SRCId ;;
  }
}