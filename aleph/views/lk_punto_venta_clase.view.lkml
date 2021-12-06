view: lk_punto_venta_clase {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_PuntoVentaClase` ;;
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
