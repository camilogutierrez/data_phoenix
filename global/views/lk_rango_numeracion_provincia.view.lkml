view: lk_rango_numeracion_provincia {
  sql_table_name: @{gcp_ambiente}.LK_RangoNumeracionProvincia` ;;
  fields_hidden_by_default: yes



## Dimension

  ## String
  dimension: rango_numeracion_provincia_srcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.RangoNumeracionProvinciaSRCId ;;
  }

  dimension: rango_numeracion_provincia_nombre {
    type: string
    sql: ${TABLE}.RangoNumeracionProvinciaNombre ;;
  }
}
