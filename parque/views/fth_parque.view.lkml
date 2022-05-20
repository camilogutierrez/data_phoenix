view: fth_parque {
  sql_table_name: @{gcp_ambiente}.FTH_Parque` ;;
  suggestions: no
  label: "Parque"

############
## PARQUE ##
############

## Dimensions

  ## Primary Key
  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.ProductoAdquiridoSRCId ;;
  }

  ## Dates
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
    datatype: date
    sql: ${TABLE}.FechaEntidad ;;
    label: "Fecha Entidad"
  }

  dimension_group: fechas__fecha_activacion_plan_src {
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
    sql: ${TABLE}.Fechas.FechaActivacionPlanSRC ;;
    label: "Activacion Plan"
  }

  dimension_group: fechas__fecha_desconexion_plan_src {
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
    sql: ${TABLE}.Fechas.FechaDesconexionPlanSRC ;;
    label: "Desconexion Plan"
  }

  dimension_group: fechas__producto_adquirido_fecha_activacion_historica_src {
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
    sql: ${TABLE}.Fechas.ProductoAdquiridoFechaActivacionHistoricaSRC ;;
    label: "Producto Adquirido Activacion Historica"
  }

  dimension_group: fechas__producto_adquirido_fecha_activacion_src {
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
    sql: ${TABLE}.Fechas.ProductoAdquiridoFechaActivacionSRC ;;
    label: "Producto Adquirido Activacion"
  }

  dimension_group: fechas__producto_adquirido_fecha_baja_src {
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
    sql: ${TABLE}.Fechas.ProductoAdquiridoFechaBajaSRC ;;
    label: "Producto Adquirido Baja"
  }

  dimension_group: fechas__producto_adquirido_fecha_compra_src {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: date
    sql: ${TABLE}.Fechas.ProductoAdquiridoFechaCompraSRC ;;
    label: "Producto Adquirido Compra"
  }

  dimension_group: fechas__producto_adquirido_fecha_creacion_src {
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
    sql: ${TABLE}.Fechas.ProductoAdquiridoFechaCreacionSRC ;;
    label: "Producto Adquirido Creacion"
  }

  dimension_group: fechas__producto_adquirido_fecha_fin_leasing_src {
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
    sql: ${TABLE}.Fechas.ProductoAdquiridoFechaFinLeasingSRC ;;
    label: "Producto Adquirido Fin Leasing"
  }

  dimension_group: fechas__producto_adquirido_fecha_inicio_leasing_src {
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
    sql: ${TABLE}.Fechas.ProductoAdquiridoFechaInicioLeasingSRC ;;
    label: "Producto Adquirido Inicio Leasing"
  }

  dimension_group: fechas__producto_adquirido_fecha_instalacion_src {
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
    sql: ${TABLE}.Fechas.ProductoAdquiridoFechaInstalacionSRC ;;
    label: "Producto Adquirido Instalacion"
  }

  dimension_group: fechas__producto_adquirido_fecha_modificacion_src {
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
    sql: ${TABLE}.Fechas.ProductoAdquiridoFechaModificacionSRC ;;
    label: "Producto Adquirido Modificacion"
  }

  dimension_group: cliente__cuenta_fec_ultima_suspension_voluntaria_src {
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
    sql: ${TABLE}.Cliente.CuentaFecUltimaSuspensionVoluntariaSRC ;;
    label: "Cliente Cuenta Ult. Susp. Voluntaria"
  }

  dimension_group: cliente__fechas__cuenta_fecha_creacion_hwsrc {
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
    sql: ${TABLE}.Cliente.Fechas.CuentaFechaCreacionHWSRC ;;
    label: "Cliente Cuenta Creacion HW"
  }

  dimension_group: cliente__fechas__cuenta_fecha_creacion_src {
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
    sql: ${TABLE}.Cliente.Fechas.CuentaFechaCreacionSRC ;;
    label: "Cliente Cuenta Creacion"
  }

  dimension_group: cliente__fechas__cuenta_fecha_modificacion_src {
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
    sql: ${TABLE}.Cliente.Fechas.CuentaFechaModificacionSRC ;;
    label: "Cliente Cuenta Modificacion"
  }

  dimension_group: cliente__persona_fecha_creacion_src {
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
    sql: ${TABLE}.Cliente.PersonaFechaCreacionSRC ;;
    label: "Cliente Persona Creacion"
  }

  dimension_group: cliente__persona_fecha_modificacion_src {
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
    sql: ${TABLE}.Cliente.PersonaFechaModificacionSRC ;;
    label: "Cliente Persona Modificacion"
  }

  dimension_group: orden_alta__orden_fecha_activacion_src {
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
    sql: ${TABLE}.OrdenAlta.OrdenFechaActivacionSRC ;;
    label: "Orden Alta Activacion"
  }

  dimension_group: orden_alta__orden_fecha_entrega_src {
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
    sql: ${TABLE}.OrdenAlta.OrdenFechaEntregaSRC ;;
    label: "Orden Alta Entrega"
  }

  dimension_group: orden_alta__orden_fecha_fin_src {
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
    sql: ${TABLE}.OrdenAlta.OrdenFechaFinSRC ;;
    label: "Orden Alta Fin"
  }

  dimension_group: orden_alta__orden_fecha_inicio_src {
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
    sql: ${TABLE}.OrdenAlta.OrdenFechaInicioSRC ;;
    label: "Orden Alta Inicio"
  }

  dimension_group: orden_alta__orden_fecha_mod_src {
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
    sql: ${TABLE}.OrdenAlta.OrdenFechaModSRC ;;
    label: "Orden Alta Modificacion"
  }

  dimension_group: orden_baja__orden_fecha_activacion_src {
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
    sql: ${TABLE}.OrdenBaja.OrdenFechaActivacionSRC ;;
    label: "Orden Baja Activacion"
  }

  dimension_group: orden_baja__orden_fecha_fin_src {
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
    sql: ${TABLE}.OrdenBaja.OrdenFechaFinSRC ;;
    label: "Orden Baja Fin"
  }

  dimension_group: preactivaciones__preact_fecha_carga_src {
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
    sql: ${TABLE}.Preactivaciones.PreactFechaCargaSRC ;;
    label: "Preactivaciones Carga"
  }

  ## Strings
  dimension: caracteristicas__producto_adquirido_gama_equipo {
    type: string
    sql: ${TABLE}.Caracteristicas.ProductoAdquiridoGamaEquipo ;;
    group_label: "Caracteristicas"
    group_item_label: "Producto Adquirido Gama Equipo"
  }

  dimension: caracteristicas__producto_adquirido_imsi {
    type: string
    sql: ${TABLE}.Caracteristicas.ProductoAdquiridoIMSI ;;
    group_label: "Caracteristicas"
    group_item_label: "Producto Adquirido IMSI"
  }

  dimension: caracteristicas__producto_adquirido_marca_producto {
    type: string
    sql: ${TABLE}.Caracteristicas.ProductoAdquiridoMarcaProducto ;;
    group_label: "Caracteristicas"
    group_item_label: "Producto Adquirido Marca"
  }

  dimension: caracteristicas__producto_adquirido_modelo_producto {
    type: string
    sql: ${TABLE}.Caracteristicas.ProductoAdquiridoModeloProducto ;;
    group_label: "Caracteristicas"
    group_item_label: "Producto Adquirido Modelo"
  }

  dimension: caracteristicas__producto_adquirido_nmu {
    type: string
    sql: ${TABLE}.Caracteristicas.ProductoAdquiridoNMU ;;
    group_label: "Caracteristicas"
    group_item_label: "Producto Adquirido NMU"
  }

  dimension: caracteristicas__producto_adquirido_tipo_dispositivo {
    type: string
    sql: ${TABLE}.Caracteristicas.ProductoAdquiridoTipoDispositivo ;;
    group_label: "Caracteristicas"
    group_item_label: "Producto Adquirido Tipo Dispositivo"
  }

  dimension: cliente__cliente_ciclo_facturacion {
    type: string
    sql: ${TABLE}.Cliente.ClienteCicloFacturacion ;;
    group_label: "Cliente"
    group_item_label: "Ciclo Facturacion"
  }

  dimension: cliente__cliente_codigo_integracion {
    type: string
    sql: ${TABLE}.Cliente.ClienteCodigoIntegracion ;;
    group_label: "Cliente"
    group_item_label: "Codigo Integracion"
  }

  dimension: cliente__cliente_codigo_integracion_texto {
    type: string
    sql: ${TABLE}.Cliente.ClienteCodigoIntegracionTexto ;;
    group_label: "Cliente"
    group_item_label: "Codigo Integracion Texto"
  }

  dimension: cliente__cliente_cuit {
    type: string
    sql: ${TABLE}.Cliente.ClienteCUIT ;;
    group_label: "Cliente"
    group_item_label: "Cuit"
  }

  dimension: cliente__cliente_email {
    type: string
    sql: ${TABLE}.Cliente.ClienteEmail ;;
    group_label: "Cliente"
    group_item_label: "Email"
  }

  dimension: cliente__cliente_razon_social {
    type: string
    sql: ${TABLE}.Cliente.ClienteRazonSocial ;;
    group_label: "Cliente"
    group_item_label: "Razon Social"
  }

  dimension: cliente__cliente_segmento1_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento1Nombre ;;
    suggest_dimension: lk_cliente_segmento1.cliente_segmento1_nombre
    group_label: "Cliente"
    group_item_label: "Segmento1 Nombre"
  }

  dimension: cliente__cliente_segmento2_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento2Nombre ;;
    suggest_dimension: lk_cliente_segmento2.cliente_segmento2_nombre
    group_label: "Cliente"
    group_item_label: "Segmento2 Nombre"
  }

  dimension: cliente__cliente_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteTipoNombre ;;
    suggest_dimension: lk_cliente_tipo.cliente_tipo_nombre
    group_label: "Cliente"
    group_item_label: "Tipo Nombre"
  }

  dimension: cliente__cliente_tipo_pago {
    type: string
    sql: ${TABLE}.Cliente.ClienteTipoPago ;;
    group_label: "Cliente"
    group_item_label: "Tipo Pago"
  }

  dimension: cliente__cuenta_beneficio_prod_adquirido {
    type: string
    sql: ${TABLE}.Cliente.CuentaBeneficioProdAdquirido ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Beneficio Prod Adquirido"
  }

  dimension: cliente__cuenta_ciclo_facturacion {
    type: string
    sql: ${TABLE}.Cliente.CuentaCicloFacturacion ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Ciclo Facturacion"
  }

  dimension: cliente__cuenta_cod_promocion_be {
    type: string
    sql: ${TABLE}.Cliente.CuentaCodPromocionBE ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Cod Promocion Be"
  }

  dimension: cliente__cuenta_cod_promocion_dc {
    type: string
    sql: ${TABLE}.Cliente.CuentaCodPromocionDC ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Cod Promocion Dc"
  }

  dimension: cliente__cuenta_codigo {
    type: string
    sql: ${TABLE}.Cliente.CuentaCodigo ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Codigo"
  }

  dimension: cliente__cuenta_codigo_origen {
    type: string
    sql: ${TABLE}.Cliente.CuentaCodigoOrigen ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Codigo Origen"
  }

  dimension: cliente__cuenta_estado_nombre {
    type: string
    sql: ${TABLE}.Cliente.CuentaEstadoNombre ;;
    suggest_dimension: lk_cuenta_estado.cuenta_estado_nombre
    group_label: "Cliente"
    group_item_label: "Cuenta Estado Nombre"
  }

  dimension: cliente__cuenta_hwacct_code {
    type: string
    sql: ${TABLE}.Cliente.CuentaHWACCT_CODE ;;
    group_label: "Cliente"
    group_item_label: "Cuenta HW Acct Code"
  }

  dimension: cliente__cuenta_marca_migracion {
    type: string
    sql: ${TABLE}.Cliente.CuentaMarcaMigracion ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Marca Migracion"
  }

  dimension: cliente__cuenta_metodo_entrega {
    type: string
    sql: ${TABLE}.Cliente.CuentaMetodoEntrega ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Metodo Entrega"
  }

  dimension: cliente__cuenta_riesgo_crediticio {
    type: string
    sql: ${TABLE}.Cliente.CuentaRiesgoCrediticio ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Riesgo Crediticio"
  }

  dimension: cliente__cuenta_sla {
    type: string
    sql: ${TABLE}.Cliente.CuentaSLA ;;
    group_label: "Cliente"
    group_item_label: "Cuenta SLA"
  }

  dimension: cliente__cuenta_suscripcion_bd {
    type: string
    sql: ${TABLE}.Cliente.CuentaSuscripcionBD ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Suscripcion BD"
  }

  dimension: cliente__cuenta_susp_voluntarias_utilizadas {
    type: string
    sql: ${TABLE}.Cliente.CuentaSuspVoluntariasUtilizadas ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Susp Voluntarias Utilizadas"
  }

  dimension: cliente__cuenta_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.CuentaTipoNombre ;;
    suggest_dimension: lk_cuenta_tipo.cuenta_tipo_nombre
    group_label: "Cliente"
    group_item_label: "Cuenta Tipo Nombre"
  }

  dimension: cliente__medio_pago_cuenta_bancaria_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.MedioPagoCuentaBancariaTipoNombre ;;
    suggest_dimension: lk_medio_pago_cuenta_bancaria_tipo.medio_pago_cuenta_bancaria_tipo_nombre
    group_label: "Cliente"
    group_item_label: "Medio Pago Cuenta Bancaria Tipo Nombre"
  }

  dimension: cliente__medio_pago_entidad_financiera_nombre {
    type: string
    sql: ${TABLE}.Cliente.MedioPagoEntidadFinancieraNombre ;;
    suggest_dimension: lk_medio_pago_entidad_financiera.medio_pago_entidad_financiera_nombre
    group_label: "Cliente"
    group_item_label: "Medio Pago Entidad Financiera Nombre"
  }

  dimension: cliente__medio_pago_nombre {
    type: string
    sql: ${TABLE}.Cliente.MedioPagoNombre ;;
    group_label: "Cliente"
    group_item_label: "Medio Pago Nombre"
  }

  dimension: cliente__medio_pago_tarjeta_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.MedioPagoTarjetaTipoNombre ;;
    suggest_dimension: lk_medio_pago_tarjeta_tipo.medio_pago_tarjeta_tipo_nombre
    group_label: "Cliente"
    group_item_label: "Medio Pago Tarjeta Tipo Nombre"
  }

  dimension: cliente__medio_pago_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.MedioPagoTipoNombre ;;
    suggest_dimension: lk_medio_pago_tipo.medio_pago_tipo_nombre
    group_label: "Cliente"
    group_item_label: "Medio Pago Tipo Nombre"
  }

  dimension: cliente__persona_apellido {
    type: string
    sql: ${TABLE}.Cliente.PersonaApellido ;;
    group_label: "Cliente"
    group_item_label: "Persona Apellido"
  }

  dimension: cliente__persona_cuilnumero {
    type: string
    sql: ${TABLE}.Cliente.PersonaCUILNumero ;;
    group_label: "Cliente"
    group_item_label: "Persona Cuil Numero"
  }

  dimension: cliente__persona_documento_numero {
    type: string
    sql: ${TABLE}.Cliente.PersonaDocumentoNumero ;;
    group_label: "Cliente"
    group_item_label: "Persona Documento Numero"
  }

  dimension: cliente__persona_email {
    type: string
    sql: ${TABLE}.Cliente.PersonaEmail ;;
    group_label: "Cliente"
    group_item_label: "Persona Email"
  }

  dimension: cliente__persona_genero {
    type: string
    sql: ${TABLE}.Cliente.PersonaGenero ;;
    group_label: "Cliente"
    group_item_label: "Persona Genero"
  }

  dimension: cliente__persona_nombre {
    type: string
    sql: ${TABLE}.Cliente.PersonaNombre ;;
    group_label: "Cliente"
    group_item_label: "Persona Nombre"
  }

  dimension: cliente__persona_tipo_documento_nombre {
    type: string
    sql: ${TABLE}.Cliente.PersonaTipoDocumentoNombre ;;
    suggest_dimension: lk_persona_tipo_documento.persona_tipo_documento_nombre
    group_label: "Cliente"
    group_item_label: "Persona Tipo Documento Nombre"
  }

  dimension: cuenta_propiedad_srcid {
    type: string
    sql: ${TABLE}.CuentaPropiedadSRCId ;;
    label: "Cuenta Propiedad SRCId"
  }

  dimension: domicilio__domicilio_codigo_postal_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioCodigoPostalEnv ;;
    group_label: "Domicilio"
    group_item_label: "Codigo Postal Env"
  }

  dimension: domicilio__domicilio_codigo_postal_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioCodigoPostalFact ;;
    group_label: "Domicilio"
    group_item_label: "Codigo Postal Fact"
  }

  dimension: domicilio__domicilio_nombre_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioNombreEnv ;;
    group_label: "Domicilio"
    group_item_label: "Nombre Env"
  }

  dimension: domicilio__domicilio_nombre_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioNombreFact ;;
    group_label: "Domicilio"
    group_item_label: "Nombre Fact"
  }

  dimension: domicilio__domicilio_piso_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPisoEnv ;;
    group_label: "Domicilio"
    group_item_label: "Piso Env"
  }

  dimension: domicilio__domicilio_piso_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPisoFact ;;
    group_label: "Domicilio"
    group_item_label: "Piso Fact"
  }

  dimension: domicilio__domicilio_planta_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPlantaEnv ;;
    group_label: "Domicilio"
    group_item_label: "Planta Env"
  }

  dimension: domicilio__domicilio_planta_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPlantaFact ;;
    group_label: "Domicilio"
    group_item_label: "Planta Fact"
  }

  dimension: domicilio__domicilio_puerta_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPuertaEnv ;;
    group_label: "Domicilio"
    group_item_label: "Puerta Env"
  }

  dimension: domicilio__domicilio_puerta_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPuertaFact ;;
    group_label: "Domicilio"
    group_item_label: "Puerta Fact"
  }

  dimension: domicilio__domicilio_unidad_habitacional_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioUnidadHabitacionalEnv ;;
    group_label: "Domicilio"
    group_item_label: "Unidad Habitacional Env"
  }

  dimension: domicilio__domicilio_unidad_habitacional_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioUnidadHabitacionalFact ;;
    group_label: "Domicilio"
    group_item_label: "Unidad Habitacional Fact"
  }

  dimension: domicilio__geo_corp_localidad_fact {
    type: string
    sql: ${TABLE}.Domicilio.GeoCorpLocalidadFact ;;
    group_label: "Domicilio"
    group_item_label: "Geo Corp Localidad Fact"
  }

  dimension: domicilio__geo_corp_pais_fact {
    type: string
    sql: ${TABLE}.Domicilio.GeoCorpPaisFact ;;
    group_label: "Domicilio"
    group_item_label: "Geo Corp Pais Fact"
  }

  dimension: domicilio__geo_corp_provincia_fact {
    type: string
    sql: ${TABLE}.Domicilio.GeoCorpProvinciaFact ;;
    group_label: "Domicilio"
    group_item_label: "Geo Corp Provincia Fact"
  }

  dimension: domicilio__geo_corp_region_fact {
    type: string
    sql: ${TABLE}.Domicilio.GeoCorpRegionFact ;;
    group_label: "Domicilio"
    group_item_label: "Geo Corp Region Fact"
  }

  dimension: domicilio__geo_corp_subregion_fact {
    type: string
    sql: ${TABLE}.Domicilio.GeoCorpSubregionFact ;;
    group_label: "Domicilio"
    group_item_label: "Geo Corp Subregion Fact"
  }

  dimension: domicilio__nombre_calle_env {
    type: string
    sql: ${TABLE}.Domicilio.NombreCalleEnv ;;
    group_label: "Domicilio"
    group_item_label: "Nombre Calle Env"
  }

  dimension: domicilio__nombre_calle_fact {
    type: string
    sql: ${TABLE}.Domicilio.NombreCalleFact ;;
    group_label: "Domicilio"
    group_item_label: "Nombre Calle Fact"
  }

  dimension: domicilio__nombre_localidad_env {
    type: string
    sql: ${TABLE}.Domicilio.NombreLocalidadEnv ;;
    group_label: "Domicilio"
    group_item_label: "Nombre Localidad Env"
  }

  dimension: domicilio__nombre_localidad_fact {
    type: string
    sql: ${TABLE}.Domicilio.NombreLocalidadFact ;;
    group_label: "Domicilio"
    group_item_label: "Nombre Localidad Fact"
  }

  dimension: domicilio__nombre_provincia_env {
    type: string
    sql: ${TABLE}.Domicilio.NombreProvinciaEnv ;;
    group_label: "Domicilio"
    group_item_label: "Nombre Provincia Env"
  }

  dimension: domicilio__nombre_provincia_fact {
    type: string
    sql: ${TABLE}.Domicilio.NombreProvinciaFact ;;
    group_label: "Domicilio"
    group_item_label: "Nombre Provincia Fact"
  }

  dimension: geografia__rango_numeracion_departamento_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionDepartamentoNombre ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Departamento Nombre"
  }

  dimension: geografia__rango_numeracion_localidad_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionLocalidadNombre ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Localidad Nombre"
  }

  dimension: geografia__rango_numeracion_pi_pu {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionPiPu ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Pi Pu"
  }

  dimension: geografia__rango_numeracion_provincia_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionProvinciaNombre ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Provincia Nombre"
  }

  dimension: oferta_hwsrcid {
    type: string
    sql: ${TABLE}.OfertaHWSRCId ;;
    label: "Oferta HW SRCId"
  }

  dimension: orden_alta__caso_numero {
    type: string
    sql: ${TABLE}.OrdenAlta.CasoNumero ;;
    group_label: "Orden Alta"
    group_item_label: "Caso Numero"
  }

  dimension: orden_alta__caso_sub_tipo_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.CasoSubTipoNombre ;;
    suggest_dimension: lk_caso_sub_tipo.caso_sub_tipo_nombre
    group_label: "Orden Alta"
    group_item_label: "Caso Sub Tipo Nombre"
  }

  dimension: orden_alta__caso_tipo_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.CasoTipoNombre ;;
    suggest_dimension: lk_caso_tipo.caso_tipo_nombre
    group_label: "Orden Alta"
    group_item_label: "Caso Tipo Nombre"
  }

  dimension: orden_alta__orden_canal_origen_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenCanalOrigenNombre ;;
    suggest_dimension: lk_orden_canal_origen.orden_canal_origen_nombre
    group_label: "Orden Alta"
    group_item_label: "Canal Origen Nombre"
  }

  dimension: orden_alta__orden_caso_srcid {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenCasoSRCId ;;
    group_label: "Orden Alta"
    group_item_label: "Caso SRCId"
  }


  dimension: orden_alta__orden_grupo_trabajo_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenGrupoTrabajoNombre ;;
    group_label: "Orden Alta"
    group_item_label: "Grupo Trabajo Nombre"
  }

  dimension: orden_alta__orden_item_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemAccionNombre ;;
    group_label: "Orden Alta"
    group_item_label: "Item Accion Nombre"
  }

  dimension: orden_alta__orden_item_estado_provisionamiento_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemEstadoProvisionamientoNombre ;;
    group_label: "Orden Alta"
    group_item_label: "Item Estado Provisionamiento Nombre"
  }

  dimension: orden_alta__orden_item_numero {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemNumero ;;
    group_label: "Orden Alta"
    group_item_label: "Item Numero"
  }

  dimension: orden_alta__orden_item_srcid {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemSRCId ;;
    group_label: "Orden Alta"
    group_item_label: "Item Srcid"
  }

  dimension: orden_alta__orden_item_sub_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemSubAccionNombre ;;
    group_label: "Orden Alta"
    group_item_label: "Item Sub Accion Nombre"
  }

  dimension: orden_alta__orden_metodo_entrega_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenMetodoEntregaNombre ;;
    group_label: "Orden Alta"
    group_item_label: "Metodo Entrega Nombre"
  }

  dimension: orden_alta__orden_numero {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenNumero ;;
    group_label: "Orden Alta"
    group_item_label: "Numero"
  }

  dimension: orden_alta__orden_srcid {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenSRCId ;;
    group_label: "Orden Alta"
    group_item_label: "Srcid"
  }

  dimension: orden_alta__orden_tipo_cambio_plan_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenTipoCambioPlanNombre ;;
    suggest_dimension: lk_orden_tipo_cambio_plan.orden_tipo_cambio_plan_nombre
    group_label: "Orden Alta"
    group_item_label: "Tipo Cambio Plan Nombre"
  }

  dimension: orden_alta__orden_tipo_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenTipoGestionNombre ;;
    suggest_dimension: lk_orden_tipo_gestion.orden_tipo_gestion_nombre
    group_label: "Orden Alta"
    group_item_label: "Tipo Gestion Nombre"
  }

  dimension: orden_alta__orden_tipo_sub_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenTipoSubGestionNombre ;;
    suggest_dimension: lk_orden_tipo_sub_gestion.orden_tipo_sub_gestion_nombre
    group_label: "Orden Alta"
    group_item_label: "Tipo Sub Gestion Nombre"
  }

  dimension: orden_alta__orden_usuario_creacion_srcid {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenUsuarioCreacionSRCId ;;
    group_label: "Orden Alta"
    group_item_label: "Usuario Creacion Srcid"
  }

  dimension: orden_alta__usuario_creacion_legajo {
    type: string
    sql: ${TABLE}.OrdenAlta.UsuarioCreacionLegajo ;;
    group_label: "Orden Alta"
    group_item_label: "Usuario Creacion Legajo"
  }

  dimension: orden_alta__usuario_creacion_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.UsuarioCreacionNombre ;;
    group_label: "Orden Alta"
    group_item_label: "Usuario Creacion Nombre"
  }

  dimension: orden_baja__caso_estado_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.CasoEstadoNombre ;;
    suggest_dimension: lk_caso_estado.caso_estado_nombre
    group_label: "Orden Baja"
    group_item_label: "Caso Estado Nombre"
  }

  dimension: orden_baja__caso_motivo_baja_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.CasoMotivoBajaNombre ;;
    suggest_dimension: lk_caso_motivo_baja.caso_motivo_baja_nombre
    group_label: "Orden Baja"
    group_item_label: "Caso Motivo Baja Nombre"
  }

  dimension: orden_baja__caso_motivo_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.CasoMotivoNombre ;;
    suggest_dimension: lk_caso_motivo.caso_motivo_nombre
    group_label: "Orden Baja"
    group_item_label: "Caso Motivo Nombre"
  }

  dimension: orden_baja__caso_numero {
    type: string
    sql: ${TABLE}.OrdenBaja.CasoNumero ;;
    group_label: "Orden Baja"
    group_item_label: "Caso Numero"
  }

  dimension: orden_baja__caso_operadora_receptora_srcid {
    type: string
    sql: ${TABLE}.OrdenBaja.CasoOperadoraReceptoraSRCId ;;
    group_label: "Orden Baja"
    group_item_label: "Caso Operadora Receptora SRCId"
  }

  dimension: orden_baja__caso_sub_motivo_baja_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.CasoSubMotivoBajaNombre ;;
    suggest_dimension: lk_caso_sub_motivo_baja.caso_sub_motivo_baja_nombre
    group_label: "Orden Baja"
    group_item_label: "Caso Sub Motivo Baja Nombre"
  }

  dimension: orden_baja__caso_sub_tipo_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.CasoSubTipoNombre ;;
    suggest_dimension: lk_caso_sub_tipo.caso_sub_tipo_nombre
    group_label: "Orden Baja"
    group_item_label: "Caso Sub Tipo Nombre"
  }

  dimension: orden_baja__orden_caso_srcid {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenCasoSRCId ;;
    group_label: "Orden Baja"
    group_item_label: "Caso Srcid"
  }

  dimension: orden_baja__orden_item_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenItemAccionNombre ;;
    suggest_dimension: lk_orden_item_accion.orden_item_accion_nombre
    group_label: "Orden Baja"
    group_item_label: "Item Accion Nombre"
  }

  dimension: orden_baja__orden_item_numero {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenItemNumero ;;
    group_label: "Orden Baja"
    group_item_label: "Item Numero"
  }

  dimension: orden_baja__orden_item_srcid {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenItemSRCId ;;
    group_label: "Orden Baja"
    group_item_label: "Item SRCId"
  }

  dimension: orden_baja__orden_item_sub_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenItemSubAccionNombre ;;
    suggest_dimension: lk_orden_item_sub_accion.orden_item_sub_accion_nombre
    group_label: "Orden Baja"
    group_item_label: "Item Sub Accion Nombre"
  }

  dimension: orden_baja__orden_numero {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenNumero ;;
    group_label: "Orden Baja"
    group_item_label: "Numero"
  }

  dimension: orden_baja__orden_srcid {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenSRCId ;;
    group_label: "Orden Baja"
    group_item_label: "SRCId"
  }

  dimension: orden_baja__orden_tipo_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenTipoGestionNombre ;;
    suggest_dimension: lk_orden_tipo_gestion.orden_tipo_gestion_nombre
    group_label: "Orden Baja"
    group_item_label: "Tipo Gestion Nombre"
  }

  dimension: orden_baja__orden_tipo_sub_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenTipoSubGestionNombre ;;
    suggest_dimension: lk_orden_tipo_sub_gestion.orden_tipo_sub_gestion_nombre
    group_label: "Orden Baja"
    group_item_label: "Tipo Sub Gestion Nombre"
  }

  dimension: plan_anterior__producto_codigo {
    type: string
    sql: ${TABLE}.PlanAnterior.ProductoCodigo ;;
    group_label: "Plan Anterior"
    group_item_label: "Producto Codigo"
  }

  dimension: plan_anterior__producto_nombre {
    type: string
    sql: ${TABLE}.PlanAnterior.ProductoNombre ;;
    group_label: "Plan Anterior"
    group_item_label: "Producto Nombre"
  }

  dimension: plan_anterior__producto_srcid {
    type: string
    sql: ${TABLE}.PlanAnterior.ProductoSRCId ;;
    group_label: "Plan Anterior"
    group_item_label: "Producto SRCId"
  }

  dimension: plan_anterior__producto_tipo_nombre {
    type: string
    sql: ${TABLE}.PlanAnterior.ProductoTipoNombre ;;
    suggest_dimension: lk_producto_tipo.producto_tipo_nombre
    group_label: "Plan Anterior"
    group_item_label: "Producto Tipo Nombre"
  }

  dimension: preactivaciones__preact_iccsrcid {
    type: string
    sql: ${TABLE}.Preactivaciones.PreactICCSRCId ;;
    group_label: "Preactivaciones"
    group_item_label: "ICC SRCId"
  }

  dimension: preactivaciones__preact_localidad_nombre {
    type: string
    sql: ${TABLE}.Preactivaciones.PreactLocalidadNombre ;;
    group_label: "Preactivaciones"
    group_item_label: "Localidad Nombre"
  }

  dimension: preactivaciones__preact_provincia_nombre {
    type: string
    sql: ${TABLE}.Preactivaciones.PreactProvinciaNombre ;;
    group_label: "Preactivaciones"
    group_item_label: "Provincia Nombre"
  }

  dimension: preactivaciones__preact_punto_venta_descripcion {
    type: string
    sql: ${TABLE}.Preactivaciones.PreactPuntoVentaDescripcion ;;
    group_label: "Preactivaciones"
    group_item_label: "Punto Venta Descripcion"
  }

  dimension: preactivaciones__preact_punto_venta_srcid {
    type: string
    sql: ${TABLE}.Preactivaciones.PreactPuntoVentaSRCId ;;
    group_label: "Preactivaciones"
    group_item_label: "Punto Venta SRCId"
  }

  dimension: preactivaciones__preact_razon_social {
    type: string
    sql: ${TABLE}.Preactivaciones.PreactRazonSocial ;;
    group_label: "Preactivaciones"
    group_item_label: "Razon Social"
  }


  dimension: producto__producto_codigo {
    type: string
    sql: ${TABLE}.Producto.ProductoCodigo ;;
    group_label: "Producto"
    group_item_label: "Codigo"
  }

  dimension: producto__producto_familia_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoFamiliaNombre ;;
    suggest_dimension: lk_producto_familia.producto_familia_nombre
    group_label: "Producto"
    group_item_label: "Familia Nombre"
  }

  dimension: producto__producto_mercado_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoMercadoNombre ;;
    suggest_dimension: lk_producto_mercado.producto_mercado_nombre
    group_label: "Producto"
    group_item_label: "Mercado Nombre"
  }

  dimension: producto__producto_nmu {
    type: string
    sql: ${TABLE}.Producto.ProductoNmu ;;
    group_label: "Producto"
    group_item_label: "NMU"
  }

  dimension: producto__producto_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoNombre ;;
    group_label: "Producto"
    group_item_label: "Nombre"
  }

  dimension: producto__producto_sistema_origen_codigo {
    type: string
    sql: ${TABLE}.Producto.ProductoSistemaOrigenCodigo ;;
    group_label: "Producto"
    group_item_label: "Sistema Origen Codigo"
  }

  dimension: producto__producto_sistema_origen_descripcion {
    type: string
    sql: ${TABLE}.Producto.ProductoSistemaOrigenDescripcion ;;
    group_label: "Producto"
    group_item_label: "Sistema Origen Descripcion"
  }

  dimension: producto__producto_sistema_origen_intid {
    type: string
    sql: ${TABLE}.Producto.ProductoSistemaOrigenINTId ;;
    group_label: "Producto"
    group_item_label: "Sistema Origen Intid"
  }

  dimension: producto__producto_sub_tipo_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoSubTipoNombre ;;
    suggest_dimension: lk_producto_sub_tipo.producto_sub_tipo_nombre
    group_label: "Producto"
    group_item_label: "Sub Tipo Nombre"
  }

  dimension: producto__producto_tipo_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoTipoNombre ;;
    suggest_dimension: lk_producto_tipo.producto_tipo_nombre
    group_label: "Producto"
    group_item_label: "Tipo Nombre"
  }

  dimension: producto_accesorio_srcid {
    type: string
    sql: ${TABLE}.ProductoAccesorioSRCId ;;
    group_label: "Producto"
    label: "Accesorio SRCId"
  }

  dimension: producto_adquirido_bundle_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoBundleNombre ;;
    group_label: "Producto Adquirido"
    label: "Bundle Nombre"
  }

  dimension: producto_adquirido_bundle_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoBundleSRCId ;;
    group_label: "Producto Adquirido"
    label: "Bundle SRCId"
  }

  dimension: producto_adquirido_codigo_raiz {
    type: string
    sql: ${TABLE}.ProductoAdquiridoCodigoRaiz ;;
    group_label: "Producto Adquirido"
    label: "Codigo Raiz"
  }

  dimension: producto_adquirido_codigo_suscripcion {
    type: string
    sql: ${TABLE}.ProductoAdquiridoCodigoSuscripcion ;;
    group_label: "Producto Adquirido"
    label: "Codigo Suscripcion"
  }

  dimension: producto_adquirido_estado_leasing_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoLeasingNombre ;;
    group_label: "Producto Adquirido"
    label: "Estado Leasing Nombre"
  }

  dimension: producto_adquirido_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoNombre ;;
    suggest_dimension: lk_producto_adquirido_estado.producto_adquirido_estado_nombre
    group_label: "Producto Adquirido"
    label: "Estado Nombre"
  }

  dimension: producto_adquirido_estado_provisionamiento_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoProvisionamientoNombre ;;
    suggest_dimension: lk_orden_item_estado_provisionamiento.orden_item_estado_provisionamiento_nombre
    group_label: "Producto Adquirido"
    label: "Estado Provisionamiento Nombre"
  }

  dimension: producto_adquirido_estado_red_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoRedNombre ;;
    suggest_dimension: lk_producto_adquirido_estado_red.producto_adquirido_estado_red_nombre
    group_label: "Producto Adquirido"
    label: "Estado Red Nombre"
  }

  dimension: producto_adquirido_familia_producto {
    type: string
    sql: ${TABLE}.ProductoAdquiridoFamiliaProducto ;;
    group_label: "Producto Adquirido"
    label: "Familia Producto"
  }

  dimension: producto_adquirido_garantia_invalida {
    type: string
    sql: ${TABLE}.ProductoAdquiridoGarantiaInvalida ;;
    group_label: "Producto Adquirido"
    label: "Garantia Invalida"
  }

  dimension: producto_adquirido_iccid_plan {
    type: string
    sql: ${TABLE}.ProductoAdquiridoICCID_Plan ;;
    group_label: "Producto Adquirido"
    label: "ICCID Plan"
  }

  dimension: producto_adquirido_iccidsrcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoICCIDSRCId ;;
    group_label: "Producto Adquirido"
    label: "ICCID SRCId"
  }

  dimension: producto_adquirido_imei {
    type: string
    sql: ${TABLE}.ProductoAdquiridoIMEI ;;
    group_label: "Producto Adquirido"
    label: "IMEI"
  }

  dimension: producto_adquirido_instancia_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoInstanciaSRCId ;;
    group_label: "Producto Adquirido"
    label: "Instancia SRCId"
  }

  dimension: producto_adquirido_marca_migrado {
    type: string
    sql: ${TABLE}.ProductoAdquiridoMarcaMigrado ;;
    group_label: "Producto Adquirido"
    label: "Marca Migrado"
  }

  dimension: producto_adquirido_motivo_alta {
    type: string
    sql: ${TABLE}.ProductoAdquiridoMotivoAlta ;;
    group_label: "Producto Adquirido"
    label: "Motivo Alta"
  }

  dimension: producto_adquirido_motivo_baja {
    type: string
    sql: ${TABLE}.ProductoAdquiridoMotivoBaja ;;
    group_label: "Producto Adquirido"
    label: "Motivo Baja"
  }

  dimension: producto_adquirido_nivel_jerarquia {
    type: string
    sql: ${TABLE}.ProductoAdquiridoNivelJerarquia ;;
    group_label: "Producto Adquirido"
    label: "Nivel Jerarquia"
  }

  dimension: producto_adquirido_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoNombre ;;
    group_label: "Producto Adquirido"
    label: "Nombre"
  }

  dimension: producto_adquirido_numero_linea {
    type: string
    sql: ${TABLE}.ProductoAdquiridoNumeroLinea ;;
    group_label: "Producto Adquirido"
    label: "Numero Linea"
  }

  dimension: producto_adquirido_numero_linea_toip {
    type: string
    sql: ${TABLE}.ProductoAdquiridoNumeroLineaTOIP ;;
    group_label: "Producto Adquirido"
    label: "Numero Linea TOIP"
  }

  dimension: producto_adquirido_numero_serie {
    type: string
    sql: ${TABLE}.ProductoAdquiridoNumeroSerie ;;
    group_label: "Producto Adquirido"
    label: "Numero Serie"
  }

  dimension: producto_adquirido_producto_codigo {
    type: string
    sql: ${TABLE}.ProductoAdquiridoProductoCodigo ;;
    group_label: "Producto Adquirido"
    label: "Producto Codigo"
  }

  dimension: producto_adquirido_recurso_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoRecursoSRCId ;;
    group_label: "Producto Adquirido"
    label: "Recurso SRCId"
  }

  dimension: producto_adquirido_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoSRCId ;;
    group_label: "Producto Adquirido"
    label: "SRCId"
  }

  dimension: producto_adquirido_sub_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoSubEstadoNombre ;;
    suggest_dimension: lk_producto_adquirido_sub_estado.producto_adquirido_sub_estado_nombre
    group_label: "Producto Adquirido"
    label: "Sub Estado Nombre"
  }

  dimension: producto_adquirido_sub_motivo_alta {
    type: string
    sql: ${TABLE}.ProductoAdquiridoSubMotivoAlta ;;
    group_label: "Producto Adquirido"
    label: "Sub Motivo Alta"
  }

  dimension: producto_adquirido_sub_motivo_baja {
    type: string
    sql: ${TABLE}.ProductoAdquiridoSubMotivoBaja ;;
    group_label: "Producto Adquirido"
    label: "Sub Motivo Baja"
  }

  dimension: producto_adquirido_tipo {
    type: string
    sql: ${TABLE}.ProductoAdquiridoTipo ;;
    group_label: "Producto Adquirido"
    label: "Tipo"
  }

  dimension: producto_adquirido_usuario_creacion_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoUsuarioCreacionSRCId ;;
    group_label: "Producto Adquirido"
    label: "Creacion SRCId"
  }

  dimension: producto_adquirido_usuario_modificacion_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoUsuarioModificacionSRCId ;;
    group_label: "Producto Adquirido"
    label: "Usuario Modificacion SRCId"
  }

  dimension: producto_srcid {
    type: string
    sql: ${TABLE}.ProductoSRCId ;;
    group_label: "Producto"
    label: "SRCId"
  }

  dimension: punto_venta__punto_venta_canal3 {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanal3 ;;
    group_label: "Punto Venta"
    group_item_label: "Canal 3"
  }

  dimension: punto_venta__punto_venta_canal_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanalNombre ;;
    group_label: "Punto Venta"
    group_item_label: "Canal Nombre"
  }

  dimension: punto_venta__punto_venta_canalidad2_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanalidad2Nombre ;;
    suggest_dimension: lk_punto_venta_canalidad2.punto_venta_canalidad2_nombre
    group_label: "Punto Venta"
    label: "Canalidad 2 Nombre"
  }

  dimension: punto_venta__punto_venta_descripcion {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaDescripcion ;;
    group_label: "Punto Venta"
    label: "Descripcion"
  }

  dimension: punto_venta__punto_venta_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaNombre ;;
    group_label: "Punto Venta"
    label: "Nombre"
  }

  dimension: punto_venta__punto_venta_provincia {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaProvincia ;;
    group_label: "Punto Venta"
    label: "Provincia"
  }

  dimension: punto_venta__punto_venta_region {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaRegion ;;
    group_label: "Punto Venta"
    label: "Region"
  }

  dimension: punto_venta__punto_venta_subregion {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaSubregion ;;
    group_label: "Punto Venta"
    label: "Subregion"
  }

  dimension: punto_venta__punto_venta_tipo_canal_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoCanalNombre ;;
    suggest_dimension: lk_punto_venta_tipo_canal.punto_venta_tipo_canal_nombre
    group_label: "Punto Venta"
    label: "Tipo Canal Nombre"
  }

  dimension: punto_venta__punto_venta_tipo_contacto_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoContactoNombre ;;
    suggest_dimension: lk_punto_venta_tipo_contacto.punto_venta_tipo_contacto_nombre
    group_label: "Punto Venta"
    label: "Tipo Contacto Nombre"
  }

  dimension: suspensiones__totales__suspensiones_producto_adquirido_srcid {
    type: string
    sql: ${TABLE}.Suspensiones.Totales.SuspensionesProductoAdquiridoSRCId ;;
    view_label: "Parque Suspensiones Totales Activas"
    label: "Suspensiones Producto Adquirido SRCId"
  }

  ## Numbers
  dimension: cliente__cuenta_codigo_facturacion {
    type: number
    sql: ${TABLE}.Cliente.CuentaCodigoFacturacion ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Codigo Facturacion"
  }

  dimension: cliente__cuenta_hwacct_id {
    type: number
    sql: ${TABLE}.Cliente.CuentaHWAcct_Id ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Hwacct ID"
  }

  dimension: cliente__cuenta_hwcust_id {
    type: number
    sql: ${TABLE}.Cliente.CuentaHWCUST_ID ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Hwcust ID"
  }

  dimension: cliente__persona_codigo_integracion {
    type: number
    sql: ${TABLE}.Cliente.PersonaCodigoIntegracion ;;
    group_label: "Cliente"
    group_item_label: "Persona Codigo Integracion"
  }

  dimension: cliente__persona_edad {
    type: number
    sql: ${TABLE}.Cliente.PersonaEdad ;;
    group_label: "Cliente"
    group_item_label: "Persona Edad"
  }

  dimension: domicilio__domicilio_codigo_postal_comercial_fact {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioCodigoPostalComercialFact ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Codigo Postal Comercial Fact"
  }

  dimension: domicilio__domicilio_latitud_env {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioLatitudEnv ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Latitud Env"
  }

  dimension: domicilio__domicilio_latitud_fact {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioLatitudFact ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Latitud Fact"
  }

  dimension: domicilio__domicilio_longitud_env {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioLongitudEnv ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Longitud Env"
  }

  dimension: domicilio__domicilio_longitud_fact {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioLongitudFact ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Longitud Fact"
  }

  dimension: domicilio__geo_corp_codigo_postal_fact {
    type: number
    sql: ${TABLE}.Domicilio.GeoCorpCodigoPostalFact ;;
    group_label: "Domicilio"
    group_item_label: "Geo Corp Codigo Postal Fact"
  }

  dimension: geografia__rango_numeracion_prefijo_interurbano {
    type: number
    sql: ${TABLE}.Geografia.RangoNumeracionPrefijoInterurbano ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Prefijo Interurbano"
  }

  dimension: geografia__rango_numeracion_prefijo_urbano {
    type: number
    sql: ${TABLE}.Geografia.RangoNumeracionPrefijoUrbano ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Prefijo Urbano"
  }

  dimension: orden_alta__orden_item_precio_calculado_recurrente {
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenItemPrecioCalculadoRecurrente ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Item Precio Calculado Recurrente"
  }

  dimension: plan_anterior__orden_item_cargo_recurrente {
    type: number
    sql: ${TABLE}.PlanAnterior.OrdenItemCargoRecurrente ;;
    group_label: "Plan Anterior"
    group_item_label: "Orden Item Cargo Recurrente"
  }

  dimension: plan_anterior__orden_item_precio_calculado_recurrente {
    type: number
    sql: ${TABLE}.PlanAnterior.OrdenItemPrecioCalculadoRecurrente ;;
    group_label: "Plan Anterior"
    group_item_label: "Orden Item Precio Calculado Recurrente"
  }

  dimension: producto_adquirido_cant_unidades {
    type: number
    sql: ${TABLE}.ProductoAdquiridoCantUnidades ;;
    group_label: "Producto Adquirido"
  }

  dimension: producto_adquirido_precio {
    type: number
    sql: ${TABLE}.ProductoAdquiridoPrecio ;;
    group_label: "Producto Adquirido"
  }

  dimension: recarga__recarga_recharge_amt_pri_rec {
    type: number
    sql: ${TABLE}.Recarga.RecargaRECHARGE_AMT_Pri_Rec ;;
    group_label: "Recarga"
    group_item_label: "Recharge Amt Pri Rec"
  }

  dimension: recarga__recarga_recharge_amt_ult_rec {
    type: number
    sql: ${TABLE}.Recarga.RecargaRECHARGE_AMT_Ult_Rec ;;
    group_label: "Recarga"
    group_item_label: "Recharge Amt Ult Rec"
  }

  dimension: recarga__recarga_recharge_log_id_pri_rec {
    type: number
    value_format_name: id
    sql: ${TABLE}.Recarga.RecargaRECHARGE_LOG_ID_Pri_Rec ;;
    group_label: "Recarga"
    group_item_label: "Recharge Log ID Pri Rec"
  }

  dimension: recarga__recarga_recharge_log_id_ult_rec {
    type: number
    value_format_name: id
    sql: ${TABLE}.Recarga.RecargaRECHARGE_LOG_ID_Ult_Rec ;;
    group_label: "Recarga"
    group_item_label: "Recharge Log ID Ult Rec"
  }

  dimension: cliente__cuenta_monto_desc_convergente {
    type: number
    sql: ${TABLE}.Cliente.CuentaMontoDescConvergente ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Monto Desc Convergente"
  }

  dimension: domicilio__domicilio_numero_env {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioNumeroEnv ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Numero Env"
  }

  dimension: domicilio__domicilio_numero_fact {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioNumeroFact ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Numero Fact"
  }

  dimension: orden_alta__orden_item_cargo_recurrente {
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenItemCargoRecurrente ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Item Cargo Recurrente"
  }

  ## Yesno
  dimension: cliente__cuenta_domicilio_envio_validado {
    type: yesno
    sql: ${TABLE}.Cliente.CuentaDomicilioEnvioValidado ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Domicilio Envio Validado"
    label: "Es Envio Validado"
  }

  dimension: cliente__cuenta_domicilio_facturacion_validado {
    type: yesno
    sql: ${TABLE}.Cliente.CuentaDomicilioFacturacionValidado ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Domicilio Facturacion Validado"
    label: "Es Domicilio Facturacion Validado"
  }

  dimension: cliente__marcas__cliente_marca_activo {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.ClienteMarcaActivo ;;
    group_label: "Cliente Marcas"
    group_item_label: "Cliente Activo"
    label: "Es Cliente Activo"
  }

  dimension: cliente__marcas__cliente_marca_fraude {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.ClienteMarcaFraude ;;
    group_label: "Cliente Marcas"
    group_item_label: "Marca Fraude"
    label: "Es Fraude"
  }

  dimension: cliente__marcas__cliente_marca_jubilado {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.ClienteMarcaJubilado ;;
    group_label: "Cliente Marcas"
    group_item_label: "Marca Jubilado"
    label: "Es Jubilado"
  }

  dimension: cliente__marcas__cliente_marca_partner {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.ClienteMarcaPartner ;;
    group_label: "Cliente Marcas"
    group_item_label: "Marca Partner"
    label: "Es Partner"
  }

  dimension: cliente__marcas__cliente_marca_prensa {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.ClienteMarcaPrensa ;;
    group_label: "Cliente Marcas"
    group_item_label: "Marca Prensa"
    label: "Es Prensa"
  }

  dimension: cliente__marcas__cliente_marca_vip {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.ClienteMarcaVIP ;;
    group_label: "Cliente Marcas"
    group_item_label: "Cliente Vip"
    label: "Es Cliente Vip"
  }

  dimension: cliente__marcas__cuenta_marca_compra_financiada {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.CuentaMarcaCompraFinanciada ;;
    group_label: "Cliente Marcas"
    group_item_label: "Cuenta Compra Financiada"
    label: "Es Compra Financiada"
  }

  dimension: cliente__marcas__cuenta_marca_debito {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.CuentaMarcaDebito ;;
    group_label: "Cliente Marcas"
    group_item_label: "Cuenta Debito"
    label: "Es Debito"
  }

  dimension: cliente__marcas__cuenta_marca_deuda_financiada {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.CuentaMarcaDeudaFinanciada ;;
    group_label: "Cliente Marcas"
    group_item_label: "Cuenta Deuda Financiada"
    label: "Es Cuenta Deuda Financiada"
  }

  dimension: cliente__marcas__cuenta_marca_morosidad {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.CuentaMarcaMorosidad ;;
    group_label: "Cliente Marcas"
    group_item_label: "Cuenta Morosidad"
    label: "Es Cuenta Morosidad"
  }

  dimension: cliente__marcas__cuenta_marca_no_nominado {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.CuentaMarcaNoNominado ;;
    group_label: "Cliente Marcas"
    group_item_label: "Cuenta No Nominado"
    label: "Es Cuenta No Nominado"
  }

  dimension: cliente__marcas__cuenta_marca_socio {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.CuentaMarcaSocio ;;
    group_label: "Cliente Marcas"
    group_item_label: "Cuenta Socio"
    label: "Es Cuenta Socio"
  }
  dimension: cliente__persona_marca_enviar_mail {
    type: yesno
    sql: ${TABLE}.Cliente.PersonaMarcaEnviarMail ;;
    group_label: "Cliente"
    group_item_label: "Persona Marca Enviar Mail"
    label: "Es Persona Enviar Mail"
  }

  dimension: cliente__persona_marca_fraude {
    type: yesno
    sql: ${TABLE}.Cliente.PersonaMarcaFraude ;;
    group_label: "Cliente"
    group_item_label: "Persona Marca Fraude"
    label: "Es Persona Marca Fraude"
  }

  dimension: cliente__persona_marca_no_llamar {
    type: yesno
    sql: ${TABLE}.Cliente.PersonaMarcaNoLlamar ;;
    group_label: "Cliente"
    group_item_label: "Persona Marca No Llamar"
    label: "Es Persona No Llamar"
  }

  dimension: marcas__marca_cuenta_servicio_actualizada {
    type: yesno
    sql: ${TABLE}.Marcas.MarcaCuentaServicioActualizada ;;
    group_label: "Marcas"
    group_item_label: "Cuenta Servicio Actualizada"
    label: "Es Cuenta Servicio Actualizada"
  }

  dimension: marcas__producto_adquirido_marca_destruccion_total {
    type: yesno
    sql: ${TABLE}.Marcas.ProductoAdquiridoMarcaDestruccionTotal ;;
    group_label: "Marcas"
    group_item_label: "Producto Adquirido Destruccion Total"
    label: "Es Producto Adquirido Destruccion Total"
  }

  dimension: marcas__producto_adquirido_marca_leasing {
    type: yesno
    sql: ${TABLE}.Marcas.ProductoAdquiridoMarcaLeasing ;;
    group_label: "Marcas"
    group_item_label: "Producto Adquirido Leasing"
    label: "Es Producto Adquirido Marca Leasing"
  }

  dimension: marcas__producto_adquirido_marca_parque_activo {
    type: yesno
    sql: ${TABLE}.Marcas.ProductoAdquiridoMarcaParqueActivo ;;
    group_label: "Marcas"
    group_item_label: "Producto Adquirido Parque Activo"
    label: "Es Producto Adquirido Parque Activo"
  }

  dimension: marcas__producto_adquirido_marca_pertenece_bundle {
    type: yesno
    sql: ${TABLE}.Marcas.ProductoAdquiridoMarcaPerteneceBundle ;;
    group_label: "Marcas"
    group_item_label: "Producto Adquirido Pertenece Bundle"
    label: "Es Producto Adquirido Pertenece Bundle"
  }

  dimension: marcas__producto_adquirido_marca_port_out {
    type: yesno
    sql: ${TABLE}.Marcas.ProductoAdquiridoMarcaPortOut ;;
    group_label: "Marcas"
    group_item_label: "Producto Adquirido Port Out"
    label: "Es Producto Adquirido Port Out"
  }

  dimension: marcas__producto_adquirido_marca_principal {
    type: yesno
    sql: ${TABLE}.Marcas.ProductoAdquiridoMarcaPrincipal ;;
    group_label: "Marcas"
    group_item_label: "Producto Adquirido Principal"
    label: "Es Producto Adquirido Principal"
  }

  dimension: marcas__producto_adquirido_marca_producto_competencia {
    type: yesno
    sql: ${TABLE}.Marcas.ProductoAdquiridoMarcaProductoCompetencia ;;
    group_label: "Marcas"
    group_item_label: "Producto Adquirido Producto Competencia"
    label: "Es Producto Adquirido Producto Competencia"
  }
  dimension: orden_alta__orden_marca_cambio_mercado {
    type: yesno
    sql: ${TABLE}.OrdenAlta.OrdenMarcaCambioMercado ;;
    group_label: "Orden Alta"
    group_item_label: "Marca Cambio Mercado"
    label: "Es Orden Cambio Mercado"
  }

  dimension: orden_alta__orden_marca_cambio_producto {
    type: yesno
    sql: ${TABLE}.OrdenAlta.OrdenMarcaCambioProducto ;;
    group_label: "Orden Alta"
    group_item_label: "Marca Cambio Producto"
    label: "Es Orden Cambio Producto"
  }

  dimension: producto__marcas__producto_marca_activo {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaActivo ;;
    group_label: "Producto Marcas"
    group_item_label: "Activo"
    label: "Es Producto Activo"
  }

  dimension: producto__marcas__producto_marca_no_assetizable {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaNoAssetizable ;;
    group_label: "Producto Marcas"
    group_item_label: "No Assetizable"
    label: "Es No Assetizable"
  }

  dimension: producto__marcas__producto_marca_orderable {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaOrderable ;;
    group_label: "Producto Marcas"
    group_item_label: "Orderable"
    label: "Es Producto Orderable"
  }

  dimension: producto__marcas__producto_marca_principal {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaPrincipal ;;
    group_label: "Producto Marcas"
    group_item_label: "Principal"
    label: "Es Producto Principal"
  }

  dimension: producto__marcas__producto_marca_tangible {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaTangible ;;
    group_label: "Producto Marcas"
    group_item_label: "Tangible"
    label: "Es Producto Tangible"
  }

  ## Hidden
  dimension: promocion {
    hidden: yes
    sql: ${TABLE}.Promocion ;;
  }

  dimension: suspensiones__totales__activas {
    hidden: yes
    sql: ${TABLE}.Suspensiones.Totales.Activas ;;
  }

  dimension: cliente__cliente_segmento1_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.ClienteSegmento1SK ;;
  }

  dimension: cliente__cliente_segmento1_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento1SRCId ;;
  }

  dimension: cliente__cliente_segmento2_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.ClienteSegmento2SK ;;
  }

  dimension: cliente__cliente_segmento2_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento2SRCId ;;
  }

  dimension: cliente__cliente_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.ClienteTipoSK ;;
  }

  dimension: cliente__cliente_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.ClienteTipoSRCId ;;
  }

  dimension: cliente__cuenta_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.CuentaEstadoSK ;;
  }

  dimension: cliente__cuenta_estado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.CuentaEstadoSRCId ;;
  }

  dimension: cliente__medio_pago_cuenta_bancaria_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.MedioPagoCuentaBancariaTipoSK ;;
  }

  dimension: cliente__medio_pago_cuenta_bancaria_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.MedioPagoCuentaBancariaTipoSRCId ;;
  }

  dimension: cliente__medio_pago_entidad_financiera_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.MedioPagoEntidadFinancieraSK ;;
  }

  dimension: cliente__medio_pago_entidad_financiera_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.MedioPagoEntidadFinancieraSRCId ;;
  }

  dimension: cliente__medio_pago_tarjeta_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.MedioPagoTarjetaTipoSK ;;
  }

  dimension: cliente__medio_pago_tarjeta_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.MedioPagoTarjetaTipoSRCId ;;
  }

  dimension: cliente__medio_pago_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.MedioPagoTipoSK ;;
  }

  dimension: cliente__medio_pago_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.MedioPagoTipoSRCId ;;
  }

  dimension: cliente__persona_tipo_documento_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.PersonaTipoDocumentoSK ;;
  }

  dimension: cliente__persona_tipo_documento_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.PersonaTipoDocumentoSRCId ;;
  }

  dimension: orden_alta__caso_sub_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.CasoSubTipoSK ;;
  }

  dimension: orden_alta__caso_sub_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenAlta.CasoSubTipoSRCId ;;
  }

  dimension: orden_alta__caso_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.CasoTipoSK ;;
  }

  dimension: orden_alta__caso_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenAlta.CasoTipoSRCId ;;
  }

  dimension: orden_alta__orden_canal_origen_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenCanalOrigenSK ;;
  }

  dimension: orden_alta__orden_canal_origen_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenCanalOrigenSRCId ;;
  }

  dimension: orden_alta__orden_item_accion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenItemAccionSK ;;
  }

  dimension: orden_alta__orden_item_accion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemAccionSRCId ;;
  }

  dimension: orden_alta__orden_item_estado_provisionamiento_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenItemEstadoProvisionamientoSK ;;
  }

  dimension: orden_alta__orden_item_estado_provisionamiento_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemEstadoProvisionamientoSRCId ;;
  }

  dimension: orden_alta__orden_item_sub_accion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenItemSubAccionSK ;;
    suggest_dimension: lk_orden_item_sub_accion.orden_item_sub_accion_nombre
  }

  dimension: orden_alta__orden_item_sub_accion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemSubAccionSRCId ;;
  }

  dimension: orden_alta__orden_tipo_cambio_plan_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenTipoCambioPlanSK ;;
  }

  dimension: orden_alta__orden_tipo_cambio_plan_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenTipoCambioPlanSRCId ;;
  }

  dimension: orden_alta__orden_tipo_gestion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenTipoGestionSK ;;
  }

  dimension: orden_alta__orden_tipo_gestion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenTipoGestionSRCId ;;
  }

  dimension: orden_alta__orden_tipo_sub_gestion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenTipoSubGestionSK ;;
  }

  dimension: orden_alta__orden_tipo_sub_gestion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenTipoSubGestionSRCId ;;
  }

  dimension: orden_baja__caso_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.CasoEstadoSK ;;
  }

  dimension: orden_baja__caso_estado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenBaja.CasoEstadoSRCId ;;
  }

  dimension: orden_baja__caso_motivo_baja_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.CasoMotivoBajaSK ;;
  }

  dimension: orden_baja__caso_motivo_baja_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenBaja.CasoMotivoBajaSRCId ;;
  }

  dimension: orden_baja__caso_motivo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.CasoMotivoSK ;;
  }

  dimension: orden_baja__caso_motivo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenBaja.CasoMotivoSRCId ;;
  }

  dimension: orden_baja__caso_sub_motivo_baja_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.CasoSubMotivoBajaSK ;;
  }

  dimension: orden_baja__caso_sub_motivo_baja_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenBaja.CasoSubMotivoBajaSRCId ;;
  }

  dimension: orden_baja__caso_sub_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.CasoSubTipoSK ;;
  }

  dimension: orden_baja__caso_sub_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenBaja.CasoSubTipoSRCId ;;
  }

  dimension: orden_baja__orden_item_accion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.OrdenItemAccionSK ;;
  }

  dimension: orden_baja__orden_item_accion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenItemAccionSRCId ;;
  }

  dimension: orden_baja__orden_item_sub_accion_sk_ {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.OrdenItemSubAccionSK ;;
  }

  dimension: orden_baja__orden_item_sub_accion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenItemSubAccionSRCId ;;
  }

  dimension: orden_baja__orden_tipo_gestion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.OrdenTipoGestionSK ;;
  }

  dimension: orden_baja__orden_tipo_gestion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenTipoGestionSRCId ;;
  }

  dimension: orden_baja__orden_tipo_sub_gestion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.OrdenTipoSubGestionSK ;;
  }

  dimension: orden_baja__orden_tipo_sub_gestion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenTipoSubGestionSRCId ;;
  }

  dimension: plan_anterior__producto_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PlanAnterior.ProductoTipoSK ;;
  }

  dimension: plan_anterior__producto_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.PlanAnterior.ProductoTipoSRCId ;;
  }

  dimension: producto__producto_familia_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto.ProductoFamiliaSK ;;
  }

  dimension: producto__producto_familia_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Producto.ProductoFamiliaSRCId ;;
  }

  dimension: producto__producto_mercado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto.ProductoMercadoSK ;;
  }

  dimension: producto__producto_mercado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Producto.ProductoMercadoSRCId ;;
  }

  dimension: producto__producto_sub_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto.ProductoSubTipoSK ;;
  }

  dimension: producto__producto_sub_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Producto.ProductoSubTipoSRCId ;;
  }

  dimension: producto__producto_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto.ProductoTipoSK ;;
  }

  dimension: producto__producto_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Producto.ProductoTipoSRCId ;;
  }

  dimension: producto_adquirido_estado_provisionamiento_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.ProductoAdquiridoEstadoProvisionamientoSK ;;
  }

  dimension: producto_adquirido_estado_provisionamiento_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoProvisionamientoSRCId ;;
  }

  dimension: producto_adquirido_estado_red_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.ProductoAdquiridoEstadoRedSK ;;
  }

  dimension: producto_adquirido_estado_red_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoRedSRCId ;;
  }

  dimension: producto_adquirido_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.ProductoAdquiridoEstadoSK ;;
  }

  dimension: producto_adquirido_estado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoSRCId ;;
  }

  dimension: producto_adquirido_sub_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.ProductoAdquiridoSubEstadoSK ;;
  }

  dimension: producto_adquirido_sub_estado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.ProductoAdquiridoSubEstadoSRCId ;;
  }

  dimension: punto_venta__punto_venta_canal_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanalSK ;;
  }

  dimension: punto_venta__punto_venta_canal_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanalSRCId ;;
  }

  dimension: punto_venta__punto_venta_canalidad2_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanalidad2SK ;;
  }

  dimension: punto_venta__punto_venta_canalidad2_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanalidad2SRCId ;;
  }

  dimension: punto_venta__punto_venta_tipo_canal_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoCanalSK ;;
  }

  dimension: punto_venta__punto_venta_tipo_canal_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoCanalSRCId ;;
  }

  dimension: punto_venta__punto_venta_tipo_contacto_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoContactoSK ;;
  }

  dimension: punto_venta__punto_venta_tipo_contacto_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoContactoSRCId ;;
  }

  dimension: cliente__cuenta_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.CuentaTIpoSK ;;
  }

  dimension: cliente__cuenta_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.CuentaTipoSRCId ;;
  }


  ## Measures
}
