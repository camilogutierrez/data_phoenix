view: lk_caso_tema {
  sql_table_name: @{gcp_dataset_pub}.LK_CasoTema` ;;
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
