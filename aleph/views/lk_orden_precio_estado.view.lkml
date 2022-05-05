view: lk_orden_precio_estado {
  sql_table_name: @{gcp_ambiente}.LK_OrdenPrecioEstado` ;;
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