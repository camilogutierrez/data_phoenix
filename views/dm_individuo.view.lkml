view: dm_individuo {
  view_label: "Individuo"
  sql_table_name: `ue4_dev_edw_pub_vw_gcp.DM_Individuo`
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
    type: string
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

  dimension_group: fecha_entidad {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FechaEntidad ;;
  }

  dimension: individuo_apellido {
    type: string
    sql: ${TABLE}.IndividuoApellido ;;
  }

  dimension: individuo_codigo_empleado {
    type: string
    sql: ${TABLE}.IndividuoCodigoEmpleado ;;
  }

  dimension: individuo_codigo_integracion {
    type: number
    sql: ${TABLE}.IndividuoCodigoIntegracion ;;
  }

  dimension: individuo_cuilnumero {
    type: string
    sql: ${TABLE}.IndividuoCUILNumero ;;
  }

  dimension: individuo_documento_numero {
    type: string
    sql: ${TABLE}.IndividuoDocumentoNumero ;;
  }

  dimension: individuo_edad {
    type: number
    sql: ${TABLE}.IndividuoEdad ;;
  }

  dimension: individuo_email {
    type: string
    sql: ${TABLE}.IndividuoEmail ;;
  }

  dimension: individuo_es_enviar_fax {
    type: yesno
    sql: ${TABLE}.IndividuoEsEnviarFax ;;
  }

  dimension: individuo_es_enviar_mail {
    type: yesno
    sql: ${TABLE}.IndividuoEsEnviarMail ;;
  }

  dimension: individuo_es_fraude {
    type: yesno
    sql: ${TABLE}.IndividuoEsFraude ;;
  }

  dimension: individuo_es_llamar {
    type: yesno
    sql: ${TABLE}.IndividuoEsLlamar ;;
  }

  dimension: individuo_estado_laboral {
    type: string
    sql: ${TABLE}.IndividuoEstadoLaboral ;;
  }

  dimension: individuo_estado_nombre {
    type: string
    sql: ${TABLE}.IndividuoEstadoNombre ;;
  }

  dimension: individuo_estado_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.IndividuoEstadoSK ;;
  }

  dimension: individuo_estado_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.IndividuoEstadoSRCId ;;
  }

  dimension: individuo_fax_numero {
    type: string
    sql: ${TABLE}.IndividuoFaxNumero ;;
  }

  dimension_group: individuo_fecha_alta {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.IndividuoFechaAlta ;;
  }

  dimension_group: individuo_fecha_nacimiento {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.IndividuoFechaNacimiento ;;
  }

  dimension_group: individuo_fecha_ult_interaccion {
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
    sql: ${TABLE}.IndividuoFechaUltInteraccion ;;
  }

  dimension: individuo_licencia_conducir_numero {
    type: string
    sql: ${TABLE}.IndividuoLicenciaConducirNumero ;;
  }

  dimension: individuo_movil_numero {
    type: string
    sql: ${TABLE}.IndividuoMovilNumero ;;
  }

  dimension: individuo_nombre {
    type: string
    sql: ${TABLE}.IndividuoNombre ;;
  }

  dimension: individuo_ocupacion {
    type: string
    sql: ${TABLE}.IndividuoOcupacion ;;
  }

  dimension: individuo_sexo {
    type: string
    sql: ${TABLE}.IndividuoSexo ;;
  }

  dimension_group: individuo_srcfecha_creacion {
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
    sql: ${TABLE}.IndividuoSRCFechaCreacion ;;
  }

  dimension_group: individuo_srcfecha_mod {
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
    sql: ${TABLE}.IndividuoSRCFechaMod ;;
  }

  dimension: individuo_srcid {
    type: string
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.IndividuoSRCId ;;
  }

  dimension: individuo_srcid_usuario_creacion {
    type: string
    hidden: yes
    sql: ${TABLE}.IndividuoSRCIdUsuarioCreacion ;;
  }

  dimension: individuo_srcid_usuario_mod {
    type: string
    hidden: yes
    sql: ${TABLE}.IndividuoSRCIdUsuarioMod ;;
  }

  dimension: individuo_telefono_casa_numero {
    type: string
    sql: ${TABLE}.IndividuoTelefonoCasaNumero ;;
  }

  dimension: individuo_telefono_numero {
    type: string
    sql: ${TABLE}.IndividuoTelefonoNumero ;;
  }

  dimension: individuo_tipo_documento_nombre {
    type: string
    sql: ${TABLE}.IndividuoTipoDocumentoNombre ;;
  }

  dimension: individuo_tipo_documento_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.IndividuoTipoDocumentoSK ;;
  }

  dimension: individuo_tipo_documento_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.IndividuoTipoDocumentoSRCId ;;
  }

  dimension: individuo_titulo_cortesia {
    type: string
    sql: ${TABLE}.IndividuoTituloCortesia ;;
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
