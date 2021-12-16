view: lk_tabulacion1 {
  sql_table_name: @{gcp_dataset_pub}.LK_Tabulacion1`;;
  fields_hidden_by_default: yes

  dimension: tabulacion1_srcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.TABULACION1SRCId ;;
  }
}
