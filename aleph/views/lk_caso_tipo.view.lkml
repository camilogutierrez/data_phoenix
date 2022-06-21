view: lk_caso_tipo {
  sql_table_name: @{gcp_ambiente}.LK_CasoTipo` ;;
  fields_hidden_by_default: yes

  dimension: caso_tipo_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CasoTipoSK ;;
  }

  dimension: caso_tipo_nombre {
    type: string
    sql: ${TABLE}.CasoTipoNombre ;;
  }
}