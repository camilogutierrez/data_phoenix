view: lk_punto_venta_canalidad2 {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_PuntoVentaCanalidad2`  ;;
  fields_hidden_by_default: yes

  dimension: punto_venta_canalidad2_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.PuntoVentaCanalidad2SK ;;
  }

  dimension: punto_venta_canalidad2_nombre {
    type: string
    sql: ${TABLE}.PuntoVentaCanalidad2Nombre ;;
  }
}
