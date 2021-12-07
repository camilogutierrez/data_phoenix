view: lk_campania_tipo {
  sql_table_name: @{gcp_dataset_pub}.LK_CampaniaTipo` ;;
  fields_hidden_by_default: yes

  dimension: campania_tipo_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CampaniaTipoSK ;;
  }

  dimension: campania_tipo_nombre {
    type: string
    sql: ${TABLE}.CampaniaTipoNombre ;;
  }
}
