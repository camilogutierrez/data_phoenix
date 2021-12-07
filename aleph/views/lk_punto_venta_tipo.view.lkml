view: lk_punto_venta_tipo {
  sql_table_name: @{gcp_dataset_pub}.LK_PuntoVentaTipo` ;;
  fields_hidden_by_default: yes

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
