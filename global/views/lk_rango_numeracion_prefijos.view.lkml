view: lk_rango_numeracion_prefijos {
  sql_table_name: @{gcp_ambiente}.LK_RangoNumeracionPrefijos`   ;;

  fields_hidden_by_default: yes

## Dimension

  ## String
  dimension: rango_numeracion_prefijos {
    type: string
    sql: CAST (${TABLE}.RangoNumeracionPrefijos AS STRING) ;;
  }
}
