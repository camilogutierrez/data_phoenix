view: dm_cuenta_cliente {
  sql_table_name: @{gcp_dataset_pub}.DM_CuentaCliente` ;;
  suggestions: no
  label: "Cuenta Cliente"
  fields_hidden_by_default: yes

  ## Dimensions

    ## Primary Key

  dimension: cuenta_srcid {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.CuentaSRCId ;;
  }

    ## Dates

  dimension: fecha_entidad {
    type: date
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
    label: "Cuenta Ultima Suspension Voluntaria"
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
    label: "Cuenta Creacion HW"
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
    label: "Cuenta Creacion"
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
    label: "Cuenta Modificacion"
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
    label: "Persona Alta"
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
    label: "Persona Creacion"
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
    label: "Persona Modificacion"
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
    label: "Persona Nacimiento"
  }

    ## Flags

  dimension: cliente_marca_activo {
    type: yesno
    sql: ${TABLE}.ClienteMarcaActivo ;;
    group_label: "Cliente"
    label: "Es Activo"
  }

  dimension: cliente_marca_fraude {
    type: yesno
    sql: ${TABLE}.ClienteMarcaFraude ;;
    group_label: "Cliente"
    label: "Es Fraude"
  }

  dimension: cliente_marca_jubilado {
    type: yesno
    sql: ${TABLE}.ClienteMarcaJubilado ;;
    group_label: "Cliente"
    label: "Es Jubilado"
  }

  dimension: cliente_marca_partner {
    type: yesno
    sql: ${TABLE}.ClienteMarcaPartner ;;
    group_label: "Cliente"
    label: "Es Partner"
  }

  dimension: cliente_marca_prensa {
    type: yesno
    sql: ${TABLE}.ClienteMarcaPrensa ;;
    group_label: "Cliente"
    label: "Es Prensa"
  }

  dimension: cliente_marca_restriccion_comercial {
    type: yesno
    sql: ${TABLE}.ClienteMarcaRestriccionComercial ;;
    group_label: "Cliente"
    label: "Es Restriccion Comercial"
  }

  dimension: cliente_marca_vip {
    type: yesno
    sql: ${TABLE}.ClienteMarcaVIP ;;
    group_label: "Cliente"
    label: "Es VIP"
  }

  dimension: cuenta_marca_compra_financiada {
    type: yesno
    sql: ${TABLE}.CuentaMarcaCompraFinanciada ;;
    group_label: "Cuenta"
    label: "Es Compra Financiada"
  }

  dimension: cuenta_marca_debito {
    type: yesno
    sql: ${TABLE}.CuentaMarcaDebito ;;
    group_label: "Cuenta"
    label: "Es Debito"
  }

  dimension: cuenta_marca_deuda_financiada {
    type: yesno
    sql: ${TABLE}.CuentaMarcaDeudaFinanciada ;;
    group_label: "Cuenta"
    label: "Es Deuda Financiada"
  }

  dimension: cuenta_domicilio_envio_validado {
    type: yesno
    sql: ${TABLE}.CuentaDomicilioEnvioValidado ;;
    group_label: "Cuenta"
    label: "Es Domicilio Envio Validado"
  }

  dimension: cuenta_domicilio_facturacion_validado {
    type: yesno
    sql: ${TABLE}.CuentaDomicilioFacturacionValidado ;;
    group_label: "Cuenta"
    label: "Es Domicilio Facturacion Validado"
  }

  dimension: cuenta_marca_morosidad {
    type: yesno
    sql: ${TABLE}.CuentaMarcaMorosidad ;;
    group_label: "Cuenta"
    label: "Es Morosidad"
  }

  dimension: cuenta_marca_no_nominado {
    type: yesno
    sql: ${TABLE}.CuentaMarcaNoNominado ;;
    group_label: "Cuenta"
    label: "Es No Nominado"
  }

  dimension: cuenta_marca_socio {
    type: yesno
    sql: ${TABLE}.CuentaMarcaSocio ;;
    group_label: "Cuenta"
    label: "Es Socio"
  }

  dimension: eliminado_en_origen {
    type: yesno
    sql: ${TABLE}.EliminadoEnOrigen ;;
    group_label: "Cuenta"
    label: "Es Eliminado Origen"
  }

  dimension: persona_marca_enviar_fax {
    type: yesno
    sql: ${TABLE}.PersonaMarcaEnviarFax ;;
    group_label: "Persona"
    label: "Es Enviar Fax"
  }

  dimension: persona_marca_enviar_mail {
    type: yesno
    sql: ${TABLE}.PersonaMarcaEnviarMail ;;
    group_label: "Persona"
    label: "Es Enviar Mail"
  }

  dimension: persona_marca_fraude {
    type: yesno
    sql: ${TABLE}.PersonaMarcaFraude ;;
    group_label: "Persona"
    label: "Es Fraude"
  }

  dimension: persona_marca_no_llamar {
    type: yesno
    sql: ${TABLE}.PersonaMarcaNoLlamar ;;
    group_label: "Persona"
    label: "Es No Llamar"
  }

    ## Strings

  dimension: cuenta_cliente_srcid {
    type: string
    sql: ${TABLE}.CuentaClienteSRCId ;;
    group_label: "Cuenta"
    label: "Cuenta Cliente Id"
  }

  dimension: cliente_ciclo_facturacion {
    type: string
    sql: ${TABLE}.ClienteCicloFacturacion ;;
    group_label: "Cliente"
    group_item_label: "Ciclo Facturacion"
    label: "Cliente Ciclo Facturacion"
  }

  dimension: cliente_codigo_integracion {
    type: string
    sql: ${TABLE}.ClienteCodigoIntegracion ;;
    group_label: "Cliente"
    group_item_label: "Codigo Integracion"
    label: "Cliente Codigo Integracion"
  }

  dimension: cliente_codigo_integracion_texto {
    type: string
    sql: ${TABLE}.ClienteCodigoIntegracionTexto ;;
    group_label: "Cliente"
    group_item_label: "Codigo Integracion Texto"
    label: "Cliente Codigo Integracion Texto"
  }

  dimension: cliente_cuit {
    type: string
    sql: ${TABLE}.ClienteCUIT ;;
    group_label: "Cliente"
    group_item_label: "CUIT"
    label: "Cliente CUIT"
  }

  dimension: cliente_email {
    type: string
    sql: ${TABLE}.ClienteEmail ;;
    group_label: "Cliente"
    group_item_label: "Email"
    label: "Cliente Email"
  }

  dimension: cliente_numero_fax {
    type: string
    sql: ${TABLE}.ClienteNumeroFax ;;
    group_label: "Cliente"
    group_item_label: "Fax"
    label: "Cliente Fax"
  }

  dimension: cliente_numero_telefono_alternativo {
    type: string
    sql: ${TABLE}.ClienteNumeroTelefonoAlternativo ;;
    group_label: "Cliente"
    group_item_label: "Telefono Alternativo"
    label: "Cliente Teléfono Alternativo"
  }

  dimension: cliente_persona_contacto_srcid {
    type: string
    sql: ${TABLE}.ClientePersonaContactoSRCId ;;
    group_label: "Cliente"
    group_item_label: "Persona Contacto Id"
    label: "Cliente Persona Contacto Id"
  }

  dimension: cliente_razon_social {
    type: string
    sql: ${TABLE}.ClienteRazonSocial ;;
    group_label: "Cliente"
    group_item_label: "Razon Social"
    label: "Cliente Razon Social"
  }

  dimension: cliente_segmento1_nombre {
    type: string
    sql: ${TABLE}.ClienteSegmento1Nombre ;;
    group_label: "Cliente"
    group_item_label: "Segmento 1"
    label: "Cliente Segmento 1"
  }

  dimension: cliente_segmento1_srcid {
    type: string
    sql: ${TABLE}.ClienteSegmento1SRCId ;;
    group_label: "Cliente"
    group_item_label: "Segmento 1 Id"
    label: "Cliente Segmento 1 Id"
  }

  dimension: cliente_segmento2_nombre {
    type: string
    sql: ${TABLE}.ClienteSegmento2Nombre ;;
    group_label: "Cliente"
    group_item_label: "Segmento 2"
    label: "Cliente Segmento 2"
  }

  dimension: cliente_segmento2_srcid {
    type: string
    sql: ${TABLE}.ClienteSegmento2SRCId ;;
    group_label: "Cliente"
    group_item_label: "Segmento 2 Id"
    label: "Cliente Segmento 2 Id"
  }

  dimension: cliente_srcid {
    type: string
    sql: ${TABLE}.ClienteSRCId ;;
    group_label: "Cliente"
    group_item_label: "Id"
    label: "Cliente Id"
  }

  dimension: cliente_tipo_nombre {
    type: string
    sql: ${TABLE}.ClienteTipoNombre ;;
    group_label: "Cliente"
    group_item_label: "Tipo"
    label: "Cliente Tipo"
  }

  dimension: cliente_tipo_pago {
    type: string
    sql: ${TABLE}.ClienteTipoPago ;;
    group_label: "Cliente"
    group_item_label: "Tipo Pago"
    label: "Cliente Tipo Pago"
  }

  dimension: cliente_tipo_srcid {
    type: string
    sql: ${TABLE}.ClienteTipoSRCId ;;
    group_label: "Cliente"
    group_item_label: "Tipo Id"
    label: "Cliente Tipo Id"
  }

  dimension: cuenta_beneficio_prod_adquirido {
    type: string
    sql: ${TABLE}.CuentaBeneficioProdAdquirido ;;
    group_label: "Cuenta"
    group_item_label: "Beneficio Producto Adquirido"
    label: "Cuenta Beneficio Producto Adquirido"
  }

  dimension: cuenta_categoria_socio {
    type: string
    sql: ${TABLE}.CuentaCategoriaSocio ;;
    group_label: "Cuenta"
    group_item_label: "Categoria Socio"
    label: "Cuenta Categoría Socio"
  }

  dimension: cuenta_ciclo_facturacion {
    type: string
    sql: ${TABLE}.CuentaCicloFacturacion ;;
    group_label: "Cuenta"
    group_item_label: "Ciclo Facturacion"
    label: "Cuenta Ciclo Facturacion"
  }

  dimension: cuenta_cod_promocion_be {
    type: string
    sql: ${TABLE}.CuentaCodPromocionBE ;;
    group_label: "Cuenta"
    group_item_label: "Codigo Promocion BE"
    label: "Cuenta Codigo Promocion BE"
  }

  dimension: cuenta_cod_promocion_dc {
    type: string
    sql: ${TABLE}.CuentaCodPromocionDC ;;
    group_label: "Cuenta"
    group_item_label: "Codigo Promocion DC"
    label: "Cuenta Codigo Promocion DC"
  }

  dimension: cuenta_codigo {
    type: string
    sql: ${TABLE}.CuentaCodigo ;;
    group_label: "Cuenta"
    group_item_label: "Codigo"
    label: "Cuenta Codigo"
  }

  dimension: cuenta_codigo_origen {
    type: string
    sql: ${TABLE}.CuentaCodigoOrigen ;;
    group_label: "Cuenta"
    group_item_label: "Codigo Origen"
    label: "Cuenta Codigo Origen"
  }

  dimension: cuenta_domicilio_envio_srcid {
    type: string
    sql: ${TABLE}.CuentaDomicilioEnvioSRCId ;;
    group_label: "Cuenta"
    group_item_label: "Domicilio Envio Id"
    label: "Cuenta Domicilio Envio Id"
  }

  dimension: cuenta_domicilio_facturacion_srcid {
    type: string
    sql: ${TABLE}.CuentaDomicilioFacturacionSRCId ;;
    group_label: "Cuenta"
    group_item_label: "Domicilio Facturacion Id"
    label: "Cuenta Domicilio Facturacion Id"
  }

  dimension: cuenta_estado_nombre {
    type: string
    sql: ${TABLE}.CuentaEstadoNombre ;;
    group_label: "Cuenta"
    group_item_label: "Estado Nombre"
    label: "Cuenta Estado Nombre"
  }

  dimension: cuenta_estado_srcid {
    type: string
    sql: ${TABLE}.CuentaEstadoSRCId ;;
    group_label: "Cuenta"
    group_item_label: "Estado Id"
    label: "Cuenta Estado Id"
  }

  dimension: cuenta_frecuencia_facturacion {
    type: string
    sql: ${TABLE}.CuentaFrecuenciaFacturacion ;;
    group_label: "Cuenta"
    group_item_label: "Frecuencia Facturacion"
    label: "Frecuencia Facturacion"
  }

  dimension: cuenta_hwacct_code {
    type: string
    sql: ${TABLE}.CuentaHWACCT_CODE ;;
    group_label: "Cuenta"
    group_item_label: "Codigo HW"
    label: "Cuenta Codigo HW"
  }

  dimension: cuenta_marca_migracion {
    type: string
    sql: ${TABLE}.CuentaMarcaMigracion ;;
    group_label: "Cuenta"
    group_item_label: "Marca"
    label: "Cuenta Marca Migracion"
  }

  dimension: cuenta_medio_pago_srcid {
    type: string
    sql: ${TABLE}.CuentaMedioPagoSRCId ;;
    group_label: "Cuenta"
    group_item_label: "Medio Pago Id"
    label: "Cuenta Medio Pago Id"
  }

  dimension: cuenta_metodo_entrega {
    type: string
    sql: ${TABLE}.CuentaMetodoEntrega ;;
    group_label: "Cuenta"
    group_item_label: "Metodo Entrega"
    label: "Cuenta Metodo Entrega"
  }

  dimension: cuenta_padre_srcid {
    type: string
    sql: ${TABLE}.CuentaPadreSRCId ;;
    group_label: "Cuenta"
    group_item_label: "Padre Id"
    label: "Cuenta Padre Id"
  }

  dimension: cuenta_preferencias_contacto {
    type: string
    sql: ${TABLE}.CuentaPreferenciasContacto ;;
    group_label: "Cuenta"
    group_item_label: "Preferencias Contacto"
    label: "Cuenta Preferencias Contacto"
  }

  dimension: cuenta_riesgo_crediticio {
    type: string
    sql: ${TABLE}.CuentaRiesgoCrediticio ;;
    group_label: "Cuenta"
    group_item_label: "Riesgo Crediticio"
    label: "Cuenta Riesgo Crediticio"
  }

  dimension: cuenta_sla {
    type: string
    sql: ${TABLE}.CuentaSLA ;;
    group_label: "Cuenta"
    group_item_label: "SLA"
    label: "Cuenta SLA"
  }

  dimension: cuenta_suscripcion_bd {
    type: string
    sql: ${TABLE}.CuentaSuscripcionBD ;;
    group_label: "Cuenta"
    group_item_label: "Suscripcion BD"
    label: "Cuenta Suscripcion BD"
  }

  dimension: cuenta_susp_voluntarias_utilizadas {
    type: string
    sql: ${TABLE}.CuentaSuspVoluntariasUtilizadas ;;
    group_label: "Cuenta"
    group_item_label: "Suscripciones Voluntarias Utilizadas"
    label: "Cuenta Suscripciones Voluntarias Utilizadas"
  }

  dimension: cuenta_tipo_nombre {
    type: string
    sql: ${TABLE}.CuentaTipoNombre ;;
    group_label: "Cuenta"
    group_item_label: "Tipo Nombre"
    label: "Cuenta Tipo Nombre"
  }

  dimension: cuenta_tipo_pago {
    type: string
    sql: ${TABLE}.CuentaTipoPago ;;
    group_label: "Cuenta"
    group_item_label: "Tipo Pago"
    label: "Cuenta Tipo Pago"
  }

  dimension: cuenta_tipo_srcid {
    type: string
    sql: ${TABLE}.CuentaTipoSRCId ;;
    group_label: "Cuenta"
    group_item_label: "Tipo Id"
    label: "Cliente Tipo Id"
  }

  dimension: persona_apellido {
    type: string
    sql: ${TABLE}.PersonaApellido ;;
    group_label: "Persona"
    group_item_label: "Apellido"
    label: "Persona Apellido"
  }

  dimension: persona_codigo_empleado {
    type: string
    sql: ${TABLE}.PersonaCodigoEmpleado ;;
    group_label: "Persona"
    group_item_label: "Codigo Empleado"
    label: "Persona Codigo Empleado"
  }

  dimension: persona_contacto_srcid {
    type: string
    sql: ${TABLE}.PersonaContactoSRCId ;;
    group_label: "Persona"
    group_item_label: "Contacto Id"
    label: "Persona Contacto Id"
  }

  dimension: persona_cuilnumero {
    type: string
    sql: ${TABLE}.PersonaCUILNumero ;;
    group_label: "Persona"
    group_item_label: "CUIL"
    label: "Persona CUIL"
  }

  dimension: persona_documento_numero {
    type: string
    sql: ${TABLE}.PersonaDocumentoNumero ;;
    group_label: "Persona"
    group_item_label: "Documento"
    label: "Persona Documento"
  }

  dimension: persona_email {
    type: string
    sql: ${TABLE}.PersonaEmail ;;
    group_label: "Persona"
    group_item_label: "Email"
    label: "Persona Email"
  }

  dimension: persona_estado_laboral {
    type: string
    sql: ${TABLE}.PersonaEstadoLaboral ;;
    group_label: "Persona"
    group_item_label: "Estado Laboral"
    label: "Persona Estado Laboral"
  }

  dimension: persona_estado_nombre {
    type: string
    sql: ${TABLE}.PersonaEstadoNombre ;;
    group_label: "Persona"
    group_item_label: "Estado Nombre"
    label: "Persona Estado Nombre"
  }

  dimension: persona_estado_srcid {
    type: string
    sql: ${TABLE}.PersonaEstadoSRCId ;;
    group_label: "Persona"
    group_item_label: "Estado Id"
    label: "Persona Estado Id"
  }

  dimension: persona_fax_numero {
    type: string
    sql: ${TABLE}.PersonaFaxNumero ;;
    group_label: "Persona"
    group_item_label: "Fax"
    label: "Persona Fax"
  }

  dimension: persona_genero {
    type: string
    sql: ${TABLE}.PersonaGenero ;;
    group_label: "Persona"
    group_item_label: "Genero"
    label: "Persona Genero"
  }

  dimension: persona_licencia_conducir_numero {
    type: string
    sql: ${TABLE}.PersonaLicenciaConducirNumero ;;
    group_label: "Persona"
    group_item_label: "Licencia Conducir"
    label: "Persona Licencia Conducir"
  }

  dimension: persona_movil_numero {
    type: string
    sql: ${TABLE}.PersonaMovilNumero ;;
    group_label: "Persona"
    group_item_label: "Movil"
    label: "Persona Movil"
  }

  dimension: persona_nivel_satisfaccion {
    type: string
    sql: ${TABLE}.PersonaNivelSatisfaccion ;;
    group_label: "Persona"
    group_item_label: "Nivel Satisfaccion"
    label: "Persona Nivel Satisfaccion"
  }

  dimension: persona_nombre {
    type: string
    sql: ${TABLE}.PersonaNombre ;;
    group_label: "Persona"
    group_item_label: "Nombre"
    label: "Persona Nombre"
  }

  dimension: persona_ocupacion {
    type: string
    sql: ${TABLE}.PersonaOcupacion ;;
    group_label: "Persona"
    group_item_label: "Ocupacion"
    label: "Persona Ocupacion"
  }

  dimension: persona_srcid {
    type: string
    sql: ${TABLE}.PersonaSRCId ;;
    group_label: "Persona"
    group_item_label: "Id"
    label: "Persona Id"
  }

  dimension: persona_telefono_casa_numero {
    type: string
    sql: ${TABLE}.PersonaTelefonoCasaNumero ;;
    group_label: "Persona"
    group_item_label: "Telefono Casa"
    label: "Persona Telefono Casa"
  }

  dimension: persona_telefono_numero {
    type: string
    sql: ${TABLE}.PersonaTelefonoNumero ;;
    group_label: "Persona"
    group_item_label: "Telefono"
    label: "Persoan Telefono"
  }

  dimension: persona_tipo_documento_nombre {
    type: string
    sql: ${TABLE}.PersonaTipoDocumentoNombre ;;
    group_label: "Persona"
    group_item_label: "Tipo Documento"
    label: "Persona Tipo Documento"
  }

  dimension: persona_tipo_documento_srcid {
    type: string
    sql: ${TABLE}.PersonaTipoDocumentoSRCId ;;
    group_label: "Persona"
    group_item_label: "Tipo Documento Id"
    label: "Persona Tipo Documento Id"
  }

  dimension: persona_titulo_cortesia {
    type: string
    sql: ${TABLE}.PersonaTituloCortesia ;;
    group_label: "Persona"
    group_item_label: "Titulo Cortesia"
    label: "Persona Titulo Cortesia"
  }

  dimension: persona_usuario_creacion_srcid {
    type: string
    sql: ${TABLE}.PersonaUsuarioCreacionSRCId ;;
    group_label: "Persona"
    group_item_label: "Usuario Creacion Id"
    label: "Persona Usuario Creacion Id"
  }

  dimension: persona_usuario_modificacion_srcid {
    type: string
    sql: ${TABLE}.PersonaUsuarioModificacionSRCId ;;
    group_label: "Persona"
    group_item_label: "Usuario Modificacion Id"
    label: "Persona Usuario Modificacion Id"
  }

  ## Numbers

  dimension: cliente_ingreso_bruto_anual {
    type: number
    sql: ${TABLE}.ClienteIngresoBrutoAnual ;;
    group_label: "Cliente"
    group_item_label: "Ingreso Bruto Anual"
    label: "Cliente Ingreso Bruto Anual"
  }

  dimension: cliente_valor {
    type: number
    sql: ${TABLE}.ClienteValor ;;
    group_label: "Cliente"
    group_item_label: "Valor"
    label: "Cliente Valor"
  }

  dimension: cuenta_codigo_facturacion {
    type: number
    sql: ${TABLE}.CuentaCodigoFacturacion ;;
    group_label: "Cuenta"
    group_item_label: "Codigo Facturacion"
    label: "Cuenta Codigo Factuacion"
  }

  dimension: cuenta_hwacct_id {
    type: number
    sql: ${TABLE}.CuentaHWAcct_Id ;;
    group_label: "Cuenta"
    group_item_label: "HW Id"
    label: "Cuenta HW Id"
  }

  dimension: cuenta_hwcust_id {
    type: number
    sql: ${TABLE}.CuentaHWCUST_ID ;;
    group_label: "Cuenta"
    group_item_label: "Custom HW Id"
    label: "Cuenta Custom HW Id"
  }

  dimension: cuenta_monto_desc_convergente {
    type: number
    sql: ${TABLE}.CuentaMontoDescConvergente ;;
    group_label: "Cuenta"
    group_item_label: "Monto Descuento Convergente"
    label: "Cliente Monto Descuento Convergente"
  }

  dimension: cuenta_puntos_acumulados {
    type: number
    sql: ${TABLE}.CuentaPuntosAcumulados ;;
    group_label: "Cuenta"
    group_item_label: "Puntos Acumulados"
    label: "Cuenta Puntos Acumulados"
  }

  dimension: origen_srcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.OrigenSRCId ;;
    label: "Origen Id"
  }

  dimension: persona_codigo_integracion {
    type: number
    sql: ${TABLE}.PersonaCodigoIntegracion ;;
    group_label: "Persona"
    group_item_label: "Codigo Integracion"
    label: "Persona Codigo Integracion"
  }

  dimension: persona_edad {
    type: number
    sql: ${TABLE}.PersonaEdad ;;
    group_label: "Persona"
    group_item_label: "Edad"
    label: "Persona Edad"
  }

  ## Hidden

  dimension: cuenta_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CuentaTipoSK ;;
  }

  dimension: persona_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PersonaEstadoSK ;;
  }

  dimension: persona_tipo_documento_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PersonaTipoDocumentoSK ;;
  }

  dimension: cliente_segmento1_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.ClienteSegmento1SK ;;
  }

  dimension: cliente_segmento2_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.ClienteSegmento2SK ;;
  }

  dimension: cliente_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.ClienteTipoSK ;;
  }

  dimension: cuenta_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CuentaEstadoSK ;;
  }

  ## Measures

  measure: count {
    type: count
    drill_fields: []
  }
}
