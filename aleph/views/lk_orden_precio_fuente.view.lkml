view: lk_orden_precio_fuente {
  sql_table_name: @{gcp_ambiente}.LK_OrdenPrecioFuente` ;;
  fields_hidden_by_default: yes

  dimension: orden_precio_fuente_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrdenPrecioFuenteSK ;;
  }

  dimension: orden_precio_fuente_nombre {
    type: string
    sql: ${TABLE}.OrdenPrecioFuenteNombre ;;
  }
}