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
    label: "Fecha Foto"
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
    label: "Producto Adquirido Activacion Historica"
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

  dimension_group: orden_alta__orden_fecha_nominacion {
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
    sql: ${TABLE}.OrdenAlta.OrdenFechaNominacion ;;
    label: "Orden Alta Nominacion"
  }

  dimension_group: orden_alta__producto_adquirido_fecha_alta_plan_movil {
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
    sql: ${TABLE}.OrdenAlta.ProductoAdquiridoFechaAltaPlanMovil ;;
    label: "Orden Alta Producto Adquirido Alta Plan Movil"
  }

  dimension_group: orden_alta__producto_adquirido_fecha_alta_pospago {
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
    sql: ${TABLE}.OrdenAlta.ProductoAdquiridoFechaAltaPospago ;;
    label: "Orden Alta Producto Adquirido Alta Pospago"
  }

  dimension_group: orden_alta__producto_adquirido_fecha_alta_prepago {
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
    sql: ${TABLE}.OrdenAlta.ProductoAdquiridoFechaAltaPrepago ;;
    label: "Orden Alta Producto Adquirido Alta Prepago"
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
    label: "Preactivaciones Fecha Carga"
  }

  dimension_group: recarga__recarga_entry_date_pri_rec {
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
    sql: ${TABLE}.Recarga.RecargaENTRY_DATE_Pri_Rec ;;
    label: "Recarga ENTRY DATE Pri Rec"
  }

  dimension_group: recarga__recarga_entry_date_ult_rec {
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
    sql: ${TABLE}.Recarga.RecargaENTRY_DATE_Ult_Rec ;;
    label: "Recarga ENTRY DATE Ult Rec"
  }

  dimension_group: suspensiones__fecha_suspension_administrativa {
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
    sql: ${TABLE}.Suspensiones.FechaSuspensionAdministrativa ;;
    label: "Suspesiones Suspension Administrativa"
  }

  dimension_group: suspensiones__fecha_suspension_degradacion {
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
    sql: ${TABLE}.Suspensiones.FechaSuspensionDegradacion ;;
    label: "Suspensiones Suspension Degradacion"
  }

  dimension_group: suspensiones__fecha_suspension_leasing {
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
    sql: ${TABLE}.Suspensiones.FechaSuspensionLeasing ;;
    label: "Suspensiones Suspension Leasing"
  }

  dimension_group: suspensiones__fecha_suspension_otros {
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
    sql: ${TABLE}.Suspensiones.FechaSuspensionOtros ;;
    label: "Suspensiones Suspension Otros"
  }

  dimension_group: suspensiones__fecha_suspension_parcial_mora {
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
    sql: ${TABLE}.Suspensiones.FechaSuspensionParcialMora ;;
    label: "Suspensiones Suspension Parcial Mora"
  }

  dimension_group: suspensiones__fecha_suspension_port_out {
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
    sql: ${TABLE}.Suspensiones.FechaSuspensionPortOut ;;
    label: "Suspensiones Suspension PortOut"
  }

  dimension_group: suspensiones__fecha_suspension_reversion_port_in {
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
    sql: ${TABLE}.Suspensiones.FechaSuspensionReversionPortIN ;;
    label: "Suspensiones Suspension Reversion PortIN"
  }

  dimension_group: suspensiones__fecha_suspension_siniestro {
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
    sql: ${TABLE}.Suspensiones.FechaSuspensionSiniestro ;;
    label: "Suspensiones Suspension Siniestro"
  }

  dimension_group: suspensiones__fecha_suspension_total_mora {
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
    sql: ${TABLE}.Suspensiones.FechaSuspensionTotalMora ;;
    label: "Suspensiones Suspension Total Mora"
  }

  dimension_group: suspensiones__fecha_suspension_voluntaria {
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
    sql: ${TABLE}.Suspensiones.FechaSuspensionVoluntaria ;;
    label: "Suspensiones Suspension Voluntaria"
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
    group_item_label: "Producto Adquirido Imsi"
  }

  dimension: caracteristicas__producto_adquirido_marca_producto {
    type: string
    sql: ${TABLE}.Caracteristicas.ProductoAdquiridoMarcaProducto ;;
    group_label: "Caracteristicas"
    group_item_label: "Producto Adquirido Marca Producto"
  }

  dimension: caracteristicas__producto_adquirido_modelo_producto {
    type: string
    sql: ${TABLE}.Caracteristicas.ProductoAdquiridoModeloProducto ;;
    group_label: "Caracteristicas"
    group_item_label: "Producto Adquirido Modelo Producto"
  }

  dimension: caracteristicas__producto_adquirido_nmu {
    type: string
    sql: ${TABLE}.Caracteristicas.ProductoAdquiridoNMU ;;
    group_label: "Caracteristicas"
    group_item_label: "Producto Adquirido Nmu"
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
    group_item_label: "Cliente Ciclo Facturacion"
  }

  dimension: cliente__cliente_codigo_integracion {
    type: string
    sql: ${TABLE}.Cliente.ClienteCodigoIntegracion ;;
    group_label: "Cliente"
    group_item_label: "Cliente Codigo Integracion"
  }

  dimension: cliente__cliente_codigo_integracion_texto {
    type: string
    sql: ${TABLE}.Cliente.ClienteCodigoIntegracionTexto ;;
    group_label: "Cliente"
    group_item_label: "Cliente Codigo Integracion Texto"
  }

  dimension: cliente__cliente_cuit {
    type: string
    sql: ${TABLE}.Cliente.ClienteCUIT ;;
    group_label: "Cliente"
    group_item_label: "Cliente Cuit"
  }

  dimension: cliente__cliente_email {
    type: string
    sql: ${TABLE}.Cliente.ClienteEmail ;;
    group_label: "Cliente"
    group_item_label: "Cliente Email"
  }

  dimension: cliente__cliente_persona_contacto_srcid {
    type: string
    sql: ${TABLE}.Cliente.ClientePersonaContactoSRCId ;;
    group_label: "Cliente"
    group_item_label: "Cliente Persona Contacto Srcid"
  }

  dimension: cliente__cliente_razon_social {
    type: string
    sql: ${TABLE}.Cliente.ClienteRazonSocial ;;
    group_label: "Cliente"
    group_item_label: "Cliente Razon Social"
  }

  dimension: cliente__cliente_segmento1_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento1Nombre ;;
    group_label: "Cliente"
    group_item_label: "Cliente Segmento1 Nombre"
  }

  dimension: cliente__cliente_segmento1_srcid {
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento1SRCId ;;
    group_label: "Cliente"
    group_item_label: "Cliente Segmento1 Srcid"
  }

  dimension: cliente__cliente_segmento2_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento2Nombre ;;
    group_label: "Cliente"
    group_item_label: "Cliente Segmento2 Nombre"
  }

  dimension: cliente__cliente_segmento2_srcid {
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento2SRCId ;;
    group_label: "Cliente"
    group_item_label: "Cliente Segmento2 Srcid"
  }

  dimension: cliente__cliente_srcid {
    type: string
    sql: ${TABLE}.Cliente.ClienteSRCId ;;
    group_label: "Cliente"
    group_item_label: "Cliente Srcid"
  }

  dimension: cliente__cliente_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteTipoNombre ;;
    group_label: "Cliente"
    group_item_label: "Cliente Tipo Nombre"
  }

  dimension: cliente__cliente_tipo_pago {
    type: string
    sql: ${TABLE}.Cliente.ClienteTipoPago ;;
    group_label: "Cliente"
    group_item_label: "Cliente Tipo Pago"
  }

  dimension: cliente__cliente_tipo_srcid {
    type: string
    sql: ${TABLE}.Cliente.ClienteTipoSRCId ;;
    group_label: "Cliente"
    group_item_label: "Cliente Tipo Srcid"
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

  dimension: cliente__cuenta_cliente_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaClienteSRCId ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Cliente Srcid"
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

  dimension: cliente__cuenta_domicilio_envio_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaDomicilioEnvioSRCId ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Domicilio Envio Srcid"
  }

  dimension: cliente__cuenta_domicilio_facturacion_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaDomicilioFacturacionSRCId ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Domicilio Facturacion Srcid"
  }

  dimension: cliente__cuenta_estado_nombre {
    type: string
    sql: ${TABLE}.Cliente.CuentaEstadoNombre ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Estado Nombre"
  }


  dimension: cliente__cuenta_estado_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaEstadoSRCId ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Estado Srcid"
  }

  dimension: cliente__cuenta_hwacct_code {
    type: string
    sql: ${TABLE}.Cliente.CuentaHWACCT_CODE ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Hwacct Code"
  }

  dimension: cliente__cuenta_marca_migracion {
    type: string
    sql: ${TABLE}.Cliente.CuentaMarcaMigracion ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Marca Migracion"
  }

  dimension: cliente__cuenta_medio_pago_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaMedioPagoSRCId ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Medio Pago Srcid"
  }

  dimension: cliente__cuenta_metodo_entrega {
    type: string
    sql: ${TABLE}.Cliente.CuentaMetodoEntrega ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Metodo Entrega"
  }

  dimension: cliente__cuenta_padre_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaPadreSRCId ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Padre Srcid"
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
    group_item_label: "Cuenta Sla"
  }

  dimension: cliente__cuenta_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaSRCId ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Srcid"
  }

  dimension: cliente__cuenta_suscripcion_bd {
    type: string
    sql: ${TABLE}.Cliente.CuentaSuscripcionBD ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Suscripcion Bd"
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
    group_label: "Cliente"
    group_item_label: "Cuenta Tipo Nombre"
  }

  dimension: cliente__cuenta_tipo_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaTipoSRCId ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Tipo Srcid"
  }



  dimension: cliente__medio_pago_cuenta_bancaria_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.MedioPagoCuentaBancariaTipoNombre ;;
    group_label: "Cliente"
    group_item_label: "Medio Pago Cuenta Bancaria Tipo Nombre"
  }

  dimension: cliente__medio_pago_cuenta_bancaria_tipo_srcid {
    type: string
    sql: ${TABLE}.Cliente.MedioPagoCuentaBancariaTipoSRCId ;;
    group_label: "Cliente"
    group_item_label: "Medio Pago Cuenta Bancaria Tipo Srcid"
  }

  dimension: cliente__medio_pago_entidad_financiera_nombre {
    type: string
    sql: ${TABLE}.Cliente.MedioPagoEntidadFinancieraNombre ;;
    group_label: "Cliente"
    group_item_label: "Medio Pago Entidad Financiera Nombre"
  }

  dimension: cliente__medio_pago_entidad_financiera_srcid {
    type: string
    sql: ${TABLE}.Cliente.MedioPagoEntidadFinancieraSRCId ;;
    group_label: "Cliente"
    group_item_label: "Medio Pago Entidad Financiera Srcid"
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
    group_label: "Cliente"
    group_item_label: "Medio Pago Tarjeta Tipo Nombre"
  }

  dimension: cliente__medio_pago_tarjeta_tipo_srcid {
    type: string
    sql: ${TABLE}.Cliente.MedioPagoTarjetaTipoSRCId ;;
    group_label: "Cliente"
    group_item_label: "Medio Pago Tarjeta Tipo Srcid"
  }

  dimension: cliente__medio_pago_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.MedioPagoTipoNombre ;;
    group_label: "Cliente"
    group_item_label: "Medio Pago Tipo Nombre"
  }

  dimension: cliente__medio_pago_tipo_srcid {
    type: string
    sql: ${TABLE}.Cliente.MedioPagoTipoSRCId ;;
    group_label: "Cliente"
    group_item_label: "Medio Pago Tipo Srcid"
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
    group_item_label: "Persona Cuilnumero"
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

  dimension: cliente__persona_srcid {
    type: string
    sql: ${TABLE}.Cliente.PersonaSRCId ;;
    group_label: "Cliente"
    group_item_label: "Persona Srcid"
  }

  dimension: cliente__persona_tipo_documento_nombre {
    type: string
    sql: ${TABLE}.Cliente.PersonaTipoDocumentoNombre ;;
    group_label: "Cliente"
    group_item_label: "Persona Tipo Documento Nombre"
  }

  dimension: cliente__persona_tipo_documento_srcid {
    type: string
    sql: ${TABLE}.Cliente.PersonaTipoDocumentoSRCId ;;
    group_label: "Cliente"
    group_item_label: "Persona Tipo Documento Srcid"
  }

  dimension: cuenta_facturacion_srcid {
    type: string
    sql: ${TABLE}.CuentaFacturacionSRCId ;;
  }

  dimension: cuenta_propiedad_srcid {
    type: string
    sql: ${TABLE}.CuentaPropiedadSRCId ;;
  }

  dimension: domicilio__domicilio_codigo_postal_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioCodigoPostalEnv ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Codigo Postal Env"
  }

  dimension: domicilio__domicilio_codigo_postal_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioCodigoPostalFact ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Codigo Postal Fact"
  }

  dimension: domicilio__domicilio_nombre_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioNombreEnv ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Nombre Env"
  }

  dimension: domicilio__domicilio_nombre_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioNombreFact ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Nombre Fact"
  }

  dimension: domicilio__domicilio_piso_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPisoEnv ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Piso Env"
  }

  dimension: domicilio__domicilio_piso_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPisoFact ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Piso Fact"
  }

  dimension: domicilio__domicilio_planta_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPlantaEnv ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Planta Env"
  }

  dimension: domicilio__domicilio_planta_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPlantaFact ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Planta Fact"
  }

  dimension: domicilio__domicilio_puerta_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPuertaEnv ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Puerta Env"
  }

  dimension: domicilio__domicilio_puerta_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPuertaFact ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Puerta Fact"
  }

  dimension: domicilio__domicilio_unidad_habitacional_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioUnidadHabitacionalEnv ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Unidad Habitacional Env"
  }

  dimension: domicilio__domicilio_unidad_habitacional_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioUnidadHabitacionalFact ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Unidad Habitacional Fact"
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

  dimension: geografia__rango_numeracion_departamento_sk {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionDepartamentoSK ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Departamento Sk"
  }

  dimension: geografia__rango_numeracion_departamento_srcid {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionDepartamentoSRCId ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Departamento Srcid"
  }

  dimension: geografia__rango_numeracion_localidad_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionLocalidadNombre ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Localidad Nombre"
  }

  dimension: geografia__rango_numeracion_localidad_sk {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionLocalidadSK ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Localidad Sk"
  }

  dimension: geografia__rango_numeracion_localidad_srcid {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionLocalidadSRCId ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Localidad Srcid"
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

  dimension: geografia__rango_numeracion_provincia_sk {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionProvinciaSK ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Provincia Sk"
  }

  dimension: geografia__rango_numeracion_provincia_srcid {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionProvinciaSRCId ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Provincia Srcid"
  }

  dimension: oferta_hwsrcid {
    type: string
    sql: ${TABLE}.OfertaHWSRCId ;;
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
    group_label: "Orden Alta"
    group_item_label: "Caso Sub Tipo Nombre"
  }

  dimension: orden_alta__caso_sub_tipo_srcid {
    type: string
    sql: ${TABLE}.OrdenAlta.CasoSubTipoSRCId ;;
    group_label: "Orden Alta"
    group_item_label: "Caso Sub Tipo Srcid"
  }

  dimension: orden_alta__caso_tipo_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.CasoTipoNombre ;;
    group_label: "Orden Alta"
    group_item_label: "Caso Tipo Nombre"
  }

  dimension: orden_alta__caso_tipo_srcid {
    type: string
    sql: ${TABLE}.OrdenAlta.CasoTipoSRCId ;;
    group_label: "Orden Alta"
    group_item_label: "Caso Tipo Srcid"
  }

  dimension: orden_alta__orden_canal_origen_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenCanalOrigenNombre ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Canal Origen Nombre"
  }

  dimension: orden_alta__orden_canal_origen_srcid {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenCanalOrigenSRCId ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Canal Origen Srcid"
  }

  dimension: orden_alta__orden_caso_srcid {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenCasoSRCId ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Caso Srcid"
  }


  dimension: orden_alta__orden_grupo_trabajo_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenGrupoTrabajoNombre ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Grupo Trabajo Nombre"
  }

  dimension: orden_alta__orden_item_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemAccionNombre ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Item Accion Nombre"
  }

  dimension: orden_alta__orden_item_accion_srcid {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemAccionSRCId ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Item Accion Srcid"
  }

  dimension: orden_alta__orden_item_estado_provisionamiento_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemEstadoProvisionamientoNombre ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Item Estado Provisionamiento Nombre"
  }

  dimension: orden_alta__orden_item_estado_provisionamiento_srcid {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemEstadoProvisionamientoSRCId ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Item Estado Provisionamiento Srcid"
  }

  dimension: orden_alta__orden_item_numero {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemNumero ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Item Numero"
  }


  dimension: orden_alta__orden_item_srcid {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemSRCId ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Item Srcid"
  }

  dimension: orden_alta__orden_item_sub_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemSubAccionNombre ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Item Sub Accion Nombre"
  }

  dimension: orden_alta__orden_item_sub_accion_srcid {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemSubAccionSRCId ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Item Sub Accion Srcid"
  }

  dimension: orden_alta__orden_metodo_entrega_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenMetodoEntregaNombre ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Metodo Entrega Nombre"
  }

  dimension: orden_alta__orden_numero {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenNumero ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Numero"
  }

  dimension: orden_alta__orden_srcid {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenSRCId ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Srcid"
  }

  dimension: orden_alta__orden_tipo_cambio_plan_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenTipoCambioPlanNombre ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Tipo Cambio Plan Nombre"
  }

  dimension: orden_alta__orden_tipo_cambio_plan_srcid {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenTipoCambioPlanSRCId ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Tipo Cambio Plan Srcid"
  }

  dimension: orden_alta__orden_tipo_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenTipoGestionNombre ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Tipo Gestion Nombre"
  }


  dimension: orden_alta__orden_tipo_gestion_srcid {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenTipoGestionSRCId ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Tipo Gestion Srcid"
  }

  dimension: orden_alta__orden_tipo_sub_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenTipoSubGestionNombre ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Tipo Sub Gestion Nombre"
  }

  dimension: orden_alta__orden_tipo_sub_gestion_srcid {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenTipoSubGestionSRCId ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Tipo Sub Gestion Srcid"
  }

  dimension: orden_alta__orden_usuario_creacion_srcid {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenUsuarioCreacionSRCId ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Usuario Creacion Srcid"
  }

  dimension: orden_alta__punto_venta_srcid {
    type: string
    sql: ${TABLE}.OrdenAlta.PuntoVentaSRCId ;;
    group_label: "Orden Alta"
    group_item_label: "Punto Venta Srcid"
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
    group_label: "Orden Baja"
    group_item_label: "Caso Estado Nombre"
  }

  dimension: orden_baja__caso_estado_srcid {
    type: string
    sql: ${TABLE}.OrdenBaja.CasoEstadoSRCId ;;
    group_label: "Orden Baja"
    group_item_label: "Caso Estado Srcid"
  }

  dimension: orden_baja__caso_motivo_baja_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.CasoMotivoBajaNombre ;;
    group_label: "Orden Baja"
    group_item_label: "Caso Motivo Baja Nombre"
  }

  dimension: orden_baja__caso_motivo_baja_srcid {
    type: string
    sql: ${TABLE}.OrdenBaja.CasoMotivoBajaSRCId ;;
    group_label: "Orden Baja"
    group_item_label: "Caso Motivo Baja Srcid"
  }

  dimension: orden_baja__caso_motivo_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.CasoMotivoNombre ;;
    group_label: "Orden Baja"
    group_item_label: "Caso Motivo Nombre"
  }

  dimension: orden_baja__caso_motivo_srcid {
    type: string
    sql: ${TABLE}.OrdenBaja.CasoMotivoSRCId ;;
    group_label: "Orden Baja"
    group_item_label: "Caso Motivo Srcid"
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
    group_item_label: "Caso Operadora Receptora Srcid"
  }

  dimension: orden_baja__caso_sub_motivo_baja_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.CasoSubMotivoBajaNombre ;;
    group_label: "Orden Baja"
    group_item_label: "Caso Sub Motivo Baja Nombre"
  }


  dimension: orden_baja__caso_sub_motivo_baja_srcid {
    type: string
    sql: ${TABLE}.OrdenBaja.CasoSubMotivoBajaSRCId ;;
    group_label: "Orden Baja"
    group_item_label: "Caso Sub Motivo Baja Srcid"
  }

  dimension: orden_baja__caso_sub_tipo_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.CasoSubTipoNombre ;;
    group_label: "Orden Baja"
    group_item_label: "Caso Sub Tipo Nombre"
  }

  dimension: orden_baja__caso_sub_tipo_srcid {
    type: string
    sql: ${TABLE}.OrdenBaja.CasoSubTipoSRCId ;;
    group_label: "Orden Baja"
    group_item_label: "Caso Sub Tipo Srcid"
  }

  dimension: orden_baja__orden_caso_srcid {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenCasoSRCId ;;
    group_label: "Orden Baja"
    group_item_label: "Orden Caso Srcid"
  }

  dimension: orden_baja__orden_item_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenItemAccionNombre ;;
    group_label: "Orden Baja"
    group_item_label: "Orden Item Accion Nombre"
  }

  dimension: orden_baja__orden_item_accion_srcid {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenItemAccionSRCId ;;
    group_label: "Orden Baja"
    group_item_label: "Orden Item Accion Srcid"
  }

  dimension: orden_baja__orden_item_numero {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenItemNumero ;;
    group_label: "Orden Baja"
    group_item_label: "Orden Item Numero"
  }

  dimension: orden_baja__orden_item_srcid {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenItemSRCId ;;
    group_label: "Orden Baja"
    group_item_label: "Orden Item Srcid"
  }

  dimension: orden_baja__orden_item_sub_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenItemSubAccionNombre ;;
    group_label: "Orden Baja"
    group_item_label: "Orden Item Sub Accion Nombre"
  }

  dimension: orden_baja__orden_item_sub_accion_srcid {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenItemSubAccionSRCId ;;
    group_label: "Orden Baja"
    group_item_label: "Orden Item Sub Accion Srcid"
  }

  dimension: orden_baja__orden_numero {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenNumero ;;
    group_label: "Orden Baja"
    group_item_label: "Orden Numero"
  }

  dimension: orden_baja__orden_srcid {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenSRCId ;;
    group_label: "Orden Baja"
    group_item_label: "Orden Srcid"
  }

  dimension: orden_baja__orden_tipo_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenTipoGestionNombre ;;
    group_label: "Orden Baja"
    group_item_label: "Orden Tipo Gestion Nombre"
  }

  dimension: orden_baja__orden_tipo_gestion_srcid {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenTipoGestionSRCId ;;
    group_label: "Orden Baja"
    group_item_label: "Orden Tipo Gestion Srcid"
  }

  dimension: orden_baja__orden_tipo_sub_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenTipoSubGestionNombre ;;
    group_label: "Orden Baja"
    group_item_label: "Orden Tipo Sub Gestion Nombre"
  }

  dimension: orden_baja__orden_tipo_sub_gestion_srcid {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenTipoSubGestionSRCId ;;
    group_label: "Orden Baja"
    group_item_label: "Orden Tipo Sub Gestion Srcid"
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
    group_item_label: "Producto Srcid"
  }

  dimension: plan_anterior__producto_tipo_nombre {
    type: string
    sql: ${TABLE}.PlanAnterior.ProductoTipoNombre ;;
    group_label: "Plan Anterior"
    group_item_label: "Producto Tipo Nombre"
  }

  dimension: plan_anterior__producto_tipo_srcid {
    type: string
    sql: ${TABLE}.PlanAnterior.ProductoTipoSRCId ;;
    group_label: "Plan Anterior"
    group_item_label: "Producto Tipo Srcid"
  }

  dimension: preactivaciones__preact_iccsrcid {
    type: string
    sql: ${TABLE}.Preactivaciones.PreactICCSRCId ;;
    group_label: "Preactivaciones"
    group_item_label: "Preact Iccsrcid"
  }

  dimension: preactivaciones__preact_localidad_nombre {
    type: string
    sql: ${TABLE}.Preactivaciones.PreactLocalidadNombre ;;
    group_label: "Preactivaciones"
    group_item_label: "Preact Localidad Nombre"
  }

  dimension: preactivaciones__preact_provincia_nombre {
    type: string
    sql: ${TABLE}.Preactivaciones.PreactProvinciaNombre ;;
    group_label: "Preactivaciones"
    group_item_label: "Preact Provincia Nombre"
  }

  dimension: preactivaciones__preact_punto_venta_descripcion {
    type: string
    sql: ${TABLE}.Preactivaciones.PreactPuntoVentaDescripcion ;;
    group_label: "Preactivaciones"
    group_item_label: "Preact Punto Venta Descripcion"
  }

  dimension: preactivaciones__preact_punto_venta_srcid {
    type: string
    sql: ${TABLE}.Preactivaciones.PreactPuntoVentaSRCId ;;
    group_label: "Preactivaciones"
    group_item_label: "Preact Punto Venta Srcid"
  }

  dimension: preactivaciones__preact_razon_social {
    type: string
    sql: ${TABLE}.Preactivaciones.PreactRazonSocial ;;
    group_label: "Preactivaciones"
    group_item_label: "Preact Razon Social"
  }


  dimension: producto__producto_codigo {
    type: string
    sql: ${TABLE}.Producto.ProductoCodigo ;;
    group_label: "Producto"
    group_item_label: "Producto Codigo"
  }

  dimension: producto__producto_familia_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoFamiliaNombre ;;
    group_label: "Producto"
    group_item_label: "Producto Familia Nombre"
  }

  dimension: producto__producto_familia_srcid {
    type: string
    sql: ${TABLE}.Producto.ProductoFamiliaSRCId ;;
    group_label: "Producto"
    group_item_label: "Producto Familia Srcid"
  }

  dimension: producto__producto_mercado_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoMercadoNombre ;;
    group_label: "Producto"
    group_item_label: "Producto Mercado Nombre"
  }

  dimension: producto__producto_mercado_srcid {
    type: string
    sql: ${TABLE}.Producto.ProductoMercadoSRCId ;;
    group_label: "Producto"
    group_item_label: "Producto Mercado Srcid"
  }

  dimension: producto__producto_nmu {
    type: string
    sql: ${TABLE}.Producto.ProductoNmu ;;
    group_label: "Producto"
    group_item_label: "Producto Nmu"
  }

  dimension: producto__producto_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoNombre ;;
    group_label: "Producto"
    group_item_label: "Producto Nombre"
  }

  dimension: producto__producto_sistema_origen_codigo {
    type: string
    sql: ${TABLE}.Producto.ProductoSistemaOrigenCodigo ;;
    group_label: "Producto"
    group_item_label: "Producto Sistema Origen Codigo"
  }

  dimension: producto__producto_sistema_origen_descripcion {
    type: string
    sql: ${TABLE}.Producto.ProductoSistemaOrigenDescripcion ;;
    group_label: "Producto"
    group_item_label: "Producto Sistema Origen Descripcion"
  }

  dimension: producto__producto_sistema_origen_intid {
    type: string
    sql: ${TABLE}.Producto.ProductoSistemaOrigenINTId ;;
    group_label: "Producto"
    group_item_label: "Producto Sistema Origen Intid"
  }

  dimension: producto__producto_sub_tipo_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoSubTipoNombre ;;
    group_label: "Producto"
    group_item_label: "Producto Sub Tipo Nombre"
  }

  dimension: producto__producto_sub_tipo_srcid {
    type: string
    sql: ${TABLE}.Producto.ProductoSubTipoSRCId ;;
    group_label: "Producto"
    group_item_label: "Producto Sub Tipo Srcid"
  }

  dimension: producto__producto_tipo_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoTipoNombre ;;
    group_label: "Producto"
    group_item_label: "Producto Tipo Nombre"
  }

  dimension: producto__producto_tipo_srcid {
    type: string
    sql: ${TABLE}.Producto.ProductoTipoSRCId ;;
    group_label: "Producto"
    group_item_label: "Producto Tipo Srcid"
  }

  dimension: producto_accesorio_srcid {
    type: string
    sql: ${TABLE}.ProductoAccesorioSRCId ;;
  }

  dimension: producto_adquirido_bundle_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoBundleNombre ;;
  }

  dimension: producto_adquirido_bundle_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoBundleSRCId ;;
  }

  dimension: producto_adquirido_codigo_raiz {
    type: string
    sql: ${TABLE}.ProductoAdquiridoCodigoRaiz ;;
  }

  dimension: producto_adquirido_codigo_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoCodigoSRCId ;;
  }

  dimension: producto_adquirido_codigo_suscripcion {
    type: string
    sql: ${TABLE}.ProductoAdquiridoCodigoSuscripcion ;;
  }

  dimension: producto_adquirido_cuenta_servicio_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoCuentaServicioSRCId ;;
  }

  dimension: producto_adquirido_estado_leasing_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoLeasingNombre ;;
  }

  dimension: producto_adquirido_estado_leasing_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoLeasingSRCId ;;
  }

  dimension: producto_adquirido_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoNombre ;;
  }

  dimension: producto_adquirido_estado_provisionamiento_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoProvisionamientoNombre ;;
  }

  dimension: producto_adquirido_estado_provisionamiento_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoProvisionamientoSRCId ;;
  }

  dimension: producto_adquirido_estado_red_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoRedNombre ;;
  }

  dimension: producto_adquirido_estado_red_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoRedSRCId ;;
  }

  dimension: producto_adquirido_estado_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoSRCId ;;
  }

  dimension: producto_adquirido_familia_producto {
    type: string
    sql: ${TABLE}.ProductoAdquiridoFamiliaProducto ;;
  }

  dimension: producto_adquirido_garantia_invalida {
    type: string
    sql: ${TABLE}.ProductoAdquiridoGarantiaInvalida ;;
  }

  dimension: producto_adquirido_iccid_plan {
    type: string
    sql: ${TABLE}.ProductoAdquiridoICCID_Plan ;;
  }

  dimension: producto_adquirido_iccidsrcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoICCIDSRCId ;;
  }

  dimension: producto_adquirido_imei {
    type: string
    sql: ${TABLE}.ProductoAdquiridoIMEI ;;
  }

  dimension: producto_adquirido_instancia_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoInstanciaSRCId ;;
  }

  dimension: producto_adquirido_leasing_sk {
    type: string
    sql: ${TABLE}.ProductoAdquiridoLeasingSK ;;
  }

  dimension: producto_adquirido_leasing_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoLeasingSRCId ;;
  }

  dimension: producto_adquirido_marca_migrado {
    type: string
    sql: ${TABLE}.ProductoAdquiridoMarcaMigrado ;;
  }

  dimension: producto_adquirido_motivo_alta {
    type: string
    sql: ${TABLE}.ProductoAdquiridoMotivoAlta ;;
  }

  dimension: producto_adquirido_motivo_baja {
    type: string
    sql: ${TABLE}.ProductoAdquiridoMotivoBaja ;;
  }

  dimension: producto_adquirido_nivel_jerarquia {
    type: string
    sql: ${TABLE}.ProductoAdquiridoNivelJerarquia ;;
  }

  dimension: producto_adquirido_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoNombre ;;
  }

  dimension: producto_adquirido_numero_linea {
    type: string
    sql: ${TABLE}.ProductoAdquiridoNumeroLinea ;;
  }

  dimension: producto_adquirido_numero_linea_toip {
    type: string
    sql: ${TABLE}.ProductoAdquiridoNumeroLineaTOIP ;;
  }

  dimension: producto_adquirido_numero_serie {
    type: string
    sql: ${TABLE}.ProductoAdquiridoNumeroSerie ;;
  }

  dimension: producto_adquirido_orden_item_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoOrdenItemSRCId ;;
  }

  dimension: producto_adquirido_padre_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoPadreSRCId ;;
  }

  dimension: producto_adquirido_producto_codigo {
    type: string
    sql: ${TABLE}.ProductoAdquiridoProductoCodigo ;;
  }

  dimension: producto_adquirido_recurso_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoRecursoSRCId ;;
  }

  dimension: producto_adquirido_referente_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoReferenteSRCId ;;
  }

  dimension: producto_adquirido_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoSRCId ;;
    label: "Producto Adquirido SRCId"
  }

  dimension: producto_adquirido_sub_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoSubEstadoNombre ;;
  }

  dimension: producto_adquirido_sub_estado_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoSubEstadoSRCId ;;
  }

  dimension: producto_adquirido_sub_motivo_alta {
    type: string
    sql: ${TABLE}.ProductoAdquiridoSubMotivoAlta ;;
  }

  dimension: producto_adquirido_sub_motivo_baja {
    type: string
    sql: ${TABLE}.ProductoAdquiridoSubMotivoBaja ;;
  }

  dimension: producto_adquirido_tipo {
    type: string
    sql: ${TABLE}.ProductoAdquiridoTipo ;;
  }

  dimension: producto_adquirido_usuario_creacion_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoUsuarioCreacionSRCId ;;
  }

  dimension: producto_adquirido_usuario_modificacion_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoUsuarioModificacionSRCId ;;
  }

  dimension: producto_srcid {
    type: string
    sql: ${TABLE}.ProductoSRCId ;;
  }

  dimension: promocion {
    hidden: yes
    sql: ${TABLE}.Promocion ;;
  }

  dimension: punto_venta__punto_venta_canal3 {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanal3 ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Canal3"
  }

  dimension: punto_venta__punto_venta_canal_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanalNombre ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Canal Nombre"
  }

  dimension: punto_venta__punto_venta_canal_srcid {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanalSRCId ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Canal Srcid"
  }

  dimension: punto_venta__punto_venta_canalidad2_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanalidad2Nombre ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Canalidad2 Nombre"
  }

  dimension: punto_venta__punto_venta_canalidad2_srcid {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanalidad2SRCId ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Canalidad2 Srcid"
  }

  dimension: punto_venta__punto_venta_descripcion {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaDescripcion ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Descripcion"
  }

  dimension: punto_venta__punto_venta_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaNombre ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Nombre"
  }

  dimension: punto_venta__punto_venta_provincia {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaProvincia ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Provincia"
  }

  dimension: punto_venta__punto_venta_region {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaRegion ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Region"
  }

  dimension: punto_venta__punto_venta_subregion {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaSubregion ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Subregion"
  }

  dimension: punto_venta__punto_venta_tipo_canal_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoCanalNombre ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Tipo Canal Nombre"
  }

  dimension: punto_venta__punto_venta_tipo_canal_srcid {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoCanalSRCId ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Tipo Canal Srcid"
  }

  dimension: punto_venta__punto_venta_tipo_contacto_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoContactoNombre ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Tipo Contacto Nombre"
  }

  dimension: punto_venta__punto_venta_tipo_contacto_srcid {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoContactoSRCId ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Tipo Contacto Srcid"
  }

  dimension: suspensiones__totales__activas {
    #hidden: yes
    sql: ${TABLE}.Suspensiones.Totales.Activas ;;
    group_label: "Suspensiones Totales"
    group_item_label: "Activas"
  }

  dimension: suspensiones__totales__suspensiones_producto_adquirido_srcid {
    type: string
    sql: ${TABLE}.Suspensiones.Totales.SuspensionesProductoAdquiridoSRCId ;;
    group_label: "Suspensiones Totales"
    group_item_label: "Suspensiones Producto Adquirido Srcid"
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
  }

  dimension: producto_adquirido_precio {
    type: number
    sql: ${TABLE}.ProductoAdquiridoPrecio ;;
  }

  dimension: recarga__recarga_recharge_amt_pri_rec {
    type: number
    sql: ${TABLE}.Recarga.RecargaRECHARGE_AMT_Pri_Rec ;;
    group_label: "Recarga"
    group_item_label: "Recarga Recharge Amt Pri Rec"
  }

  dimension: recarga__recarga_recharge_amt_ult_rec {
    type: number
    sql: ${TABLE}.Recarga.RecargaRECHARGE_AMT_Ult_Rec ;;
    group_label: "Recarga"
    group_item_label: "Recarga Recharge Amt Ult Rec"
  }

  dimension: recarga__recarga_recharge_log_id_pri_rec {
    type: number
    value_format_name: id
    sql: ${TABLE}.Recarga.RecargaRECHARGE_LOG_ID_Pri_Rec ;;
    group_label: "Recarga"
    group_item_label: "Recarga Recharge Log ID Pri Rec"
  }

  dimension: recarga__recarga_recharge_log_id_ult_rec {
    type: number
    value_format_name: id
    sql: ${TABLE}.Recarga.RecargaRECHARGE_LOG_ID_Ult_Rec ;;
    group_label: "Recarga"
    group_item_label: "Recarga Recharge Log ID Ult Rec"
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
  }

  dimension: cliente__cuenta_domicilio_facturacion_validado {
    type: yesno
    sql: ${TABLE}.Cliente.CuentaDomicilioFacturacionValidado ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Domicilio Facturacion Validado"
  }

  dimension: cliente__marcas__cliente_marca_activo {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.ClienteMarcaActivo ;;
    group_label: "Cliente Marcas"
    group_item_label: "Cliente Marca Activo"
  }

  dimension: cliente__marcas__cliente_marca_fraude {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.ClienteMarcaFraude ;;
    group_label: "Cliente Marcas"
    group_item_label: "Cliente Marca Fraude"
  }

  dimension: cliente__marcas__cliente_marca_jubilado {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.ClienteMarcaJubilado ;;
    group_label: "Cliente Marcas"
    group_item_label: "Cliente Marca Jubilado"
  }

  dimension: cliente__marcas__cliente_marca_partner {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.ClienteMarcaPartner ;;
    group_label: "Cliente Marcas"
    group_item_label: "Cliente Marca Partner"
  }

  dimension: cliente__marcas__cliente_marca_prensa {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.ClienteMarcaPrensa ;;
    group_label: "Cliente Marcas"
    group_item_label: "Cliente Marca Prensa"
  }

  dimension: cliente__marcas__cliente_marca_vip {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.ClienteMarcaVIP ;;
    group_label: "Cliente Marcas"
    group_item_label: "Cliente Marca Vip"
  }

  dimension: cliente__marcas__cuenta_marca_compra_financiada {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.CuentaMarcaCompraFinanciada ;;
    group_label: "Cliente Marcas"
    group_item_label: "Cuenta Marca Compra Financiada"
  }

  dimension: cliente__marcas__cuenta_marca_debito {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.CuentaMarcaDebito ;;
    group_label: "Cliente Marcas"
    group_item_label: "Cuenta Marca Debito"
  }

  dimension: cliente__marcas__cuenta_marca_deuda_financiada {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.CuentaMarcaDeudaFinanciada ;;
    group_label: "Cliente Marcas"
    group_item_label: "Cuenta Marca Deuda Financiada"
  }

  dimension: cliente__marcas__cuenta_marca_morosidad {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.CuentaMarcaMorosidad ;;
    group_label: "Cliente Marcas"
    group_item_label: "Cuenta Marca Morosidad"
  }

  dimension: cliente__marcas__cuenta_marca_no_nominado {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.CuentaMarcaNoNominado ;;
    group_label: "Cliente Marcas"
    group_item_label: "Cuenta Marca No Nominado"
  }

  dimension: cliente__marcas__cuenta_marca_socio {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.CuentaMarcaSocio ;;
    group_label: "Cliente Marcas"
    group_item_label: "Cuenta Marca Socio"
  }
  dimension: cliente__persona_marca_enviar_mail {
    type: yesno
    sql: ${TABLE}.Cliente.PersonaMarcaEnviarMail ;;
    group_label: "Cliente"
    group_item_label: "Persona Marca Enviar Mail"
  }

  dimension: cliente__persona_marca_fraude {
    type: yesno
    sql: ${TABLE}.Cliente.PersonaMarcaFraude ;;
    group_label: "Cliente"
    group_item_label: "Persona Marca Fraude"
  }

  dimension: cliente__persona_marca_no_llamar {
    type: yesno
    sql: ${TABLE}.Cliente.PersonaMarcaNoLlamar ;;
    group_label: "Cliente"
    group_item_label: "Persona Marca No Llamar"
  }

  dimension: marcas__marca_cuenta_servicio_actualizada {
    type: yesno
    sql: ${TABLE}.Marcas.MarcaCuentaServicioActualizada ;;
    group_label: "Marcas"
    group_item_label: "Marca Cuenta Servicio Actualizada"
  }

  dimension: marcas__producto_adquirido_marca_destruccion_total {
    type: yesno
    sql: ${TABLE}.Marcas.ProductoAdquiridoMarcaDestruccionTotal ;;
    group_label: "Marcas"
    group_item_label: "Producto Adquirido Marca Destruccion Total"
  }

  dimension: marcas__producto_adquirido_marca_leasing {
    type: yesno
    sql: ${TABLE}.Marcas.ProductoAdquiridoMarcaLeasing ;;
    group_label: "Marcas"
    group_item_label: "Producto Adquirido Marca Leasing"
  }

  dimension: marcas__producto_adquirido_marca_parque_activo {
    type: yesno
    sql: ${TABLE}.Marcas.ProductoAdquiridoMarcaParqueActivo ;;
    group_label: "Marcas"
    group_item_label: "Producto Adquirido Marca Parque Activo"
  }

  dimension: marcas__producto_adquirido_marca_pertenece_bundle {
    type: yesno
    sql: ${TABLE}.Marcas.ProductoAdquiridoMarcaPerteneceBundle ;;
    group_label: "Marcas"
    group_item_label: "Producto Adquirido Marca Pertenece Bundle"
  }

  dimension: marcas__producto_adquirido_marca_port_out {
    type: yesno
    sql: ${TABLE}.Marcas.ProductoAdquiridoMarcaPortOut ;;
    group_label: "Marcas"
    group_item_label: "Producto Adquirido Marca Port Out"
  }

  dimension: marcas__producto_adquirido_marca_principal {
    type: yesno
    sql: ${TABLE}.Marcas.ProductoAdquiridoMarcaPrincipal ;;
    group_label: "Marcas"
    group_item_label: "Producto Adquirido Marca Principal"
  }

  dimension: marcas__producto_adquirido_marca_producto_competencia {
    type: yesno
    sql: ${TABLE}.Marcas.ProductoAdquiridoMarcaProductoCompetencia ;;
    group_label: "Marcas"
    group_item_label: "Producto Adquirido Marca Producto Competencia"
  }
  dimension: orden_alta__orden_marca_cambio_mercado {
    type: yesno
    sql: ${TABLE}.OrdenAlta.OrdenMarcaCambioMercado ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Marca Cambio Mercado"
  }

  dimension: orden_alta__orden_marca_cambio_producto {
    type: yesno
    sql: ${TABLE}.OrdenAlta.OrdenMarcaCambioProducto ;;
    group_label: "Orden Alta"
    group_item_label: "Orden Marca Cambio Producto"
  }

  dimension: producto__marcas__producto_marca_activo {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaActivo ;;
    group_label: "Producto Marcas"
    group_item_label: "Producto Marca Activo"
  }

  dimension: producto__marcas__producto_marca_no_assetizable {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaNoAssetizable ;;
    group_label: "Producto Marcas"
    group_item_label: "Producto Marca No Assetizable"
  }

  dimension: producto__marcas__producto_marca_orderable {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaOrderable ;;
    group_label: "Producto Marcas"
    group_item_label: "Producto Marca Orderable"
  }

  dimension: producto__marcas__producto_marca_principal {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaPrincipal ;;
    group_label: "Producto Marcas"
    group_item_label: "Producto Marca Principal"
  }

  dimension: producto__marcas__producto_marca_tangible {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaTangible ;;
    group_label: "Producto Marcas"
    group_item_label: "Producto Marca Tangible"
  }

  ## Hidden
  dimension: cliente__cliente_segmento1_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.ClienteSegmento1SK ;;
  }

  dimension: cliente__cliente_segmento2_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.ClienteSegmento2SK ;;
  }

  dimension: cliente__cliente_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.ClienteTipoSK ;;
  }

  dimension: cliente__cuenta_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.CuentaEstadoSK ;;
  }

  dimension: cliente__medio_pago_cuenta_bancaria_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.MedioPagoCuentaBancariaTipoSK ;;
  }

  dimension: cliente__medio_pago_entidad_financiera_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.MedioPagoEntidadFinancieraSK ;;
  }

  dimension: cliente__medio_pago_tarjeta_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.MedioPagoTarjetaTipoSK ;;
  }

  dimension: cliente__medio_pago_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.MedioPagoTipoSK ;;
  }

  dimension: cliente__persona_tipo_documento_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.PersonaTipoDocumentoSK ;;
  }

  dimension: orden_alta__caso_sub_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.CasoSubTipoSK ;;
  }

  dimension: orden_alta__caso_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.CasoTipoSK ;;
  }

  dimension: orden_alta__orden_canal_origen_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenCanalOrigenSK ;;
  }

  dimension: orden_alta__orden_item_accion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenItemAccionSK ;;
  }

  dimension: orden_alta__orden_item_estado_provisionamiento_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenItemEstadoProvisionamientoSK ;;
  }

  dimension: orden_alta__orden_item_sub_accion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenItemSubAccionSK ;;
  }

  dimension: orden_alta__orden_tipo_cambio_plan_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenTipoCambioPlanSK ;;
  }

  dimension: orden_alta__orden_tipo_gestion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenTipoGestionSK ;;
  }

  dimension: orden_alta__orden_tipo_sub_gestion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenTipoSubGestionSK ;;
  }

  dimension: orden_baja__caso_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.CasoEstadoSK ;;
  }

  dimension: orden_baja__caso_motivo_baja_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.CasoMotivoBajaSK ;;
  }

  dimension: orden_baja__caso_motivo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.CasoMotivoSK ;;
  }

  dimension: orden_baja__caso_sub_motivo_baja_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.CasoSubMotivoBajaSK ;;
  }

  dimension: orden_baja__caso_sub_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.CasoSubTipoSK ;;
  }

  dimension: orden_baja__orden_item_accion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.OrdenItemAccionSK ;;
  }

  dimension: orden_baja__orden_item_sub_accion_sk_ {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.OrdenItemSubAccionSK ;;
  }

  dimension: orden_baja__orden_tipo_gestion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.OrdenTipoGestionSK ;;
  }

  dimension: orden_baja__orden_tipo_sub_gestion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.OrdenTipoSubGestionSK ;;
  }

  dimension: plan_anterior__producto_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PlanAnterior.ProductoTipoSK ;;
  }

  dimension: producto__producto_familia_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto.ProductoFamiliaSK ;;
  }

  dimension: producto__producto_mercado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto.ProductoMercadoSK ;;
  }

  dimension: producto__producto_sub_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto.ProductoSubTipoSK ;;
  }

  dimension: producto__producto_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto.ProductoTipoSK ;;
  }

  dimension: producto_adquirido_estado_provisionamiento_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.ProductoAdquiridoEstadoProvisionamientoSK ;;
  }

  dimension: producto_adquirido_estado_red_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.ProductoAdquiridoEstadoRedSK ;;
  }

  dimension: producto_adquirido_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.ProductoAdquiridoEstadoSK ;;
  }

  dimension: producto_adquirido_sub_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.ProductoAdquiridoSubEstadoSK ;;
  }

  dimension: punto_venta__punto_venta_canal_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanalSK ;;
  }

  dimension: punto_venta__punto_venta_canalidad2_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanalidad2SK ;;
  }

  dimension: punto_venta__punto_venta_tipo_canal_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoCanalSK ;;
  }

  dimension: punto_venta__punto_venta_tipo_contacto_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoContactoSK ;;
  }

  dimension: cliente__cuenta_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.CuentaTIpoSK ;;
  }

  ## Measures
}
