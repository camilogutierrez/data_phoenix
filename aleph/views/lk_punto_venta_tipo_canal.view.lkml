view: lk_punto_venta_tipo_canal {
  sql_table_name: @{gcp_dataset_pub}.LK_PuntoVentaTipoCanal` ;;
  fields_hidden_by_default: yes

  dimension: punto_venta_tipo_canal_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.PuntoVentaTipoCanalSK ;;
  }

  dimension: punto_venta_tipo_canal_nombre {
    type: string
    sql: ${TABLE}.PuntoVentaTipoCanalNombre ;;
  }
}
