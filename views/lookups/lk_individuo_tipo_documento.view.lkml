view: lk_individuo_tipo_documento {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_IndividuoTipoDocumento`
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

  dimension: individuo_tipo_documento_nombre {
    type: string
    sql: ${TABLE}.IndividuoTipoDocumentoNombre ;;
  }

  dimension: individuo_tipo_documento_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.IndividuoTipoDocumentoSK ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
