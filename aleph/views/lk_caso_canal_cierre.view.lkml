view: lk_caso_canal_cierre {
  sql_table_name: @{gcp_dataset_pub}.LK_CasoCanalCierre` ;;
  fields_hidden_by_default: yes

  dimension: caso_canal_cierre_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CasoCanalCierreSK ;;
  }

  dimension: caso_canal_cierre_nombre {
    type: string
    sql: ${TABLE}.CasoCanalCierreNombre ;;
  }
}
