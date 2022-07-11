view: lk_rango_numeracion_prefijos {
  sql_table_name: @{gcp_ambiente}.LK_RangoNumeracionPrefijos`   ;;

## Dimension

  ## Number
  dimension: rango_numeracion_prefijos {
    type: number
    sql: ${TABLE}.RangoNumeracionPrefijos ;;
    value_format_name: decimal_0
    view_label: "Geografia"
    label: "Rango Numeracion Prefijos"
  }

}
