view: lk_punto_venta_clasificacion {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_PuntoVentaClasificacion` ;;
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
