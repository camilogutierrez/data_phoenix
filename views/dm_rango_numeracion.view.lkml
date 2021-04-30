view: dm_rango_numeracion {
  view_label: "Rango Numeracion"
  sql_table_name: `ue4_dev_edw_pub_vw_gcp.DM_RangoNumeracion`
    ;;

  dimension_group: _fecha_creacion {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._fechaCreacion ;;
  }

  dimension_group: _fecha_ultima_actualizacion {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._fechaUltimaActualizacion ;;
  }

  dimension: _sesion_id {
    type: number
    hidden: yes
    sql: ${TABLE}._sesionId ;;
  }

  dimension: _usuario_creacion {
    type: string
    hidden: yes
    sql: ${TABLE}._usuarioCreacion ;;
  }

  dimension: _usuario_ultima_actualizacion {
    type: string
    hidden: yes
    sql: ${TABLE}._usuarioUltimaActualizacion ;;
  }

  dimension: origen_srcid {
    type: number
    hidden: yes
    value_format_name: id
    sql: ${TABLE}.OrigenSRCId ;;
  }

  dimension: rango_numeracion_departamento_nombre {
    type: string
    sql: ${TABLE}.RangoNumeracionDepartamentoNombre ;;
  }

  dimension: rango_numeracion_departamento_srcid {
    type: string
    sql: ${TABLE}.RangoNumeracionDepartamentoSRCId ;;
  }

  dimension: rango_numeracion_localidad_nombre {
    type: string
    label: "Localidad"
    sql: ${TABLE}.RangoNumeracionLocalidadNombre ;;
  }

  dimension: rango_numeracion_localidad_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.RangoNumeracionLocalidadSRCId ;;
  }

  dimension: rango_numeracion_numero_linea_desde {
    type: number

    sql: ${TABLE}.RangoNumeracionNumeroLineaDesde ;;
  }

  dimension: rango_numeracion_numero_linea_hasta {
    type: number
    sql: ${TABLE}.RangoNumeracionNumeroLineaHasta ;;
  }

  dimension: rango_numeracion_prefijo_interurbano {
    type: number
    label: "Prefijo InterUrbano"
    sql: ${TABLE}.RangoNumeracionPrefijoInterurbano ;;
  }

  dimension: rango_numeracion_prefijo_urbano {
    type: number
    label: "Prefijo Urbano"
    sql: ${TABLE}.RangoNumeracionPrefijoUrbano ;;
  }

  dimension: rango_numeracion_prefijos {
    type: number
    label: "Prefijo"
    sql: ${TABLE}.RangoNumeracionPrefijos ;;
  }

  dimension: rango_numeracion_provincia_nombre {
    type: string
    label: "Provincia"
    sql: ${TABLE}.RangoNumeracionProvinciaNombre ;;
  }

  dimension: rango_numeracion_provincia_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.RangoNumeracionProvinciaSRCId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
