view: lk_caso_hito_tipo_registro {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_CasoHitoTipoRegistro`
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

  dimension: caso_hito_tipo_registro_nombre {
    type: string
    sql: ${TABLE}.CasoHitoTipoRegistroNombre ;;
  }

  dimension: caso_hito_tipo_registro_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CasoHitoTipoRegistroSK ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
