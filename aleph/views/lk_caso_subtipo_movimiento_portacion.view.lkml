view: lk_caso_subtipo_movimiento_portacion {
  sql_table_name: @{gcp_dataset_pub}.LK_CasoSubTipoMovimientoPortacion` ;;
  fields_hidden_by_default: yes

  dimension: caso_subtipo_movimiento_portacion_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CasoSubtipoMovimientoPortacionSK ;;
  }

  dimension: caso_subtipo_movimiento_portacion_nombre {
    type: string
    sql: ${TABLE}.CasoSubtipoMovimientoPortacionNombre ;;
  }
}
