view: lk_rango_numeracion_localidad {
  sql_table_name: @{gcp_ambiente}.LK_RangoNumeracionLocalidad`  ;;
  fields_hidden_by_default: yes


  dimension: rango_numeracion_localidad_sk {
    primary_key: yes
    type: string
    sql: ${TABLE}.RangoNumeracionLocalidadSK ;;
  }

  dimension: rango_numeracion_localidad_nombre {
    type: string
    sql: ${TABLE}.RangoNumeracionLocalidadNombre ;;
  }

  dimension: rango_numeracion_localidad_srcid {
    type: string
    sql: ${TABLE}.RangoNumeracionLocalidadSRCId ;;
  }
}
