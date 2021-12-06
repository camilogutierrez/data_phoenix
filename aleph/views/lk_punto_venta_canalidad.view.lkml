view: lk_punto_venta_canalidad {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_PuntoVentaCanalidad` ;;
  fields_hidden_by_default: yes

  dimension: punto_venta_canalidad_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.PuntoVentaCanalidadSK ;;
  }

  dimension: punto_venta_canalidad_nombre {
    type: string
    sql: ${TABLE}.PuntoVentaCanalidadNombre ;;
  }
}
