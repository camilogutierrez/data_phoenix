view: lk_caso_canal_cierre {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_CasoCanalCierre` ;;
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
