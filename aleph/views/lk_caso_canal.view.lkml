view: lk_caso_canal {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_CasoCanal` ;;
  fields_hidden_by_default: yes

  dimension: caso_canal_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CasoCanalSK ;;
  }

  dimension: caso_canal_nombre {
    type: string
    sql: ${TABLE}.CasoCanalNombre ;;
  }
}
