view: lk_punto_venta_dtipo_canal {
  sql_table_name: @{gcp_ambiente}.LK_PuntoVentaDTipoCanal` ;;
  fields_hidden_by_default: yes

  dimension: punto_venta_dtipo_canal_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.PuntoVentaDTipoCanalSK ;;
  }

  dimension: punto_venta_dtipo_canal_nombre {
    type: string
    sql: ${TABLE}.PuntoVentaDTipoCanalNombre ;;
  }
}