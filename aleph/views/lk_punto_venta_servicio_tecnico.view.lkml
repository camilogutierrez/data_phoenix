view: lk_punto_venta_servicio_tecnico {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_PuntoVentaServicioTecnico` ;;
  fields_hidden_by_default: yes

  dimension: punto_venta_servicio_tecnico_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.PuntoVentaServicioTecnicoSK ;;
  }

  dimension: punto_venta_servicio_tecnico_nombre {
    type: string
    sql: ${TABLE}.PuntoVentaServicioTecnicoNombre ;;
  }
}
