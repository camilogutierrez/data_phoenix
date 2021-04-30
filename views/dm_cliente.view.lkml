view: dm_cliente {
view_label: "Cliente"
  sql_table_name: `ue4_dev_edw_pub_vw_gcp.DM_Cliente`
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

  dimension: cliente_estado_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.ClienteEstadoSK ;;
  }

  dimension: cliente_intid {
    type: number
    hidden: yes
    value_format_name: id
    sql: ${TABLE}.ClienteINTId ;;
  }

  dimension: cliente_juridico_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.ClienteJuridicoSK ;;
  }

  dimension: cliente_segmento1_cliente_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.ClienteSegmento1ClienteSK ;;
  }

  dimension: cliente_segmento2_cliente_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.ClienteSegmento2ClienteSK ;;
  }

  dimension: cliente_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.ClienteSK ;;
  }

  dimension: cliente_socio_clud_personal_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.ClienteSocioCludPersonalSK ;;
  }

  dimension: cliente_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.ClienteSRCId ;;
  }

  dimension: cliente_texto_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.ClienteTextoSRCId ;;
  }

  dimension: cliente_tipo_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.ClienteTipoSK ;;
  }

  dimension: individuo_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.IndividuoSK ;;
  }

  dimension: origen_srcid {
    type: number
    hidden: yes
    value_format_name: id
    sql: ${TABLE}.OrigenSRCId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
