view: dm_cuenta_cliente {
  sql_table_name: `teco-prod-edw-5e1b.ue4_prod_edw_pub_gcp.DM_CuentaCliente` ;;
  view_label: "Cuenta Cliente"

  dimension: cliente_ciclo_facturacion {
    type: string
    sql: ${TABLE}.ClienteCicloFacturacion ;;
    group_label: "Cliente"
    label: "Ciclo Facturación"
  }

  dimension: cliente_codigo_integracion {
    type: string
    sql: ${TABLE}.ClienteCodigoIntegracion ;;
    group_label: "Cliente"
    label: "Código Integración"
  }

  dimension: cliente_codigo_integracion_texto {
    type: string
    sql: ${TABLE}.ClienteCodigoIntegracionTexto ;;
    group_label: "Cliente"
    label: "Código Integración Texto"
  }

  dimension: cliente_cuit {
    type: string
    sql: ${TABLE}.ClienteCUIT ;;
    group_label: "Cliente"
    label: "CUIT"
  }

  dimension: cliente_email {
    type: string
    sql: ${TABLE}.ClienteEmail ;;
    group_label: "Cliente"
    label: "Email"
  }

  dimension: cliente_ingreso_bruto_anual {
    type: number
    sql: ${TABLE}.ClienteIngresoBrutoAnual ;;
    group_label: "Cliente"
    label: "Ingreso Bruto Anual"
  }

  dimension: cliente_marca_activo {
    type: yesno
    sql: ${TABLE}.ClienteMarcaActivo ;;
    group_label: "Cliente Marca"
    label: "Activo"
  }

  dimension: cliente_marca_fraude {
    type: yesno
    sql: ${TABLE}.ClienteMarcaFraude ;;
    group_label: "Cliente Marca"
    label: "Fraude"
  }

  dimension: cliente_marca_jubilado {
    type: yesno
    sql: ${TABLE}.ClienteMarcaJubilado ;;
    group_label: "Cliente Marca"
    label: "Jubilado"
  }

  dimension: cliente_marca_partner {
    type: yesno
    sql: ${TABLE}.ClienteMarcaPartner ;;
    group_label: "Cliente Marca"
    label: "Partner"
  }

  dimension: cliente_marca_prensa {
    type: yesno
    sql: ${TABLE}.ClienteMarcaPrensa ;;
    group_label: "Cliente Marca"
    label: "Prensa"
  }

  dimension: cliente_marca_restriccion_comercial {
    type: yesno
    sql: ${TABLE}.ClienteMarcaRestriccionComercial ;;
    group_label: "Cliente Marca"
    label: "Restricción Comercial"
  }

  dimension: cliente_marca_vip {
    type: yesno
    sql: ${TABLE}.ClienteMarcaVIP ;;
    group_label: "Cliente Marca"
    label: "VIP"
  }

  dimension: cliente_numero_fax {
    type: string
    sql: ${TABLE}.ClienteNumeroFax ;;
    group_label: "Cliente"
    label: "Número de Fax"
  }

  dimension: cliente_numero_telefono_alternativo {
    type: string
    sql: ${TABLE}.ClienteNumeroTelefonoAlternativo ;;
    group_label: "Cliente"
    label: "Número de Teléfono Alternativo"
  }

  dimension: cliente_persona_contacto_sk {
    type: string
    sql: ${TABLE}.ClientePersonaContactoSK ;;
    group_label: "Cliente"
    label: "Persona de Contacto"
  }

  dimension: cliente_persona_contacto_srcid {
    type: string
    sql: ${TABLE}.ClientePersonaContactoSRCId ;;
    group_label: "Cliente"
    label: "Persona de Contacto ID"

  }

  dimension: cliente_razon_social {
    type: string
    sql: ${TABLE}.ClienteRazonSocial ;;
    group_label: "Cliente"
    label: "Razón Social"
  }

  dimension: cliente_segmento1_nombre {
    type: string
    sql: ${TABLE}.ClienteSegmento1Nombre ;;
    group_label: "Cliente"
    label: "Segmento 1 Nombre"
  }

  dimension: cliente_segmento1_sk {
    type: number
    sql: ${TABLE}.ClienteSegmento1SK ;;
    group_label: "Cliente"
    label: "Segmento 1 SK"
  }

  dimension: cliente_segmento1_srcid {
    type: string
    sql: ${TABLE}.ClienteSegmento1SRCId ;;
    group_label: "Cliente"
    label: "Segmento 1 ID"
  }

  dimension: cliente_segmento2_nombre {
    type: string
    sql: ${TABLE}.ClienteSegmento2Nombre ;;
    group_label: "Cliente"
    label: "Segmento 2 Nombre"
  }

  dimension: cliente_segmento2_sk {
    type: number
    sql: ${TABLE}.ClienteSegmento2SK ;;
    group_label: "Cliente"
    label: "Segmento 2 SK"
  }

  dimension: cliente_segmento2_srcid {
    type: string
    sql: ${TABLE}.ClienteSegmento2SRCId ;;
    group_label: "Cliente"
    label: "Segmento 2 ID"
  }

  dimension: cliente_sk {
    type: string
    sql: ${TABLE}.ClienteSK ;;
    group_label: "Cliente"
    label: "SK"
  }

  dimension: cliente_srcid {
    type: string
    sql: ${TABLE}.ClienteSRCId ;;
    group_label: "Cliente"
    label: "ID"
  }

  dimension: cliente_tipo_nombre {
    type: string
    sql: ${TABLE}.ClienteTipoNombre ;;
    group_label: "Cliente"
    label: "Tipo Nombre"
  }

  dimension: cliente_tipo_pago {
    type: string
    sql: ${TABLE}.ClienteTipoPago ;;
    group_label: "Cliente"
    label: "Tipo Pago"
  }

  dimension: cliente_tipo_sk {
    type: number
    sql: ${TABLE}.ClienteTipoSK ;;
    group_label: "Cliente"
    label: "Tipo SK"
  }

  dimension: cliente_tipo_srcid {
    type: string
    sql: ${TABLE}.ClienteTipoSRCId ;;
    group_label: "Cliente"
    label: "Tipo ID"
  }

  dimension: cliente_valor {
    type: number
    sql: ${TABLE}.ClienteValor ;;
    group_label: "Cliente"
    label: "Valor"
  }

  dimension: cuenta_beneficio_prod_adquirido {
    type: string
    sql: ${TABLE}.CuentaBeneficioProdAdquirido ;;
    group_label: "Cuenta"
    label: "Beneficio Producto Adquirido"
  }

  dimension: cuenta_categoria_socio {
    type: string
    sql: ${TABLE}.CuentaCategoriaSocio ;;
    group_label: "Cuenta"
    label: "Categoría Socio"
  }

  dimension: cuenta_ciclo_facturacion {
    type: string
    sql: ${TABLE}.CuentaCicloFacturacion ;;
    group_label: "Cuenta"
    label: "Ciclo Facturación"
  }

  dimension: cuenta_cliente_sk {
    type: string
    sql: ${TABLE}.CuentaClienteSK ;;
    group_label: "Cuenta"
    label: "Cliente SK"
  }

  dimension: cuenta_cliente_srcid {
    type: string
    sql: ${TABLE}.CuentaClienteSRCId ;;
    group_label: "Cuenta"
    label: "Cliente ID"
  }

  dimension: cuenta_cod_promocion_be {
    type: string
    sql: ${TABLE}.CuentaCodPromocionBE ;;
    group_label: "Cuenta"
    label: "Código Promoción BE"
  }

  dimension: cuenta_cod_promocion_dc {
    type: string
    sql: ${TABLE}.CuentaCodPromocionDC ;;
    group_label: "Cuenta"
    label: "Código Promoción DC"
  }

  dimension: cuenta_codigo {
    type: string
    sql: ${TABLE}.CuentaCodigo ;;
    group_label: "Cuenta"
    label: "Código"
  }

  dimension: cuenta_codigo_facturacion {
    type: number
    sql: ${TABLE}.CuentaCodigoFacturacion ;;
    group_label: "Cuenta"
    label: "Código Factuación"
  }

  dimension: cuenta_codigo_origen {
    type: string
    sql: ${TABLE}.CuentaCodigoOrigen ;;
    group_label: "Cuenta"
    label: "Código Origen"
  }

  dimension: cuenta_domicilio_envio_sk {
    type: string
    sql: ${TABLE}.CuentaDomicilioEnvioSK ;;
    group_label: "Cuenta"
    label: "Domicilio Envío SK"
  }

  dimension: cuenta_domicilio_envio_srcid {
    type: string
    sql: ${TABLE}.CuentaDomicilioEnvioSRCId ;;
    group_label: "Cuenta"
    label: "Domicilio Envío ID"
  }

  dimension: cuenta_domicilio_envio_validado {
    type: yesno
    sql: ${TABLE}.CuentaDomicilioEnvioValidado ;;
    group_label: "Cuenta"
    label: "Domicilio Envío Validado"
  }

  dimension: cuenta_domicilio_facturacion_sk {
    type: string
    sql: ${TABLE}.CuentaDomicilioFacturacionSK ;;
    group_label: "Cuenta"
    label: "Domicilio Facturación"
  }

  dimension: cuenta_domicilio_facturacion_srcid {
    type: string
    sql: ${TABLE}.CuentaDomicilioFacturacionSRCId ;;
    group_label: "Cuenta"
    label: "Domicilio Facturación ID"
  }

  dimension: cuenta_domicilio_facturacion_validado {
    type: yesno
    sql: ${TABLE}.CuentaDomicilioFacturacionValidado ;;
    group_label: "Cuenta"
    label: "Domicilio Facturación Validado"
  }

  dimension: cuenta_estado_nombre {
    type: string
    sql: ${TABLE}.CuentaEstadoNombre ;;
    group_label: "Cuenta"
    label: "Estado Nombre"
  }

  dimension: cuenta_estado_sk {
    type: number
    sql: ${TABLE}.CuentaEstadoSK ;;
    group_label: "Cuenta"
    label: "Estado SK"
  }

  dimension: cuenta_estado_srcid {
    type: string
    sql: ${TABLE}.CuentaEstadoSRCId ;;
    group_label: "Cuenta"
    label: "Estado ID"
  }
  #################### HASTA ACA###############
  dimension_group: cuenta_fec_ultima_suspension_voluntaria_src {
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
    sql: ${TABLE}.CuentaFecUltimaSuspensionVoluntariaSRC ;;
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

  dimension_group: cuenta_fecha_creacion_hw {
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
    sql: ${TABLE}.CuentaFechaCreacionHW ;;
  }

  dimension_group: cuenta_fecha_creacion_hwsrc {
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
    sql: ${TABLE}.CuentaFechaCreacionHWSRC ;;
  }

  dimension_group: cuenta_fecha_creacion_src {
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

  dimension: cuenta_hwacct_code {
    type: string
    sql: ${TABLE}.CuentaHWACCT_CODE ;;
  }

  dimension: cuenta_hwacct_id {
    type: number
    sql: ${TABLE}.CuentaHWAcct_Id ;;
  }

  dimension: cuenta_hwcust_id {
    type: number
    sql: ${TABLE}.CuentaHWCUST_ID ;;
  }

  dimension: cuenta_marca_compra_financiada {
    type: yesno
    sql: ${TABLE}.CuentaMarcaCompraFinanciada ;;
  }

  dimension: cuenta_marca_debito {
    type: yesno
    sql: ${TABLE}.CuentaMarcaDebito ;;
  }

  dimension: cuenta_marca_deuda_financiada {
    type: yesno
    sql: ${TABLE}.CuentaMarcaDeudaFinanciada ;;
  }

  dimension: cuenta_marca_migracion {
    type: string
    sql: ${TABLE}.CuentaMarcaMigracion ;;
  }

  dimension: cuenta_marca_morosidad {
    type: yesno
    sql: ${TABLE}.CuentaMarcaMorosidad ;;
  }

  dimension: cuenta_marca_no_nominado {
    type: yesno
    sql: ${TABLE}.CuentaMarcaNoNominado ;;
  }

  dimension: cuenta_marca_socio {
    type: yesno
    sql: ${TABLE}.CuentaMarcaSocio ;;
  }

  dimension: cuenta_medio_pago_sk {
    type: string
    sql: ${TABLE}.CuentaMedioPagoSK ;;
  }

  dimension: cuenta_medio_pago_srcid {
    type: string
    sql: ${TABLE}.CuentaMedioPagoSRCId ;;
  }

  dimension: cuenta_metodo_entrega {
    type: string
    sql: ${TABLE}.CuentaMetodoEntrega ;;
  }

  dimension: cuenta_monto_desc_convergente {
    type: number
    sql: ${TABLE}.CuentaMontoDescConvergente ;;
  }

  dimension: cuenta_padre_sk {
    type: string
    sql: ${TABLE}.CuentaPadreSK ;;
  }

  dimension: cuenta_padre_srcid {
    type: string
    sql: ${TABLE}.CuentaPadreSRCId ;;
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

  dimension: cuenta_sk {
    type: string
    sql: ${TABLE}.CuentaSK ;;
  }

  dimension: cuenta_sla {
    type: string
    sql: ${TABLE}.CuentaSLA ;;
  }

  dimension: cuenta_srcid {
    type: string
    sql: ${TABLE}.CuentaSRCId ;;
  }

  dimension: cuenta_suscripcion_bd {
    type: string
    sql: ${TABLE}.CuentaSuscripcionBD ;;
  }

  dimension: cuenta_susp_voluntarias_utilizadas {
    type: string
    sql: ${TABLE}.CuentaSuspVoluntariasUtilizadas ;;
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
    sql: ${TABLE}.CuentaTipoSK ;;
  }

  dimension: cuenta_tipo_srcid {
    type: string
    sql: ${TABLE}.CuentaTipoSRCId ;;
  }

  dimension: eliminado_en_origen {
    type: yesno
    sql: ${TABLE}.EliminadoEnOrigen ;;
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
    value_format_name: id
    sql: ${TABLE}.OrigenSRCId ;;
  }

  dimension: persona_apellido {
    type: string
    sql: ${TABLE}.PersonaApellido ;;
  }

  dimension: persona_codigo_empleado {
    type: string
    sql: ${TABLE}.PersonaCodigoEmpleado ;;
  }

  dimension: persona_codigo_integracion {
    type: number
    sql: ${TABLE}.PersonaCodigoIntegracion ;;
  }

  dimension: persona_contacto_sk {
    type: string
    sql: ${TABLE}.PersonaContactoSK ;;
  }

  dimension: persona_contacto_srcid {
    type: string
    sql: ${TABLE}.PersonaContactoSRCId ;;
  }

  dimension: persona_cuilnumero {
    type: string
    sql: ${TABLE}.PersonaCUILNumero ;;
  }

  dimension: persona_documento_numero {
    type: string
    sql: ${TABLE}.PersonaDocumentoNumero ;;
  }

  dimension: persona_edad {
    type: number
    sql: ${TABLE}.PersonaEdad ;;
  }

  dimension: persona_email {
    type: string
    sql: ${TABLE}.PersonaEmail ;;
  }

  dimension: persona_estado_laboral {
    type: string
    sql: ${TABLE}.PersonaEstadoLaboral ;;
  }

  dimension: persona_estado_nombre {
    type: string
    sql: ${TABLE}.PersonaEstadoNombre ;;
  }

  dimension: persona_estado_sk {
    type: number
    sql: ${TABLE}.PersonaEstadoSK ;;
  }

  dimension: persona_estado_srcid {
    type: string
    sql: ${TABLE}.PersonaEstadoSRCId ;;
  }

  dimension: persona_fax_numero {
    type: string
    sql: ${TABLE}.PersonaFaxNumero ;;
  }

  dimension_group: persona_fecha_alta_src {
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
    sql: ${TABLE}.PersonaFechaAltaSRC ;;
  }

  dimension_group: persona_fecha_creacion {
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
    sql: ${TABLE}.PersonaFechaCreacion ;;
  }

  dimension_group: persona_fecha_creacion_src {
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
    sql: ${TABLE}.PersonaFechaCreacionSRC ;;
  }

  dimension_group: persona_fecha_modificacion {
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
    sql: ${TABLE}.PersonaFechaModificacion ;;
  }

  dimension_group: persona_fecha_modificacion_src {
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
    sql: ${TABLE}.PersonaFechaModificacionSRC ;;
  }

  dimension_group: persona_fecha_nacimiento {
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
    sql: ${TABLE}.PersonaFechaNacimiento ;;
  }

  dimension_group: persona_fecha_ult_interaccion {
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
    sql: ${TABLE}.PersonaFechaUltInteraccion ;;
  }

  dimension: persona_genero {
    type: string
    sql: ${TABLE}.PersonaGenero ;;
  }

  dimension: persona_licencia_conducir_numero {
    type: string
    sql: ${TABLE}.PersonaLicenciaConducirNumero ;;
  }

  dimension: persona_marca_enviar_fax {
    type: yesno
    sql: ${TABLE}.PersonaMarcaEnviarFax ;;
  }

  dimension: persona_marca_enviar_mail {
    type: yesno
    sql: ${TABLE}.PersonaMarcaEnviarMail ;;
  }

  dimension: persona_marca_fraude {
    type: yesno
    sql: ${TABLE}.PersonaMarcaFraude ;;
  }

  dimension: persona_marca_no_llamar {
    type: yesno
    sql: ${TABLE}.PersonaMarcaNoLlamar ;;
  }

  dimension: persona_movil_numero {
    type: string
    sql: ${TABLE}.PersonaMovilNumero ;;
  }

  dimension: persona_nivel_satisfaccion {
    type: string
    sql: ${TABLE}.PersonaNivelSatisfaccion ;;
  }

  dimension: persona_nombre {
    type: string
    sql: ${TABLE}.PersonaNombre ;;
  }

  dimension: persona_ocupacion {
    type: string
    sql: ${TABLE}.PersonaOcupacion ;;
  }

  dimension: persona_sk {
    type: string
    sql: ${TABLE}.PersonaSK ;;
  }

  dimension: persona_srcid {
    type: string
    sql: ${TABLE}.PersonaSRCId ;;
  }

  dimension: persona_telefono_casa_numero {
    type: string
    sql: ${TABLE}.PersonaTelefonoCasaNumero ;;
  }

  dimension: persona_telefono_numero {
    type: string
    sql: ${TABLE}.PersonaTelefonoNumero ;;
  }

  dimension: persona_tipo_documento_nombre {
    type: string
    sql: ${TABLE}.PersonaTipoDocumentoNombre ;;
  }

  dimension: persona_tipo_documento_sk {
    type: number
    sql: ${TABLE}.PersonaTipoDocumentoSK ;;
  }

  dimension: persona_tipo_documento_srcid {
    type: string
    sql: ${TABLE}.PersonaTipoDocumentoSRCId ;;
  }

  dimension: persona_titulo_cortesia {
    type: string
    sql: ${TABLE}.PersonaTituloCortesia ;;
  }

  dimension: persona_usuario_creacion_sk {
    type: string
    sql: ${TABLE}.PersonaUsuarioCreacionSK ;;
  }

  dimension: persona_usuario_creacion_srcid {
    type: string
    sql: ${TABLE}.PersonaUsuarioCreacionSRCId ;;
  }

  dimension: persona_usuario_modificacion_sk {
    type: string
    sql: ${TABLE}.PersonaUsuarioModificacionSK ;;
  }

  dimension: persona_usuario_modificacion_srcid {
    type: string
    sql: ${TABLE}.PersonaUsuarioModificacionSRCId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
