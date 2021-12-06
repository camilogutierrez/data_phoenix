view: lk_punto_venta_dtipo_canal {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_PuntoVentaDTipoCanal` ;;
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
