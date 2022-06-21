view: lk_orden_precio_variable_tipo_moneda {
  sql_table_name: @{gcp_ambiente}.LK_OrdenPrecioVariableTipoMoneda` ;;
  fields_hidden_by_default: yes

  dimension: orden_precio_variable_tipo_moneda_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrdenPrecioVariableTipoMonedaSK ;;
  }

  dimension: orden_precio_variable_tipo_moneda_nombre {
    type: string
    sql: ${TABLE}.OrdenPrecioVariableTipoMonedaNombre ;;
  }
}