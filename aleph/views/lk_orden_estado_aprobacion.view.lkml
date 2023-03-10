view: lk_orden_estado_aprobacion {
  sql_table_name: @{gcp_ambiente}.LK_OrdenEstadoAprobacion` ;;
  fields_hidden_by_default: yes

  dimension: orden_estado_aprobacion_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrdenEstadoAprobacionSK ;;
  }

  dimension: orden_estado_aprobacion_nombre {
    type: string
    sql: ${TABLE}.OrdenEstadoAprobacionNombre ;;
  }
}