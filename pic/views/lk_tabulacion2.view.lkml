view: lk_tabulacion2 {
  sql_table_name: @{gcp_dataset_pub}.LK_Tabulacion2`;;
  fields_hidden_by_default: yes

  dimension: tabulacion2_srcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.TABULACION2SRCId ;;
  }
}
