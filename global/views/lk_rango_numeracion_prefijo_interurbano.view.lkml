view: lk_rango_numeracion_prefijo_interurbano {
  sql_table_name: @{gcp_ambiente}.LK_RangoNumeracionPrefijoInterurbano`  ;;

## Dimension

  ## Number
  dimension: rango_numeracion_prefijo_interurbano {
    type: number
    sql: ${TABLE}.RangoNumeracionPrefijoInterurbano ;;
    value_format_name: decimal_0
    view_label: "Geografia"
    label: "Rango Numeracion Prefijo Interurbano"
  }
}
