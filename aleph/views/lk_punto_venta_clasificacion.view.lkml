view: lk_punto_venta_clasificacion {
  sql_table_name: @{gcp_ambiente}.LK_PuntoVentaClasificacion` ;;
  fields_hidden_by_default: yes

  dimension: punto_venta_clasificacion_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.PuntoVentaClasificacionSK ;;
  }

  dimension: punto_venta_clasificacion_nombre {
    type: string
    sql: ${TABLE}.PuntoVentaClasificacionNombre ;;
  }
}