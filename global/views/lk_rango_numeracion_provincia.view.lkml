view: lk_rango_numeracion_provincia {
  sql_table_name: @{gcp_ambiente}.LK_RangoNumeracionProvincia` ;;
  fields_hidden_by_default: yes

  dimension: rango_numeracion_provincia_sk {
    primary_key: yes
    type: string
    sql: ${TABLE}.RangoNumeracionProvinciaSK ;;
  }

  dimension: rango_numeracion_provincia_srcid {
    type: string
    sql: ${TABLE}.RangoNumeracionProvinciaSRCId ;;
  }

  dimension: rango_numeracion_provincia_nombre {
    type: string
    sql: ${TABLE}.RangoNumeracionProvinciaNombre ;;
  }
}
