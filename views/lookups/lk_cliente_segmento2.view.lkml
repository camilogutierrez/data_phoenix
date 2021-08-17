view: lk_cliente_segmento2 {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_ClienteSegmento2`
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

  dimension: cliente_segmento2_nombre {
    type: string
    sql: ${TABLE}.ClienteSegmento2Nombre ;;
  }

  dimension: cliente_segmento2_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.ClienteSegmento2SK ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
