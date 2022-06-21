view: lk_punto_venta_bodega {
  sql_table_name: @{gcp_ambiente}.LK_PuntoVentaBodega` ;;
  fields_hidden_by_default: yes

  dimension: punto_venta_bodega_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.PuntoVentaBodegaSK ;;
  }

  dimension: punto_venta_bodega_nombre {
    type: string
    sql: ${TABLE}.PuntoVentaBodegaNombre ;;
  }
}