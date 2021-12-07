view: lk_orden_precio_accion {
  sql_table_name: @{gcp_dataset_pub}.LK_OrdenPrecioAccion` ;;
  fields_hidden_by_default: yes

  dimension: orden_precio_accion_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrdenPrecioAccionSK ;;
  }

  dimension: orden_precio_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenPrecioAccionNombre ;;
  }
}
