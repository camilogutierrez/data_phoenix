view: lk_punto_venta_clase {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_PuntoVentaClase`
    ;;

  dimension_group: _fecha_creacion {
    type: time
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
    type: string
    sql: ${TABLE}._sesionId ;;
  }

  dimension: _usuario_creacion {
    type: string
    sql: ${TABLE}._usuarioCreacion ;;
  }

  dimension: _usuario_ultima_actualizacion {
    type: string
    sql: ${TABLE}._usuarioUltimaActualizacion ;;
  }

  dimension: punto_venta_clase_nombre {
    type: string
    sql: ${TABLE}.PuntoVentaClaseNombre ;;
  }

  dimension: punto_venta_clase_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.PuntoVentaClaseSK ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
