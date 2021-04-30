view: dm_medio_pago {
  view_label: "Medio de Pago"
  sql_table_name: `ue4_dev_edw_pub_vw_gcp.DM_MedioPago`
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

  dimension: ajuste_pago_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.AjustePagoSK ;;
  }

  dimension: cuenta_bancaria_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.CuentaBancariaSK ;;
  }

  dimension: individuo_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.IndividuoSK ;;
  }

  dimension: medio_pago_codigo {
    type: string
    sql: ${TABLE}.MedioPagoCodigo ;;
  }

  dimension: medio_pago_srcid {
    type: string
    primary_key: yes
    sql: ${TABLE}.MedioPagoCodigo ;;
  }

  dimension: medio_pago_entidad_financiera_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.MedioPagoEntidadFinancieraSK ;;
  }

  dimension_group: medio_pago_fecha_creacion {
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
    sql: ${TABLE}.MedioPagoFechaCreacion ;;
  }

  dimension_group: medio_pago_fecha_modificacion {
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
    sql: ${TABLE}.MedioPagoFechaModificacion ;;
  }

  dimension: medio_pago_marca_ppal {
    type: number
    sql: ${TABLE}.MedioPagoMarcaPpal ;;
  }

  dimension: medio_pago_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.MedioPagoSK ;;
  }

  dimension: medio_pago_tarjeta_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.MedioPagoTarjetaSK ;;
  }

  dimension: medio_pago_tipo_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.MedioPagoTipoSK ;;
  }

  dimension: numero_documento {
    type: number
    sql: ${TABLE}.NumeroDocumento ;;
  }

  dimension: origen_srcid {
    type: number
    hidden: yes
    value_format_name: id
    sql: ${TABLE}.OrigenSRCId ;;
  }

  dimension: usuario_alta_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.UsuarioAltaSK ;;
  }

  dimension: usuario_modificacion_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.UsuarioModificacionSK ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
