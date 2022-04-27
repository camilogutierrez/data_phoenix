view: lk_pago_ajuste_precio_origen {
  sql_table_name: @{gcp_ambiente}.LK_PagoAjustePrecioOrigen` ;;
  fields_hidden_by_default: yes

  dimension: pago_ajuste_precio_origen_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.PagoAjustePrecioOrigenSK ;;
  }

  dimension: pago_ajuste_precio_origen_nombre {
    type: string
    sql: ${TABLE}.PagoAjustePrecioOrigenNombre ;;
  }
}