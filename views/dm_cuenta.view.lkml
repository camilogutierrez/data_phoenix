view: dm_cuenta {
  view_label: "Cuenta"
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_vw_gcp.DM_Cuenta`
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

  dimension: cliente_cantidad_empleados {
    type: number
    sql: ${TABLE}.ClienteCantidadEmpleados ;;
  }

  dimension: cliente_cod_persona_contacto {
    type: string

    sql: ${TABLE}.ClienteCodPersonaContacto ;;
  }

  dimension: cliente_codigo {
    type: number
    label: "Codigo de Cliente"
    sql: ${TABLE}.ClienteCodigo ;;
  }

  dimension: cliente_codigo_texto {
    type: string
    sql: ${TABLE}.ClienteCodigoTexto ;;
  }

  dimension: cliente_cuit {
    type: number
    sql: ${TABLE}.ClienteCUIT ;;
  }

  dimension: cliente_email {
    type: string
    sql: ${TABLE}.ClienteEmail ;;
  }

  dimension_group: cliente_email_fecha_mod {
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
    sql: ${TABLE}.ClienteEmailFechaMod ;;
  }

  dimension: cliente_es_jubilado {
    type: string
    sql: ${TABLE}.ClienteEsJubilado ;;
  }

  dimension: cliente_es_vip {
    type: string
    sql: ${TABLE}.ClienteEsVIP ;;
  }

  dimension_group: cliente_fecha_creacion_hw {
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
    sql: ${TABLE}.ClienteFechaCreacionHW ;;
  }

  dimension_group: cliente_fecha_fundacion {
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
    sql: ${TABLE}.ClienteFechaFundacion ;;
  }

  dimension: cliente_industria {
    type: string
    sql: ${TABLE}.ClienteIndustria ;;
  }

  dimension: cliente_ingreso_neto_anual {
    type: number
    sql: ${TABLE}.ClienteIngresoNetoAnual ;;
  }

  dimension: cliente_numero_fax {
    type: string
    sql: ${TABLE}.ClienteNumeroFax ;;
  }

  dimension: cliente_numero_telefono_alternativo {
    type: string
    sql: ${TABLE}.ClienteNumeroTelefonoAlternativo ;;
  }

  dimension: cliente_numero_telefono_ppal {
    type: string
    sql: ${TABLE}.ClienteNumeroTelefonoPPal ;;
  }

  dimension: cliente_razon_social {
    type: string
    sql: ${TABLE}.ClienteRazonSocial ;;
  }

  dimension: cliente_segmento1_nombre {
    type: string
    sql: ${TABLE}.ClienteSegmento1Nombre ;;
  }

  dimension: cliente_segmento1_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.ClienteSegmento1SK ;;
  }

  dimension: cliente_segmento1_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.ClienteSegmento1SRCId ;;
  }

  dimension: cliente_segmento2_nombre {
    type: string
    sql: ${TABLE}.ClienteSegmento2Nombre ;;
  }

  dimension: cliente_segmento2_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.ClienteSegmento2SK ;;
  }

  dimension: cliente_segmento2_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.ClienteSegmento2SRCId ;;
  }

  dimension: cuenta_categoria_socio {
    type: string
    sql: ${TABLE}.CuentaCategoriaSocio ;;
  }

  dimension: cuenta_ciclo_facturacion {
    type: string
    label: "Ciclo de Facturacion"
    sql: ${TABLE}.CuentaCicloFacturacion ;;
  }

  dimension: cuenta_codigo {
    type: string
    sql: ${TABLE}.CuentaCodigo ;;
  }

  dimension: cuenta_codigo_facturacion {
    type: number
    sql: ${TABLE}.CuentaCodigoFacturacion ;;
  }

  dimension: cuenta_codigo_origen {
    type: string
    sql: ${TABLE}.CuentaCodigoOrigen ;;
  }

  dimension: cuenta_codigo_padre {
    type: string
    sql: ${TABLE}.CuentaCodigoPadre ;;
  }

  dimension: cuenta_direccion_envio_id {
    type: string
    hidden: yes
    sql: ${TABLE}.CuentaDireccionEnvioId ;;
  }

  dimension: cuenta_direccion_envio_validada {
    type: string
    sql: ${TABLE}.CuentaDireccionEnvioValidada ;;
  }

  dimension: cuenta_direccion_facturacion_id {
    type: string
    hidden: yes
    sql: ${TABLE}.CuentaDireccionFacturacionId ;;
  }

  dimension: cuenta_direccion_facturacion_validada {
    type: string
    sql: ${TABLE}.CuentaDireccionFacturacionValidada ;;
  }

  dimension: cuenta_es_activo {
    type: string
    sql: ${TABLE}.CuentaEsActivo ;;
  }

  dimension: cuenta_es_compra_financiada {
    type: string
    sql: ${TABLE}.CuentaEsCompraFinanciada ;;
  }

  dimension: cuenta_es_deuda_financiada {
    type: string
    sql: ${TABLE}.CuentaEsDeudaFinanciada ;;
  }

  dimension: cuenta_es_fraude {
    type: string
    sql: ${TABLE}.CuentaEsFraude ;;
  }

  dimension: cuenta_es_morosidad {
    type: string
    sql: ${TABLE}.CuentaEsMorosidad ;;
  }

  dimension: cuenta_es_nominado {
    type: string
    sql: ${TABLE}.CuentaEsNominado ;;
  }

  dimension: cuenta_es_socio {
    type: string
    sql: ${TABLE}.CuentaEsSocio ;;
  }

  dimension: cuenta_estado_nombre {
    type: string
    sql: ${TABLE}.CuentaEstadoNombre ;;
  }

  dimension: cuenta_estado_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.CuentaEstadoSK ;;
  }

  dimension: cuenta_estado_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.CuentaEstadoSRCId ;;
  }

  dimension_group: cuenta_fecha_creacion {
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
    sql: ${TABLE}.CuentaFechaCreacion ;;
  }

  dimension: cuenta_fecha_creacion_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.CuentaFechaCreacionSK ;;
  }

  dimension_group: cuenta_fecha_creacion_src {
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
    sql: ${TABLE}.CuentaFechaCreacionSRC ;;
  }

  dimension_group: cuenta_fecha_modificacion {
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
    sql: ${TABLE}.CuentaFechaModificacion ;;
  }

  dimension_group: cuenta_fecha_modificacion_src {
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
    sql: ${TABLE}.CuentaFechaModificacionSRC ;;
  }

  dimension: cuenta_frecuencia_facturacion {
    type: string
    sql: ${TABLE}.CuentaFrecuenciaFacturacion ;;
  }

  dimension: cuenta_marca_migracion {
    type: string
    sql: ${TABLE}.CuentaMarcaMigracion ;;
  }

  dimension: cuenta_medio_de_pago_id {
    type: string
    hidden: yes
    sql: ${TABLE}.CuentaMedioDePagoId ;;
  }

  dimension: cuenta_metodo_entrega {
    type: string
    sql: ${TABLE}.CuentaMetodoEntrega ;;
  }

  dimension: cuenta_preferencias_contacto {
    type: string
    sql: ${TABLE}.CuentaPreferenciasContacto ;;
  }

  dimension: cuenta_puntos_acumulados {
    type: number
    sql: ${TABLE}.CuentaPuntosAcumulados ;;
  }

  dimension: cuenta_riesgo_crediticio {
    type: string
    sql: ${TABLE}.CuentaRiesgoCrediticio ;;
  }

  dimension: cuenta_sla {
    type: string
    sql: ${TABLE}.CuentaSLA ;;
  }

  dimension: cuenta_srcid {
    type: string
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.CuentaSRCId ;;
  }

  dimension: cuenta_tipo_nombre {
    type: string
    sql: ${TABLE}.CuentaTipoNombre ;;
  }

  dimension: cuenta_tipo_pago {
    type: string
    sql: ${TABLE}.CuentaTipoPago ;;
  }

  dimension: cuenta_tipo_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.CuentaTipoSK ;;
  }

  dimension: cuenta_tipo_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.CuentaTipoSRCId ;;
  }

  dimension: cuenta_usuario_alta_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.CuentaUsuarioAltaSRCId ;;
  }

  dimension: cuenta_usuario_mod_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.CuentaUsuarioModSRCId ;;
  }

  dimension: cuenta_valor {
    type: number
    sql: ${TABLE}.CuentaValor ;;
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
