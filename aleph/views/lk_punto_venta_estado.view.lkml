view: lk_punto_venta_estado {
  sql_table_name: @{gcp_dataset_pub}.LK_PuntoVentaEstado` ;;
  fields_hidden_by_default: yes

  dimension: punto_venta_estado_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.PuntoVentaEstadoSK ;;
  }

  dimension: punto_venta_estado_nombre {
    type: string
    sql: ${TABLE}.PuntoVentaEstadoNombre ;;
  }
}
