view: lk_punto_venta_tipo {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_PuntoVentaTipo` ;;

  dimension: punto_venta_tipo_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.PuntoVentaTipoSK ;;
  }

  dimension: punto_venta_tipo_nombre {
    type: string
    sql: ${TABLE}.PuntoVentaTipoNombre ;;
  }
}
