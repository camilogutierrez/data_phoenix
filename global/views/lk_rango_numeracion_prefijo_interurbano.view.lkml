view: lk_rango_numeracion_prefijo_interurbano {
  sql_table_name: @{gcp_ambiente}.LK_RangoNumeracionPrefijoInterurbano`  ;;

  fields_hidden_by_default: yes

## Dimension

  ## String
  dimension: rango_numeracion_prefijo_interurbano {
    primary_key: yes
    type: string
    sql: ${TABLE}.RangoNumeracionPrefijoInterurbano ;;
  }
}
