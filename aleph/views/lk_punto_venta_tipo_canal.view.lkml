view: lk_punto_venta_tipo_canal {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_PuntoVentaTipoCanal` ;;
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
