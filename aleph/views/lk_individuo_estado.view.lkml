view: lk_individuo_estado {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_IndividuoEstado` ;;
  fields_hidden_by_default: yes

  dimension: individuo_estado_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.IndividuoEstadoSK ;;
  }

  dimension: individuo_estado_nombre {
    type: string
    sql: ${TABLE}.IndividuoEstadoNombre ;;
  }
}
