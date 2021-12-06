view: lk_orden_precio_estado {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_OrdenPrecioEstado` ;;
  fields_hidden_by_default: yes

  dimension: orden_precio_estado_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrdenPrecioEstadoSK ;;
  }

  dimension: orden_precio_estado_nombre {
    type: string
    sql: ${TABLE}.OrdenPrecioEstadoNombre ;;
  }
}
