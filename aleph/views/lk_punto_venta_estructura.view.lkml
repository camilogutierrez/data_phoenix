view: lk_punto_venta_estructura {
  sql_table_name: @{gcp_dataset_pub}.LK_PuntoVentaEstructura` ;;
  fields_hidden_by_default: yes

  dimension: punto_venta_estructura_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.PuntoVentaEstructuraSK ;;
  }

  dimension: punto_venta_estructura_nombre {
    type: string
    sql: ${TABLE}.PuntoVentaEstructuraNombre ;;
  }
}
