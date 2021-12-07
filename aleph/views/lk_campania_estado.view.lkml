view: lk_campania_estado {
  sql_table_name: @{gcp_dataset_pub}.LK_CampaniaEstado` ;;
  fields_hidden_by_default: yes

  dimension: campania_estado_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CampaniaEstadoSK ;;
  }

  dimension: campania_estado_nombre {
    type: string
    sql: ${TABLE}.CampaniaEstadoNombre ;;
  }
}
