view: lk_caso_tema {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_CasoTema` ;;
  fields_hidden_by_default: yes

  dimension: caso_tema_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CasoTemaSK ;;
  }

  dimension: caso_tema_nombre {
    type: string
    sql: ${TABLE}.CasoTemaNombre ;;
  }
}
