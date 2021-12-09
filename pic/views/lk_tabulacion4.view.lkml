view: lk_tabulacion4 {
  sql_table_name: @{gcp_dataset_pub}.LK_Tabulacion4`;;
  fields_hidden_by_default: yes

  dimension: tabulacion4_srcid {
    type: string
    sql: ${TABLE}.TABULACION4SRCId ;;
  }
}
