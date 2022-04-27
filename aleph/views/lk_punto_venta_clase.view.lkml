view: lk_punto_venta_clase {
  sql_table_name: @{gcp_ambiente}.LK_PuntoVentaClase` ;;
  fields_hidden_by_default: yes

  dimension: punto_venta_clase_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.PuntoVentaClaseSK ;;
  }

  dimension: punto_venta_clase_nombre {
    type: string
    sql: ${TABLE}.PuntoVentaClaseNombre ;;
  }
}