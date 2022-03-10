view: dm_cuenta_cliente {
  sql_table_name: `teco-prod-edw-5e1b.ue4_prod_edw_pub_gcp.DM_CuentaCliente` ;;
  view_label: "Cuenta Cliente"

  ###############
  # PRIMARY KEY #
  ###############

  dimension: cuenta_srcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.CuentaSRCId ;;
    group_label: "Cuenta"
    label: "ID"
  }

  #########
  # DATES #
  #########
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
    label: "Fecha Entidad"
  }

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
    label: "Cuenta Fecha de Última Suspensión Voluntaria"
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
    label: "Cuenta Fecha de Creación"
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
    label: "Cuenta Fecha de Creación HW"
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
    label: "Cuenta Fecha Creación HWSRC"
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
    label: "Cuenta Fecha Creación SRC"
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
    label: "Cuenta Fecha Modificación"
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
    label: "Cuenta Fecha Modificación SRC"
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
    label: "Persona Fecha Alta"
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
    label: "Persona Fecha Creación"
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
    label: "Persona Fecha Creación SRC"
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
    label: "Persona Fecha Modificación"
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
    label: "Persona Fecha Modificación SRC"
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
    label: "Persona Fecha Nacimiento"
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
    label: "Persona Fecha de Última Interacción"
  }

  ###########
  # STRINGS #
  ###########
  dimension: cuenta_cliente_srcid {
    type: string
    sql: ${TABLE}.CuentaClienteSRCId ;;
    group_label: "Cuenta"
    label: "Cliente ID"
  }

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

  dimension: cliente_tipo_srcid {
    type: string
    sql: ${TABLE}.ClienteTipoSRCId ;;
    group_label: "Cliente"
    label: "Tipo ID"
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

  dimension: cuenta_estado_nombre {
    type: string
    sql: ${TABLE}.CuentaEstadoNombre ;;
    group_label: "Cuenta"
    label: "Estado Nombre"
  }

  dimension: cuenta_estado_srcid {
    type: string
    sql: ${TABLE}.CuentaEstadoSRCId ;;
    group_label: "Cuenta"
    label: "Estado ID"
  }

  dimension: cuenta_frecuencia_facturacion {
    type: string
    sql: ${TABLE}.CuentaFrecuenciaFacturacion ;;
    group_label: "Cuenta"
    label: "Frecuencia Facturación"
  }

  dimension: cuenta_hwacct_code {
    type: string
    sql: ${TABLE}.CuentaHWACCT_CODE ;;
    group_label: "Cuenta"
    label: "Código HW"
  }

  dimension: cuenta_marca_migracion {
    type: string
    sql: ${TABLE}.CuentaMarcaMigracion ;;
    group_label: "Cuenta Marca"
    label: "Marca Migración"
  }

  dimension: cuenta_medio_pago_sk {
    type: string
    sql: ${TABLE}.CuentaMedioPagoSK ;;
    group_label: "Cuenta"
    label: "Medio Pago SK"
  }

  dimension: cuenta_medio_pago_srcid {
    type: string
    sql: ${TABLE}.CuentaMedioPagoSRCId ;;
    group_label: "Cuenta"
    label: "Medio Pago ID"
  }

  dimension: cuenta_metodo_entrega {
    type: string
    sql: ${TABLE}.CuentaMetodoEntrega ;;
    group_label: "Cuenta"
    label: "Método de Entrega"
  }

  dimension: cuenta_padre_sk {
    type: string
    sql: ${TABLE}.CuentaPadreSK ;;
    group_label: "Cuenta"
    label: "Padre SK"
  }

  dimension: cuenta_padre_srcid {
    type: string
    sql: ${TABLE}.CuentaPadreSRCId ;;
    group_label: "Cuenta"
    label: "Padre ID"
  }

  dimension: cuenta_preferencias_contacto {
    type: string
    sql: ${TABLE}.CuentaPreferenciasContacto ;;
    group_label: "Cuenta"
    label: "Preferencias Contacto"
  }

  dimension: cuenta_riesgo_crediticio {
    type: string
    sql: ${TABLE}.CuentaRiesgoCrediticio ;;
    group_label: "Cuenta"
    label: "Riesgo Crediticio"
  }

  dimension: cuenta_sk {
    type: string
    sql: ${TABLE}.CuentaSK ;;
    group_label: "Cuenta"
    label: "SK"
  }

  dimension: cuenta_sla {
    type: string
    sql: ${TABLE}.CuentaSLA ;;
    group_label: "Cuenta"
    label: "SLA"
  }

  dimension: cuenta_suscripcion_bd {
    type: string
    sql: ${TABLE}.CuentaSuscripcionBD ;;
    group_label: "Cuenta"
    label: "Suscripción BD"
  }

  dimension: cuenta_susp_voluntarias_utilizadas {
    type: string
    sql: ${TABLE}.CuentaSuspVoluntariasUtilizadas ;;
    group_label: "Cuenta"
    label: "Suscripciones Voluntariad Utilizadas"
  }

  dimension: cuenta_tipo_nombre {
    type: string
    sql: ${TABLE}.CuentaTipoNombre ;;
    group_label: "Cuenta"
    label: "Tipo Nombre"
  }

  dimension: cuenta_tipo_pago {
    type: string
    sql: ${TABLE}.CuentaTipoPago ;;
    group_label: "Cuenta"
    label: "Tipo Pago"
  }

  dimension: cuenta_tipo_srcid {
    type: string
    sql: ${TABLE}.CuentaTipoSRCId ;;
    group_label: "Cuenta"
    label: "Tipo ID"
  }

  dimension: persona_apellido {
    type: string
    sql: ${TABLE}.PersonaApellido ;;
    group_label: "Persona"
    label: "Apellido"
  }

  dimension: persona_codigo_empleado {
    type: string
    sql: ${TABLE}.PersonaCodigoEmpleado ;;
    group_label: "Persona"
    label: "Código Empleado"
  }

  dimension: persona_contacto_sk {
    type: string
    sql: ${TABLE}.PersonaContactoSK ;;
    group_label: "Persona"
    label: "Contacto SK"
  }

  dimension: persona_contacto_srcid {
    type: string
    sql: ${TABLE}.PersonaContactoSRCId ;;
    group_label: "Persona"
    label: "Contacto ID"
  }

  dimension: persona_cuilnumero {
    type: string
    sql: ${TABLE}.PersonaCUILNumero ;;
    group_label: "Persona"
    label: "CUIL Nro."
  }

  dimension: persona_documento_numero {
    type: string
    sql: ${TABLE}.PersonaDocumentoNumero ;;
    group_label: "Persona"
    label: "Documento Nro."
  }

  dimension: persona_email {
    type: string
    sql: ${TABLE}.PersonaEmail ;;
    group_label: "Persona"
    label: "Email"
  }

  dimension: persona_estado_laboral {
    type: string
    sql: ${TABLE}.PersonaEstadoLaboral ;;
    group_label: "Persona"
    label: "Estado Laboral"
  }

  dimension: persona_estado_nombre {
    type: string
    sql: ${TABLE}.PersonaEstadoNombre ;;
    group_label: "Persona"
    label: "Estado Nombre"
  }

  dimension: persona_estado_srcid {
    type: string
    sql: ${TABLE}.PersonaEstadoSRCId ;;
    group_label: "Persona"
    label: "Estado ID"
  }

  dimension: persona_fax_numero {
    type: string
    sql: ${TABLE}.PersonaFaxNumero ;;
    group_label: "Persona"
    label: "Fax Nro."
  }

  dimension: persona_genero {
    type: string
    sql: ${TABLE}.PersonaGenero ;;
    group_label: "Persona"
    label: "Género"
  }

  dimension: persona_licencia_conducir_numero {
    type: string
    sql: ${TABLE}.PersonaLicenciaConducirNumero ;;
    group_label: "Persona"
    label: "Licencia de Conducir Nro."
  }

  dimension: persona_movil_numero {
    type: string
    sql: ${TABLE}.PersonaMovilNumero ;;
    group_label: "Persona"
    label: "Movil Nro."
  }

  dimension: persona_nivel_satisfaccion {
    type: string
    sql: ${TABLE}.PersonaNivelSatisfaccion ;;
    group_label: "Persona"
    label: "Nivel de Satisfacción"
  }

  dimension: persona_nombre {
    type: string
    sql: ${TABLE}.PersonaNombre ;;
    group_label: "Persona"
    label: "Nombre"
  }

  dimension: persona_ocupacion {
    type: string
    sql: ${TABLE}.PersonaOcupacion ;;
    group_label: "Persona"
    label: "Ocupación"
  }

  dimension: persona_sk {
    type: string
    sql: ${TABLE}.PersonaSK ;;
    group_label: "Persona"
    label: "SK"
  }

  dimension: persona_srcid {
    type: string
    sql: ${TABLE}.PersonaSRCId ;;
    group_label: "Persona"
    label: "ID"
  }

  dimension: persona_telefono_casa_numero {
    type: string
    sql: ${TABLE}.PersonaTelefonoCasaNumero ;;
    group_label: "Persona"
    label: "Teléfono Casa Nro."
  }

  dimension: persona_telefono_numero {
    type: string
    sql: ${TABLE}.PersonaTelefonoNumero ;;
    group_label: "Persona"
    label: "Teléfono Nro."
  }

  dimension: persona_tipo_documento_nombre {
    type: string
    sql: ${TABLE}.PersonaTipoDocumentoNombre ;;
    group_label: "Persona"
    label: "Tipo Documento Nombre"
  }

  dimension: persona_tipo_documento_srcid {
    type: string
    sql: ${TABLE}.PersonaTipoDocumentoSRCId ;;
    group_label: "Persona"
    label: "Tipo Documento ID"
  }

  dimension: persona_titulo_cortesia {
    type: string
    sql: ${TABLE}.PersonaTituloCortesia ;;
    group_label: "Persona"
    label: "Título Cortesía"
  }

  dimension: persona_usuario_creacion_sk {
    type: string
    sql: ${TABLE}.PersonaUsuarioCreacionSK ;;
    group_label: "Persona"
    label: "Usuario Creación"
  }

  dimension: persona_usuario_creacion_srcid {
    type: string
    sql: ${TABLE}.PersonaUsuarioCreacionSRCId ;;
    group_label: "Persona"
    label: "Usuario Creación ID"
  }

  dimension: persona_usuario_modificacion_sk {
    type: string
    sql: ${TABLE}.PersonaUsuarioModificacionSK ;;
    group_label: "Persona"
    label: "Usuario Modificación SK"
  }

  dimension: persona_usuario_modificacion_srcid {
    type: string
    sql: ${TABLE}.PersonaUsuarioModificacionSRCId ;;
    group_label: "Persona"
    label: "Usuario Modificación ID"
  }

  ###########
  # NUMBERS #
  ###########
  dimension: cliente_ingreso_bruto_anual {
    type: number
    sql: ${TABLE}.ClienteIngresoBrutoAnual ;;
    group_label: "Cliente"
    label: "Ingreso Bruto Anual"
  }

  dimension: cliente_segmento1_sk {
    type: number
    sql: ${TABLE}.ClienteSegmento1SK ;;
    group_label: "Cliente"
    label: "Segmento 1 SK"
  }

  dimension: cliente_segmento2_sk {
    type: number
    sql: ${TABLE}.ClienteSegmento2SK ;;
    group_label: "Cliente"
    label: "Segmento 2 SK"
  }

  dimension: cliente_tipo_sk {
    type: number
    sql: ${TABLE}.ClienteTipoSK ;;
    group_label: "Cliente"
    label: "Tipo SK"
  }

  dimension: cliente_valor {
    type: number
    sql: ${TABLE}.ClienteValor ;;
    group_label: "Cliente"
    label: "Valor"
  }

  dimension: cuenta_codigo_facturacion {
    type: number
    sql: ${TABLE}.CuentaCodigoFacturacion ;;
    group_label: "Cuenta"
    label: "Código Factuación"
  }

  dimension: cuenta_estado_sk {
    type: number
    sql: ${TABLE}.CuentaEstadoSK ;;
    group_label: "Cuenta"
    label: "Estado SK"
  }

  dimension: cuenta_hwacct_id {
    type: number
    sql: ${TABLE}.CuentaHWAcct_Id ;;
    group_label: "Cuenta"
    label: "ID HW"
  }

  dimension: cuenta_hwcust_id {
    type: number
    sql: ${TABLE}.CuentaHWCUST_ID ;;
    group_label: "Cuenta"
    label: "Custom ID HW"
  }

  dimension: cuenta_monto_desc_convergente {
    type: number
    sql: ${TABLE}.CuentaMontoDescConvergente ;;
    group_label: "Cuenta"
    label: "Monto de Descuento Convergente"
  }

  dimension: cuenta_puntos_acumulados {
    type: number
    sql: ${TABLE}.CuentaPuntosAcumulados ;;
    group_label: "Cuenta"
    label: "Puntos Acumulados"
  }

  dimension: cuenta_tipo_sk {
    type: number
    sql: ${TABLE}.CuentaTipoSK ;;
    group_label: "Cuenta"
    label: "Tipo SK"
  }

  dimension: origen_srcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.OrigenSRCId ;;
    label: "Origen ID"
  }

  dimension: persona_codigo_integracion {
    type: number
    sql: ${TABLE}.PersonaCodigoIntegracion ;;
    group_label: "Persona"
    label: "Código Integración"
  }

  dimension: persona_edad {
    type: number
    sql: ${TABLE}.PersonaEdad ;;
    group_label: "Persona"
    label: "Edad"
  }

  dimension: persona_estado_sk {
    type: number
    sql: ${TABLE}.PersonaEstadoSK ;;
    group_label: "Persona"
    label: "Estado SK"
  }

  dimension: persona_tipo_documento_sk {
    type: number
    sql: ${TABLE}.PersonaTipoDocumentoSK ;;
    group_label: "Persona"
    label: "Tipo Documento SK"
  }

  ############
  # BOOLEANS #
  ############
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

  dimension: cuenta_marca_compra_financiada {
    type: yesno
    sql: ${TABLE}.CuentaMarcaCompraFinanciada ;;
    group_label: "Cuenta Marca"
    label: "Compra Financiada"
  }

  dimension: cuenta_marca_debito {
    type: yesno
    sql: ${TABLE}.CuentaMarcaDebito ;;
    group_label: "Cuenta Marca"
    label: "Débito"
  }

  dimension: cuenta_marca_deuda_financiada {
    type: yesno
    sql: ${TABLE}.CuentaMarcaDeudaFinanciada ;;
    group_label: "Cuenta Marca"
    label: "Deuda Financiada"
  }

  dimension: cuenta_domicilio_envio_validado {
    type: yesno
    sql: ${TABLE}.CuentaDomicilioEnvioValidado ;;
    group_label: "Cuenta"
    label: "Domicilio Envío Validado"
  }

  dimension: cuenta_domicilio_facturacion_validado {
    type: yesno
    sql: ${TABLE}.CuentaDomicilioFacturacionValidado ;;
    group_label: "Cuenta"
    label: "Domicilio Facturación Validado"
  }

  dimension: cuenta_marca_morosidad {
    type: yesno
    sql: ${TABLE}.CuentaMarcaMorosidad ;;
    group_label: "Cuenta Marca"
    label: "Morosidad"
  }

  dimension: cuenta_marca_no_nominado {
    type: yesno
    sql: ${TABLE}.CuentaMarcaNoNominado ;;
    group_label: "Cuenta Marca"
    label: "No Nominado"
  }

  dimension: cuenta_marca_socio {
    type: yesno
    sql: ${TABLE}.CuentaMarcaSocio ;;
    group_label: "Cuenta Marca"
    label: "Socio"
  }

  dimension: eliminado_en_origen {
    type: yesno
    sql: ${TABLE}.EliminadoEnOrigen ;;
    group_label: "Cuenta"
    label: "Eliminado en Origen"
  }

  dimension: persona_marca_enviar_fax {
    type: yesno
    sql: ${TABLE}.PersonaMarcaEnviarFax ;;
    group_label: "Persona"
    label: "Marca Enviar Fax"
  }

  dimension: persona_marca_enviar_mail {
    type: yesno
    sql: ${TABLE}.PersonaMarcaEnviarMail ;;
    group_label: "Persona"
    label: "Marca Enviar Mail"
  }

  dimension: persona_marca_fraude {
    type: yesno
    sql: ${TABLE}.PersonaMarcaFraude ;;
    group_label: "Persona"
    label: "Marca Fraude"
  }

  dimension: persona_marca_no_llamar {
    type: yesno
    sql: ${TABLE}.PersonaMarcaNoLlamar ;;
    group_label: "Persona"
    label: "Marca No Llamar"
  }

  ############
  # MEASURES #
  ############
  measure: count {
    type: count
    drill_fields: []
  }
}
