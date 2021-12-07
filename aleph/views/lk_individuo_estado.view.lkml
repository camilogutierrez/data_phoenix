view: lk_individuo_estado {
  sql_table_name: @{gcp_dataset_pub}.LK_IndividuoEstado` ;;
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
