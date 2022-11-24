view: fth_parque {
  label: "Parque Productos"
  sql_table_name: @{gcp_ambiente}.FTH_Parque` ;;
  suggestions: no

## Dimensions

  ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.ProductoAdquiridoPK ;;
  }

  ## Nested Fields

  dimension: promocion {
    hidden: yes
    sql: ${TABLE}.Promocion ;;
  }

  ## Dates

  dimension: _fecha_creacion {
    type: date_time
    datatype: timestamp
    sql: ${TABLE}._auditoria._fechaCreacion ;;
    view_label: "Auditoria"
    label: "Fecha Creacion"
  }

  dimension: _fecha_ultima_actualizacion {
    type: date_time
    datatype: timestamp
    sql: ${TABLE}._auditoria._fechaUltimaActualizacion ;;
    view_label: "Auditoria"
    label: "Fecha Actualizacion"
  }

  dimension: fecha_entidad {
    type: date
    sql: ${TABLE}.FechaEntidad ;;
    datatype: date
    label: "Fecha Cierre"
  }

  dimension_group: fecha_activacion_plan_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Fechas.FechaActivacionPlanSRC ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    group_label: "Fecha Activacion Plan"
    label: "Activacion Plan"
  }

  dimension_group: fecha_desconexion_plan_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Fechas.FechaDesconexionPlanSRC ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    group_label: "Fecha Desconexion Plan"
    label: "Desconexion Plan"
  }

  dimension_group: producto_adquirido_fecha_activacion_historica_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Fechas.ProductoAdquiridoFechaActivacionHistoricaSRC ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    group_label: "Fecha Activacion Historica"
    label: "Activacion Historica"
  }

  dimension_group: producto_adquirido_fecha_activacion_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Fechas.ProductoAdquiridoFechaActivacionSRC ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    group_label: "Fecha Activacion"
    label: "Activacion"
  }

  dimension_group: producto_adquirido_fecha_activacion_calculada {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Fechas.ProductoAdquiridoFechaActivacionCalculada ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    group_label: "Fecha Activacion Calculada"
    label: "Activacion Calculada"
  }

  dimension_group: producto_adquirido_fecha_baja_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Fechas.ProductoAdquiridoFechaBajaSRC ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    group_label: "Fecha Baja"
    label: "Baja"
  }

  dimension_group: producto_adquirido_fecha_compra_src {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Fechas.ProductoAdquiridoFechaCompraSRC ;;
    datatype: date
    view_label: "Producto Adquirido"
    group_label: "Fecha Compra"
    label: "Compra"
  }

  dimension_group: producto_adquirido_fecha_creacion_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Fechas.ProductoAdquiridoFechaCreacionSRC ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    group_label: "Fecha Creacion"
    label: "Creacion"
  }

  dimension_group: producto_adquirido_fecha_fin_leasing_src {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Fechas.ProductoAdquiridoFechaFinLeasingSRC ;;
    datatype: date
    view_label: "Producto Adquirido"
    group_label: "Fecha Fin Leasing"
    label: "Fin Leasing"
  }

  dimension_group: producto_adquirido_fecha_inicio_leasing_src {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Fechas.ProductoAdquiridoFechaInicioLeasingSRC ;;
    datatype: date
    view_label: "Producto Adquirido"
    group_label: "Fecha Inicio Leasing"
    label: "Inicio Leasing"
  }

  dimension_group: producto_adquirido_fecha_instalacion_src {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Fechas.ProductoAdquiridoFechaInstalacionSRC ;;
    datatype: date
    view_label: "Producto Adquirido"
    group_label: "Fecha Instalacion"
    label: "Instalacion"
  }

  dimension_group: producto_adquirido_fecha_modificacion_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Fechas.ProductoAdquiridoFechaModificacionSRC ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    group_label: "Fecha Modificacion"
    label: "Modificacion"
  }

  dimension_group: cuenta_fec_ultima_suspension_voluntaria_src {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Cliente.CuentaFecUltimaSuspensionVoluntariaSRC ;;
    datatype: date
    convert_tz: no
    view_label: "Cliente"
    group_label: "Fecha Ultima Suspension Voluntaria"
    label: "Ult. Susp. Voluntaria"
  }

  dimension_group: cuenta_fecha_creacion_hwsrc {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Cliente.Fechas.CuentaFechaCreacionHWSRC ;;
    datatype: timestamp
    view_label: "Cliente"
    group_label: "Fecha Creacion Cuenta HW"
    label: "Creacion Cuenta HW"
  }

  dimension_group: cuenta_fecha_creacion_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Cliente.Fechas.CuentaFechaCreacionSRC ;;
    datatype: timestamp
    view_label: "Cliente"
    group_label: "Fecha Creacion Cuenta"
    label: "Creacion Cuenta"
  }

  dimension_group: cuenta_fecha_modificacion_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Cliente.Fechas.CuentaFechaModificacionSRC ;;
    datatype: timestamp
    view_label: "Cliente"
    group_label: "Fecha Modificacion Cuenta"
    label: "Modificacion Cuenta"
  }

  dimension_group: medio_pago_fecha_creacion_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Cliente.MedioPagoFechaCreacionSRC ;;
    datatype: timestamp
    view_label: "Cliente"
    group_label: "Fecha Creacion Medio Pago"
    label: "Creacion Medio Pago"
    description: "Fecha de creacion del medio de pago"
  }

  dimension_group: persona_fecha_creacion_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Cliente.PersonaFechaCreacionSRC ;;
    datatype: timestamp
    view_label: "Cliente"
    group_label: "Fecha Creacion Persona"
    label: "Creacion Persona"
  }

  dimension_group: persona_fecha_nacimiento {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Cliente.PersonaFechaNacimiento ;;
    datatype: date
    convert_tz: no
    view_label: "Cliente"
    group_label: "Fecha Nacimiento Persona"
    label: "Persona Nacimiento"
  }

  dimension_group: persona_fecha_modificacion_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Cliente.PersonaFechaModificacionSRC ;;
    datatype: timestamp
    view_label: "Cliente"
    group_label: "Fecha Modificacion Persona"
    label: "Persona Modificacion"
  }

  dimension_group: oa_orden_fecha_activacion_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.OrdenAlta.OrdenFechaActivacionSRC ;;
    datatype: timestamp
    view_label: "Orden Alta"
    group_label: "Fecha Activacion"
    label: "Activacion"
  }

  dimension_group: oa_orden_fecha_entrega_src {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.OrdenAlta.OrdenFechaEntregaSRC ;;
    datatype: date
    convert_tz: no
    view_label: "Orden Alta"
    group_label: "Fecha Entrega"
    label: "Entrega"
  }

  dimension_group: oa_orden_fecha_fin_src {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.OrdenAlta.OrdenFechaFinSRC ;;
    datatype: date
    convert_tz: no
    view_label: "Orden Alta"
    group_label: "Fecha Fin"
    label: "Fin"
  }

  dimension_group: oa_orden_fecha_inicio_src {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.OrdenAlta.OrdenFechaInicioSRC ;;
    datatype: date
    convert_tz: no
    view_label: "Orden Alta"
    group_label: "Fecha Inicio"
    label: "Inicio"
  }

  dimension_group: oa_orden_fecha_mod_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.OrdenAlta.OrdenFechaModSRC ;;
    datatype: timestamp
    view_label: "Orden Alta"
    group_label: "Fecha Modificacion"
    label: "Modificacion"
  }

  dimension_group: oa_orden_fecha_nominacion_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.OrdenAlta.OrdenFechaNominacionSRC ;;
    datatype: timestamp
    view_label: "Orden Alta"
    group_label: "Fecha Nominacion"
    label: "Nominacion"
  }

  dimension_group: ob_orden_fecha_activacion_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.OrdenBaja.OrdenFechaActivacionSRC ;;
    datatype: timestamp
    view_label: "Orden Baja"
    group_label: "Fecha Activacion"
    label: "Activacion"
  }

  dimension_group: ob_orden_fecha_fin_src {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.OrdenBaja.OrdenFechaFinSRC ;;
    datatype: date
    convert_tz: no
    view_label: "Orden Baja"
    group_label: "Fecha Fin"
    label: "Fin"
  }

  dimension_group: preact_fecha_carga_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Preactivaciones.PreactFechaCargaSRC ;;
    datatype: datetime
    view_label: "Preactivaciones"
    group_label: "Fecha Carga"
    label: "Carga"
  }

  dimension_group: fecha_suspension1_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Suspensiones.FechaSuspension1SRC ;;
    datatype: timestamp
    view_label: "Suspensiones"
    group_label: "Fecha Primera Suspension"
    label: "Primera Suspension"
  }

  dimension_group: fecha_suspension_administrativa_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Suspensiones.FechaSuspensionAdministrativaSRC ;;
    datatype: timestamp
    view_label: "Suspensiones"
    group_label: "Fecha Suspension Administrativa"
    label: "Suspension Administrativa"
  }

  dimension_group: fecha_suspension_degradacion_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Suspensiones.FechaSuspensionDegradacionSRC ;;
    datatype: timestamp
    view_label: "Suspensiones"
    group_label: "Fecha Suspension Degradacion"
    label: "Suspension Degradacion"
  }

  dimension_group: fecha_suspension_leasing_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Suspensiones.FechaSuspensionLeasingSRC ;;
    datatype: timestamp
    view_label: "Suspensiones"
    group_label: "Fecha Suspension Leasing"
    label: "Suspension Leasing"
  }

  dimension_group: fecha_suspension_otros_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Suspensiones.FechaSuspensionOtrosSRC ;;
    datatype: timestamp
    view_label: "Suspensiones"
    group_label: "Fecha Suspension Otros"
    label: "Suspension Otros"
  }

  dimension_group: fecha_suspension_parcial_mora_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Suspensiones.FechaSuspensionParcialMoraSRC ;;
    datatype: timestamp
    view_label: "Suspensiones"
    group_label: "Fecha Suspension Parcial Mora"
    label: "Suspension Parcial Mora"
  }

  dimension_group: fecha_suspension_port_out_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Suspensiones.FechaSuspensionPortOutSRC ;;
    datatype: timestamp
    view_label: "Suspensiones"
    group_label: "Fecha Suspension PortOut"
    label: "Suspension PortOut"
  }

  dimension_group: fecha_suspension_reversion_port_insrc {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Suspensiones.FechaSuspensionReversionPortINSRC ;;
    datatype: timestamp
    view_label: "Suspensiones"
    group_label: "Fecha Reversion PortIn"
    label: "Suspension PortIn"
  }

  dimension_group: fecha_suspension_siniestro_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Suspensiones.FechaSuspensionSiniestroSRC ;;
    datatype: timestamp
    view_label: "Suspensiones"
    group_label: "Fecha Suspension Siniestro"
    label: "Suspension Siniestro"
  }

  dimension_group: fecha_suspension_total_mora_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Suspensiones.FechaSuspensionTotalMoraSRC ;;
    datatype: timestamp
    view_label: "Suspensiones"
    group_label: "Fecha Suspension Total Mora"
    label: "Suspension Total Mora"
  }

  dimension_group: fecha_suspension_ultima_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Suspensiones.FechaSuspensionUltimaSRC ;;
    datatype: timestamp
    view_label: "Suspensiones"
    group_label: "Fecha Suspension Ultima"
    label: "Suspension Ultima"
  }

  dimension_group: fecha_suspension_voluntaria_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Suspensiones.FechaSuspensionVoluntariaSRC ;;
    datatype: timestamp
    view_label: "Suspensiones"
    group_label: "Fecha Suspension Voluntaria"
    label: "Suspension Voluntaria"
  }

  dimension_group: producto_adquirido_fecha_alta_src_prepago_movil_calc {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Fechas.ProductoAdquiridoFechaAltaSRCPrepagoMovilCalc ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    group_label: "Fecha Alta Prepago Movil"
    label: "Alta Prepago Movil"
  }

  dimension_group: producto_adquirido_fecha_alta_src_abono_movil_calc {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Fechas.ProductoAdquiridoFechaAltaSRCAbonoMovilCalc ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    group_label: "Fecha Alta Abono Movil"
    label: "Alta Abono Movil"
  }

  dimension_group: producto_adquirido_fecha_alta_src_plan_movil_calc {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Fechas.ProductoAdquiridoFechaAltaSRCPlanMovilCalc ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    group_label: "Fecha Alta Plan Movil"
    label: "Alta Plan Movil"
  }

  dimension_group: recarga_entry_date_pri_rec_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Recarga.RecargaENTRY_DATESRC_Pri_Rec ;;
    datatype: timestamp
    view_label: "Recarga"
    group_label: "Fecha Primera Recarga"
    label: "Primera Recarga"
  }

  dimension_group: recarga_entry_date_ult_rec_src {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Recarga.RecargaENTRY_DATESRC_Ult_Rec ;;
    datatype: timestamp
    view_label: "Recarga"
    group_label: "Fecha Ultima Recarga"
    label: "Ultima Recarga"
  }

  ## Strings

  dimension: _sesion_id {
    type: string
    sql: ${TABLE}._auditoria._sesionId ;;
    view_label: "Auditoria"
    label: "Sesion Id"
  }

  dimension: _usuario_creacion {
    type: string
    sql: ${TABLE}._auditoria._usuarioCreacion ;;
    view_label: "Auditoria"
    label: "Usuario Creacion"
  }

  dimension: _usuario_ultima_actualizacion {
    type: string
    sql: ${TABLE}._auditoria._usuarioUltimaActualizacion ;;
    view_label: "Auditoria"
    label: "Usuario Modificacion"
  }

  dimension: producto_adquirido_gama_equipo {
    type: string
    sql: ${TABLE}.Caracteristicas.ProductoAdquiridoGamaEquipo ;;
    view_label: "Producto Adquirido"
    group_label: "Caracteristicas"
    label: "Gama Equipo"
  }

  dimension: producto_adquirido_imsi {
    type: string
    sql: ${TABLE}.Caracteristicas.ProductoAdquiridoIMSI ;;
    view_label: "Producto Adquirido"
    group_label: "Caracteristicas"
    label: "IMSI"
  }

  dimension: producto_adquirido_marca_producto {
    type: string
    sql: ${TABLE}.Caracteristicas.ProductoAdquiridoMarcaProducto ;;
    view_label: "Producto Adquirido"
    group_label: "Caracteristicas"
    label: "Marca"
  }

  dimension: producto_adquirido_modelo_producto {
    type: string
    sql: ${TABLE}.Caracteristicas.ProductoAdquiridoModeloProducto ;;
    view_label: "Producto Adquirido"
    group_label: "Caracteristicas"
    label: "Modelo"
  }

  dimension: producto_adquirido_nmu {
    type: string
    sql: ${TABLE}.Caracteristicas.ProductoAdquiridoNMU ;;
    view_label: "Producto Adquirido"
    group_label: "Caracteristicas"
    label: "NMU"
  }

  dimension: producto_adquirido_tipo_dispositivo {
    type: string
    sql: ${TABLE}.Caracteristicas.ProductoAdquiridoTipoDispositivo ;;
    view_label: "Producto Adquirido"
    group_label: "Caracteristicas"
    group_item_label: "Tipo Dispositivo"
  }

  dimension: producto_adquirido_tecnologia {
    type: string
    sql: ${TABLE}.Caracteristicas.ProductoAdquiridoTecnologia ;;
    view_label: "Producto Adquirido"
    group_label: "Caracteristicas"
    group_item_label: "Tecnologia"
  }

  dimension: producto_adquirido_velocidad_descarga_comercial {
    type: string
    sql: ${TABLE}.Caracteristicas.ProductoAdquiridoVelocidadDescargaComercial ;;
    view_label: "Producto Adquirido"
    group_label: "Caracteristicas"
    group_item_label: "Velocidad de Descarga Comercial"
  }

  dimension: producto_adquirido_velocidad_descarga_tecnica {
    type: string
    sql: ${TABLE}.Caracteristicas.ProductoAdquiridoVelocidadDescargaTecnica ;;
    view_label: "Producto Adquirido"
    group_label: "Caracteristicas"
    group_item_label: "Velocidad de Descarga Tecnica"
  }

  dimension: producto_adquirido_velocidad_subida {
    type: string
    sql: ${TABLE}.Caracteristicas.ProductoAdquiridoVelocidadSubida ;;
    view_label: "Producto Adquirido"
    group_label: "Caracteristicas"
    group_item_label: "Velocidad de Subida"
  }

  dimension: cliente_ciclo_facturacion {
    type: string
    sql: ${TABLE}.Cliente.ClienteCicloFacturacion ;;
    view_label: "Cliente"
    label: "Ciclo Facturacion"
  }

  dimension: cliente_codigo_integracion {
    type: string
    sql: ${TABLE}.Cliente.ClienteCodigoIntegracion ;;
    view_label: "Cliente"
    label: "Codigo Integracion"
  }

  dimension: cliente_codigo_integracion_texto {
    type: string
    sql: ${TABLE}.Cliente.ClienteCodigoIntegracionTexto ;;
    view_label: "Cliente"
    label: "Codigo Integracion Texto"
  }

  dimension: cliente_cuit {
    type: string
    sql: ${TABLE}.Cliente.ClienteCUIT ;;
    view_label: "Cliente"
    label: "Cuit"
  }

  dimension: cliente_email {
    type: string
    sql: ${TABLE}.Cliente.ClienteEmail ;;
    view_label: "Cliente"
    label: "Email"
  }

  dimension: cliente_razon_social {
    type: string
    sql: ${TABLE}.Cliente.ClienteRazonSocial ;;
    view_label: "Cliente"
    label: "Razon Social"
  }

  dimension: cliente_segmento1_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento1Nombre ;;
    suggest_dimension: lk_cliente_segmento1.cliente_segmento1_nombre
    view_label: "Cliente"
    label: "Segmento 1 Nombre"
  }

  dimension: cliente_segmento2_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento2Nombre ;;
    suggest_dimension: lk_cliente_segmento2.cliente_segmento2_nombre
    view_label: "Cliente"
    label: "Segmento 2 Nombre"
  }

  dimension: cliente_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteTipoNombre ;;
    view_label: "Cliente"
    label: "Tipo Nombre"
  }

  dimension: cliente_tipo_pago {
    type: string
    sql: ${TABLE}.Cliente.ClienteTipoPago ;;
    view_label: "Cliente"
    label: "Tipo Pago"
  }

  dimension: cuenta_beneficio_prod_adquirido {
    type: string
    sql: ${TABLE}.Cliente.CuentaBeneficioProdAdquirido ;;
    view_label: "Cliente"
    label: "Cuenta Beneficio Prod Adquirido"
  }

  dimension: cuenta_ciclo_facturacion {
    type: string
    sql: ${TABLE}.Cliente.CuentaCicloFacturacion ;;
    view_label: "Cliente"
    label: "Cuenta Ciclo Facturacion"
  }

  dimension: cuenta_cod_promocion_be {
    type: string
    sql: ${TABLE}.Cliente.CuentaCodPromocionBE ;;
    view_label: "Cliente"
    label: "Cuenta Cod Promocion Be"
  }

  dimension: cuenta_cod_promocion_dc {
    type: string
    sql: ${TABLE}.Cliente.CuentaCodPromocionDC ;;
    view_label: "Cliente"
    label: "Cod Promocion Desc Convergente"
    description: "Descripcion del descuento convergente"
  }

  dimension: cuenta_codigo {
    type: string
    sql: ${TABLE}.Cliente.CuentaCodigo ;;
    view_label: "Cliente"
    label: "Cuenta Codigo"
  }

  dimension: cuenta_codigo_origen {
    type: string
    sql: ${TABLE}.Cliente.CuentaCodigoOrigen ;;
    view_label: "Cliente"
    label: "Cuenta Codigo Origen"
  }

  dimension: cuenta_estado_nombre {
    type: string
    sql: ${TABLE}.Cliente.CuentaEstadoNombre ;;
    suggest_dimension: lk_cuenta_estado.cuenta_estado_nombre
    view_label: "Cliente"
    label: "Cuenta Estado Nombre"
  }

  dimension: cuenta_hwacct_code {
    type: string
    sql: ${TABLE}.Cliente.CuentaHWACCT_CODE ;;
    view_label: "Cliente"
    label: "Cuenta HW Acct Code"
  }

  dimension: cuenta_marca_migracion {
    type: string
    sql: ${TABLE}.Cliente.CuentaMarcaMigracion ;;
    view_label: "Cliente"
    label: "Cuenta Marca Migracion"
  }

  dimension: cuenta_metodo_entrega {
    type: string
    sql: CASE
          WHEN ${TABLE}.Cliente.CuentaMetodoEntrega IN ("Factura Física - Braille","Braille Factura Online") THEN "Factura Física - Braille"
          WHEN ${TABLE}.Cliente.CuentaMetodoEntrega IN ("factura Online -Email","Factura Online_email","Factura Online_ Email","Factura Online - Email","Electronic Statements Online","Factura online- Email","FACTURA ONLINE - MAIL","eMail","Factura online- Emai") THEN "Factura Online - Email"
          WHEN ${TABLE}.Cliente.CuentaMetodoEntrega IN ("SMS Factura Online","Factura Online - SMS","Factura Online_SMS","Factura online- SMS") THEN "Factura Online - SMS"
          WHEN ${TABLE}.Cliente.CuentaMetodoEntrega IN ("Papel Factura Fï¿½ca","Paper Billing","Factura Fisica - Papel","Factura Fï¿½ca - Papel","Factura Física","Papel Factura Física","Factura Física - Papel") THEN "Factura Física - Papel"
          WHEN ${TABLE}.Cliente.CuentaMetodoEntrega IS NULL THEN "(no informado)"
          ELSE ${TABLE}.Cliente.CuentaMetodoEntrega
          END ;;
    view_label: "Cliente"
    label: "Cuenta Metodo Entrega"
  }

  dimension: cuenta_riesgo_crediticio {
    type: string
    sql: ${TABLE}.Cliente.CuentaRiesgoCrediticio ;;
    view_label: "Cliente"
    label: "Cuenta Riesgo Crediticio"
  }

  dimension: cuenta_sla {
    type: string
    sql: ${TABLE}.Cliente.CuentaSLA ;;
    view_label: "Cliente"
    label: "Cuenta SLA"
  }

  dimension: cuenta_suscripcion_bd {
    type: string
    sql: ${TABLE}.Cliente.CuentaSuscripcionBD ;;
    view_label: "Cliente"
    label: "Cuenta Suscripcion BD"
  }

  dimension: cuenta_susp_voluntarias_utilizadas {
    type: string
    sql: ${TABLE}.Cliente.CuentaSuspVoluntariasUtilizadas ;;
    view_label: "Cliente"
    label: "Cuenta Susp Voluntarias Utilizadas"
  }

  dimension: cuenta_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.CuentaTipoNombre ;;
    suggest_dimension: lk_cuenta_tipo.cuenta_tipo_nombre
    view_label: "Cliente"
    label: "Cuenta Tipo Nombre"
  }

  dimension: medio_pago_cuenta_bancaria_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.MedioPagoCuentaBancariaTipoNombre ;;
    suggest_dimension: lk_medio_pago_cuenta_bancaria_tipo.medio_pago_cuenta_bancaria_tipo_nombre
    view_label: "Cliente"
    label: "Medio Pago Cuenta Bancaria Tipo Nombre"
  }

  dimension: medio_pago_entidad_financiera_nombre {
    type: string
    sql: ${TABLE}.Cliente.MedioPagoEntidadFinancieraNombre ;;
    suggest_dimension: lk_medio_pago_entidad_financiera.medio_pago_entidad_financiera_nombre
    view_label: "Cliente"
    label: "Medio Pago Entidad Financiera Nombre"
  }

  dimension: medio_pago_nombre {
    type: string
    sql: ${TABLE}.Cliente.MedioPagoNombre ;;
    view_label: "Cliente"
    label: "Medio Pago Nombre"
  }

  dimension: medio_pago_tarjeta_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.MedioPagoTarjetaTipoNombre ;;
    suggest_dimension: lk_medio_pago_tarjeta_tipo.medio_pago_tarjeta_tipo_nombre
    view_label: "Cliente"
    label: "Medio Pago Tarjeta Tipo Nombre"
  }

  dimension: medio_pago_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.MedioPagoTipoNombre ;;
    suggest_dimension: lk_medio_pago_tipo.medio_pago_tipo_nombre
    view_label: "Cliente"
    label: "Medio Pago Tipo Nombre"
  }

  dimension: persona_apellido {
    type: string
    sql: ${TABLE}.Cliente.PersonaApellido ;;
    view_label: "Cliente"
    label: "Persona Apellido"
  }

  dimension: persona_cuilnumero {
    type: string
    sql: ${TABLE}.Cliente.PersonaCUILNumero ;;
    view_label: "Cliente"
    label: "Persona Cuil Numero"
  }

  dimension: persona_documento_numero {
    type: string
    sql: ${TABLE}.Cliente.PersonaDocumentoNumero ;;
    view_label: "Cliente"
    label: "Persona Documento Numero"
  }

  dimension: persona_email {
    type: string
    sql: ${TABLE}.Cliente.PersonaEmail ;;
    view_label: "Cliente"
    label: "Persona Email"
  }

  dimension: persona_genero {
    type: string
    sql: ${TABLE}.Cliente.PersonaGenero ;;
    view_label: "Cliente"
    label: "Persona Genero"
  }

  dimension: persona_nombre {
    type: string
    sql: ${TABLE}.Cliente.PersonaNombre ;;
    view_label: "Cliente"
    label: "Persona Nombre"
  }

  dimension: persona_tipo_documento_nombre {
    type: string
    sql: ${TABLE}.Cliente.PersonaTipoDocumentoNombre ;;
    suggest_dimension: lk_persona_tipo_documento.persona_tipo_documento_nombre
    view_label: "Cliente"
    label: "Persona Tipo Documento Nombre"
  }

  dimension: cuenta_propiedad_srcid {
    type: string
    sql: ${TABLE}.CuentaPropiedadSRCId ;;
    view_label: "Cliente"
    label: "Cuenta Propiedad Id"
  }

  dimension: cuenta_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaSRCId ;;
    view_label: "Cliente"
    label: "Cuenta SRCId"
  }

  dimension: cuenta_cliente_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaClienteSRCId ;;
    view_label: "Cliente"
    label: "Cuenta Cliente SRCId"
  }

  dimension: cuenta_medio_pago_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaMedioPagoSRCId ;;
    view_label: "Cliente"
    label: "Cuenta Medio Pago SRCId"
  }

  dimension: cuenta_padre_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaPadreSRCId ;;
    view_label: "Cliente"
    label: "Cuenta Padre SRCId"
  }

  dimension: cliente_contacto_srcid {
    type: string
    sql: ${TABLE}.Cliente.ClientePersonaContactoSRCId ;;
    view_label: "Cliente"
    label: "Persona Contacto SRCId"
  }

  dimension: cliente_srcid {
    type: string
    sql: ${TABLE}.Cliente.ClienteSRCId ;;
    view_label: "Cliente"
    label: "Cliente SRCId"
  }

  dimension: cliente_persona_srcid {
    type: string
    sql: ${TABLE}.Cliente.PersonaSRCId ;;
    view_label: "Cliente"
    label: "Persona SRCId"
  }

  dimension: cuenta_domicilio_facturacion_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaDomicilioFacturacionSRCId ;;
    view_label: "Cliente"
    label: "Cuenta Domicilio Facturacion SRCId"
  }

  dimension: cuenta_domicilio_envio_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaDomicilioEnvioSRCId ;;
    view_label: "Cliente"
    label: "Cuenta Domicilio Envios SRCId"
  }

  dimension: domicilio_codigo_postal_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioCodigoPostalEnv ;;
    view_label: "Domicilio"
    group_label: "Envio"
    group_item_label: "Codigo Postal"
    label: "Codigo Postal Envio"
  }

  dimension: domicilio_codigo_postal_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioCodigoPostalFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Codigo Postal"
    label: "Codigo Postal Facturacion"
  }

  dimension: domicilio_nombre_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioNombreEnv ;;
    view_label: "Domicilio"
    group_label: "Envio"
    group_item_label: "Nombre"
    label: "Nombre Envio"
  }

  dimension: domicilio_nombre_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioNombreFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Nombre"
    label: "Nombre Facturacion"
  }

  dimension: domicilio_piso_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPisoEnv ;;
    view_label: "Domicilio"
    group_label: "Envio"
    group_item_label: "Piso"
    label: "Piso Envio"
  }

  dimension: domicilio_piso_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPisoFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Piso"
    label: "Piso Facturacion"
  }

  dimension: domicilio_planta_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPlantaEnv ;;
    view_label: "Domicilio"
    group_label: "Envio"
    group_item_label: "Planta"
    label: "Planta Envio"
  }

  dimension: domicilio_planta_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPlantaFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Planta"
    label: "Planta Facturacion"
  }

  dimension: domicilio_puerta_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPuertaEnv ;;
    view_label: "Domicilio"
    group_label: "Envio"
    group_item_label: "Puerta"
    label: "Puerta Envio"
  }

  dimension: domicilio_puerta_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPuertaFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Puerta"
    label: "Puerta Facturacion"
  }

  dimension: domicilio_unidad_habitacional_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioUnidadHabitacionalEnv ;;
    view_label: "Domicilio"
    group_label: "Envio"
    group_item_label: "Unidad Habitacional"
    label: "Unidad Habitacional Envio"
  }

  dimension: domicilio_unidad_habitacional_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioUnidadHabitacionalFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Unidad Habitacional"
    label: "Unidad Habitacional Facturacion"
  }

  dimension: geo_corp_localidad_fact {
    type: string
    sql: ${TABLE}.Domicilio.GeoCorpLocalidadFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Geo Corp Localidad"
    label: "Geo Corp Localidad Facturacion"
  }

  dimension: geo_corp_pais_fact {
    type: string
    sql: ${TABLE}.Domicilio.GeoCorpPaisFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Geo Corp Pais"
    label: "Geo Corp Pais Facturacion"
  }

  dimension: geo_corp_provincia_fact {
    map_layer_name: arg_provinces
    type: string
    sql: ${TABLE}.Domicilio.GeoCorpProvinciaFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Geo Corp Provincia"
    label: "Geo Corp Provincia Facturacion"
  }

  dimension: geo_corp_region_fact {
    type: string
    sql: ${TABLE}.Domicilio.GeoCorpRegionFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Geo Corp Region"
    label: "Geo Corp Region"
  }

  dimension: geo_corp_subregion_fact {
    type: string
    sql: ${TABLE}.Domicilio.GeoCorpSubregionFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Geo Corp Subregion"
    label: "Geo Corp Subregion"
  }

  dimension: nombre_calle_env {
    type: string
    sql: ${TABLE}.Domicilio.NombreCalleEnv ;;
    view_label: "Domicilio"
    group_label: "Envio"
    group_item_label: "Calle"
    label: "Calle Envio"
  }

  dimension: nombre_calle_fact {
    type: string
    sql: ${TABLE}.Domicilio.NombreCalleFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Calle"
    label: "Calle Facturacion"
  }

  dimension: nombre_localidad_env {
    type: string
    sql: ${TABLE}.Domicilio.NombreLocalidadEnv ;;
    view_label: "Domicilio"
    group_label: "Envio"
    group_item_label: "Localidad"
    label: "Localidad Envio"
  }

  dimension: nombre_localidad_fact {
    type: string
    sql: ${TABLE}.Domicilio.NombreLocalidadFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Localidad"
    label: "Localidad Facturacion"
  }

  dimension: nombre_provincia_env {
    map_layer_name: arg_provinces
    type: string
    sql: ${TABLE}.Domicilio.NombreProvinciaEnv ;;
    view_label: "Domicilio"
    group_label: "Envio"
    group_item_label: "Provincia"
    label: "Provincia Envio"
  }

  dimension: nombre_provincia_fact {
    map_layer_name: arg_provinces
    type: string
    sql: ${TABLE}.Domicilio.NombreProvinciaFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Provincia"
    label: "Provincia Facturacion"
  }

  dimension: rango_numeracion_departamento_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionDepartamentoNombre ;;
    suggest_dimension: lk_rango_numeracion_departamento.rango_numeracion_departamento_nombre
    view_label: "Geografia"
    label: "Rango Numeracion Departamento"
  }

  dimension: rango_numeracion_localidad_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionLocalidadNombre ;;
    suggest_dimension: lk_rango_numeracion_localidad.rango_numeracion_localidad_nombre
    view_label: "Geografia"
    label: "Rango Numeracion Localidad"
  }

  dimension: rango_numeracion_provincia_nombre {
    map_layer_name: arg_provinces
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionProvinciaNombre ;;
    suggest_dimension: lk_rango_numeracion_provincia.rango_numeracion_provincia_nombre
    view_label: "Geografia"
    label: "Rango Numeracion Provincia"
  }

  dimension: rango_numeracion_prefijo_interurbano {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionPrefijoInterurbano ;;
    suggest_dimension: lk_rango_numeracion_prefijo_interurbano.rango_numeracion_prefijo_interurbano
    view_label: "Geografia"
    label: "Rango Numeracion Prefijo Interurbano"
  }

  dimension: rango_numeracion_prefijos {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionPrefijos ;;
    suggest_dimension: lk_rango_numeracion_prefijos.rango_numeracion_prefijos
    view_label: "Geografia"
    label: "Rango Numeracion Prefijos"
  }

  dimension: oferta_hwsrcid {
    type: string
    sql: ${TABLE}.OfertaHWSRCId ;;
    view_label: "Producto Adquirido"
    label: "Oferta HW Id"
  }

  dimension: oa_caso_numero {
    type: string
    sql: ${TABLE}.OrdenAlta.CasoNumero ;;
    view_label: "Orden Alta"
    label: "Caso Numero"
  }

  dimension: oa_caso_sub_tipo_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.CasoSubTipoNombre ;;
    suggest_dimension: lk_caso_sub_tipo.caso_sub_tipo_nombre
    view_label: "Orden Alta"
    label: "Caso Subtipo Nombre"
  }

  dimension: oa_caso_tipo_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.CasoTipoNombre ;;
    suggest_dimension: lk_caso_tipo.caso_tipo_nombre
    view_label: "Orden Alta"
    label: "Caso Tipo Nombre"
  }

  dimension: oa_orden_canal_origen_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenCanalOrigenNombre ;;
    suggest_dimension: lk_orden_canal_origen.orden_canal_origen_nombre
    view_label: "Orden Alta"
    label: "Canal Origen Nombre"
  }

  dimension: oa_orden_caso_srcid {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenCasoSRCId ;;
    view_label: "Orden Alta"
    label: "Caso Id"
  }

  dimension: oa_orden_grupo_trabajo_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenGrupoTrabajoNombre ;;
    view_label: "Orden Alta"
    label: "Grupo Trabajo Nombre"
  }

  dimension: oa_orden_item_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemAccionNombre ;;
    suggest_dimension: lk_orden_item_accion.orden_item_accion_nombre
    view_label: "Orden Alta"
    label: "Item Accion Nombre"
  }

  dimension: oa_orden_item_estado_provisionamiento_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemEstadoProvisionamientoNombre ;;
    suggest_dimension: lk_orden_item_estado_provisionamiento.orden_item_estado_provisionamiento_nombre
    view_label: "Orden Alta"
    label: "Item Estado Provisionamiento Nombre"
  }

  dimension: oa_orden_item_numero {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemNumero ;;
    view_label: "Orden Alta"
    label: "Item Numero"
  }

  dimension: oa_punto_venta_SRCId {
    type: string
    sql: ${TABLE}.OrdenAlta.PuntoVentaSRCId ;;
    view_label: "Orden Alta"
    label: "Punto Venta SCRId"
  }

  dimension: oa_orden_item_srcid {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemSRCId ;;
    view_label: "Orden Alta"
    label: "Item Id"
  }

  dimension: oa_orden_item_sub_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemSubAccionNombre ;;
    suggest_dimension: lk_orden_item_sub_accion.orden_item_sub_accion_nombre
    view_label: "Orden Alta"
    label: "Item Subaccion Nombre"
  }

  dimension: oa_orden_metodo_entrega_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenMetodoEntregaNombre ;;
    view_label: "Orden Alta"
    label: "Metodo Entrega Nombre"
  }

  dimension: oa_orden_numero {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenNumero ;;
    view_label: "Orden Alta"
    label: "Numero"
  }

  dimension: oa_orden_srcid {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenSRCId ;;
    view_label: "Orden Alta"
    label: "Orden id"
  }

  dimension: oa_orden_tipo_cambio_plan_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenTipoCambioPlanNombre ;;
    suggest_dimension: lk_orden_tipo_cambio_plan.orden_tipo_cambio_plan_nombre
    view_label: "Orden Alta"
    label: "Tipo Cambio Plan Nombre"
  }

  dimension: oa_orden_tipo_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenTipoGestionNombre ;;
    suggest_dimension: lk_orden_tipo_gestion.orden_tipo_gestion_nombre
    view_label: "Orden Alta"
    label: "Tipo Gestion Nombre"
  }

  dimension: oa_orden_alta__orden_tipo_sub_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenTipoSubGestionNombre ;;
    suggest_dimension: lk_orden_tipo_sub_gestion.orden_tipo_sub_gestion_nombre
    view_label: "Orden Alta"
    label: "Tipo Subgestion Nombre"
  }

  dimension: oa_orden_usuario_creacion_srcid {
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenUsuarioCreacionSRCId ;;
    view_label: "Orden Alta"
    label: "Usuario Creacion Id"
  }

  dimension: oa_usuario_creacion_legajo {
    type: string
    sql: ${TABLE}.OrdenAlta.UsuarioCreacionLegajo ;;
    view_label: "Orden Alta"
    label: "Usuario Creacion Legajo"
  }

  dimension: oa_usuario_creacion_nombre {
    type: string
    sql: ${TABLE}.OrdenAlta.UsuarioCreacionNombre ;;
    view_label: "Orden Alta"
    label: "Usuario Creacion Nombre"
  }

  dimension: ob_caso_estado_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.CasoEstadoNombre ;;
    suggest_dimension: lk_caso_estado.caso_estado_nombre
    view_label: "Orden Baja"
    group_item_label: "Caso Estado Nombre"
  }

  dimension: ob_caso_motivo_baja_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.CasoMotivoBajaNombre ;;
    suggest_dimension: lk_caso_motivo_baja.caso_motivo_baja_nombre
    view_label: "Orden Baja"
    label: "Caso Motivo Baja Nombre"
  }

  dimension: ob_caso_motivo_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.CasoMotivoNombre ;;
    suggest_dimension: lk_caso_motivo.caso_motivo_nombre
    view_label: "Orden Baja"
    group_item_label: "Caso Motivo Nombre"
  }

  dimension: ob_caso_numero {
    type: string
    sql: ${TABLE}.OrdenBaja.CasoNumero ;;
    view_label: "Orden Baja"
    label: "Caso Numero"
  }

  dimension: ob_caso_operadora_receptora_srcid {
    type: string
    sql: ${TABLE}.OrdenBaja.CasoOperadoraReceptoraSRCId ;;
    view_label: "Orden Baja"
    label: "Caso Operadora Receptora Id"
  }

  dimension: ob_caso_sub_motivo_baja_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.CasoSubMotivoBajaNombre ;;
    suggest_dimension: lk_caso_sub_motivo_baja.caso_sub_motivo_baja_nombre
    view_label: "Orden Baja"
    label: "Caso Submotivo Baja Nombre"
  }

  dimension: ob_caso_sub_tipo_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.CasoSubTipoNombre ;;
    suggest_dimension: lk_caso_sub_tipo.caso_sub_tipo_nombre
    view_label: "Orden Baja"
    label: "Caso Sub Tipo Nombre"
  }

  dimension: ob_orden_caso_srcid {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenCasoSRCId ;;
    view_label: "Orden Baja"
    label: "Caso Id"
  }

  dimension: ob_orden_item_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenItemAccionNombre ;;
    suggest_dimension: lk_orden_item_accion.orden_item_accion_nombre
    view_label: "Orden Baja"
    label: "Item Accion Nombre"
  }

  dimension: ob_orden_item_numero {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenItemNumero ;;
    view_label: "Orden Baja"
    label: "Item Numero"
  }

  dimension: ob_orden_item_srcid {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenItemSRCId ;;
    view_label: "Orden Baja"
    label: "Item Id"
  }

  dimension: ob_orden_item_sub_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenItemSubAccionNombre ;;
    suggest_dimension: lk_orden_item_sub_accion.orden_item_sub_accion_nombre
    view_label: "Orden Baja"
    label: "Item Subaccion Nombre"
  }

  dimension: ob_orden_numero {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenNumero ;;
    view_label: "Orden Baja"
    label: "Orden Numero"
  }

  dimension: ob_orden_srcid {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenSRCId ;;
    view_label: "Orden Baja"
    label: "Orden Id"
  }

  dimension: ob_orden_tipo_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenTipoGestionNombre ;;
    suggest_dimension: lk_orden_tipo_gestion.orden_tipo_gestion_nombre
    view_label: "Orden Baja"
    label: "Tipo Gestion Nombre"
  }

  dimension: ob_orden_tipo_sub_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenTipoSubGestionNombre ;;
    suggest_dimension: lk_orden_tipo_sub_gestion.orden_tipo_sub_gestion_nombre
    view_label: "Orden Baja"
    label: "Tipo Subgestion Nombre"
  }

  dimension: pa_producto_codigo {
    type: string
    sql: ${TABLE}.PlanAnterior.ProductoCodigo ;;
    view_label: "Plan Anterior"
    label: "Producto Codigo"
  }

  dimension: pa_producto_nombre {
    type: string
    sql: ${TABLE}.PlanAnterior.ProductoNombre ;;
    view_label: "Plan Anterior"
    group_item_label: "Producto Nombre"
  }

  dimension: pa_producto_srcid {
    type: string
    sql: ${TABLE}.PlanAnterior.ProductoSRCId ;;
    view_label: "Plan Anterior"
    label: "Producto Id"
  }

  dimension: pa_producto_tipo_nombre {
    type: string
    sql: ${TABLE}.PlanAnterior.ProductoTipoNombre ;;
    suggest_dimension: lk_producto_tipo.producto_tipo_nombre
    view_label: "Plan Anterior"
    label: "Producto Tipo Nombre"
  }

  dimension: preact_iccsrcid {
    type: string
    sql: ${TABLE}.Preactivaciones.PreactICCSRCId ;;
    view_label: "Preactivaciones"
    label: "ICC Id"
  }

  dimension: preact_localidad_nombre {
    type: string
    sql: ${TABLE}.Preactivaciones.PreactLocalidadNombre ;;
    view_label: "Preactivaciones"
    label: "Localidad"
  }

  dimension: preact_provincia_nombre {
    type: string
    sql: ${TABLE}.Preactivaciones.PreactProvinciaNombre ;;
    view_label: "Preactivaciones"
    label: "Provincia"
  }

  dimension: preact_punto_venta_descripcion {
    type: string
    sql: ${TABLE}.Preactivaciones.PreactPuntoVentaDescripcion ;;
    view_label: "Preactivaciones"
    label: "Punto Venta Descripcion"
  }

  dimension: preact_punto_venta_srcid {
    type: string
    sql: ${TABLE}.Preactivaciones.PreactPuntoVentaSRCId ;;
    view_label: "Preactivaciones"
    label: "Punto Venta Id"
  }

  dimension: preact_razon_social {
    type: string
    sql: ${TABLE}.Preactivaciones.PreactRazonSocial ;;
    view_label: "Preactivaciones"
    label: "Razon Social"
  }

  dimension: producto_codigo {
    type: string
    sql: ${TABLE}.Producto.ProductoCodigo ;;
    view_label: "Producto"
    label: "Codigo"
  }

  dimension: producto_familia_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoFamiliaNombre ;;
    suggest_dimension: lk_producto_familia.producto_familia_nombre
    view_label: "Producto"
    label: "Familia Nombre"
  }

  dimension: producto_mercado_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoMercadoNombre ;;
    suggest_dimension: lk_producto_mercado.producto_mercado_nombre
    view_label: "Producto"
    label: "Mercado Nombre"
  }

  dimension: producto_nmu {
    type: string
    sql: ${TABLE}.Producto.ProductoNmu ;;
    view_label: "Producto"
    group_item_label: "NMU"
  }

  dimension: producto_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoNombre ;;
    view_label: "Producto"
    label: "Nombre"
  }

  dimension: producto_sistema_origen_codigo {
    type: string
    sql: ${TABLE}.Producto.ProductoSistemaOrigenCodigo ;;
    view_label: "Producto"
    label: "Sistema Origen Codigo"
  }

  dimension: producto_sistema_origen_descripcion {
    type: string
    sql: ${TABLE}.Producto.ProductoSistemaOrigenDescripcion ;;
    view_label: "Producto"
    label: "Sistema Origen Descripcion"
  }

  dimension: producto_sistema_origen_intid {
    type: string
    sql: ${TABLE}.Producto.ProductoSistemaOrigenINTId ;;
    view_label: "Producto"
    label: "Sistema Origen Int Id"
  }

  dimension: producto_sub_tipo_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoSubTipoNombre ;;
    suggest_dimension: lk_producto_sub_tipo.producto_sub_tipo_nombre
    view_label: "Producto"
    label: "Subtipo Nombre"
  }

  dimension: p_producto_tipo_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoTipoNombre ;;
    suggest_dimension: lk_producto_tipo.producto_tipo_nombre
    view_label: "Producto"
    label: "Tipo Nombre"
  }

  dimension: p_producto_familia_srcid {
    type: string
    sql: ${TABLE}.Producto.ProductoFamiliaSRCId ;;
    view_label: "Producto"
    label: "Familia SRCId"
  }

  dimension: p_producto_sub_tipo_srcid {
    type: string
    sql: ${TABLE}.Producto.ProductoSubTipoSRCId ;;
    view_label: "Producto"
    label: "Producto Sub Tipo SRCId"
  }

  dimension: p_producto_tipo_srcid {
    type: string
    sql: ${TABLE}.Producto.ProductoTipoSRCId ;;
    view_label: "Producto"
    label: "Producto Tipo SRCId"
  }

  dimension: p_producto_mercado_srcid {
    type: string
    sql: ${TABLE}.Producto.ProductoMercadoSRCId ;;
    view_label: "Producto"
    label: "Producto Mercado SRCId"
  }

  dimension: producto_accesorio_srcid {
    type: string
    sql: ${TABLE}.ProductoAccesorioSRCId ;;
    view_label: "Producto Adquirido"
    label: "Accesorio Id"
  }

  dimension: producto_adquirido_bundle_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoBundleNombre ;;
    view_label: "Producto Adquirido"
    label: "Bundle Nombre"
  }

  dimension: producto_adquirido_bundle_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoBundleSRCId ;;
    view_label: "Producto Adquirido"
    label: "Bundle Id"
  }

  dimension: producto_adquirido_codigo_raiz {
    type: string
    sql: ${TABLE}.ProductoAdquiridoCodigoRaiz ;;
    view_label: "Producto Adquirido"
    label: "Codigo Raiz"
  }

  dimension: producto_adquirido_codigo_suscripcion {
    type: string
    sql: ${TABLE}.ProductoAdquiridoCodigoSuscripcion ;;
    view_label: "Producto Adquirido"
    label: "Codigo Suscripcion"
  }

  dimension: producto_adquirido_estado_leasing_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoLeasingNombre ;;
    view_label: "Producto Adquirido"
    label: "Estado Leasing Nombre"
  }

  dimension: producto_adquirido_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoNombre ;;
    suggest_dimension: lk_producto_adquirido_estado.producto_adquirido_estado_nombre
    view_label: "Producto Adquirido"
    label: "Estado Nombre"
  }

  dimension: producto_adquirido_estado_provisionamiento_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoProvisionamientoNombre ;;
    suggest_dimension: lk_orden_item_estado_provisionamiento.orden_item_estado_provisionamiento_nombre
    view_label: "Producto Adquirido"
    label: "Estado Provisionamiento Nombre"
  }

  dimension: producto_adquirido_estado_red_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoRedNombre ;;
    suggest_dimension: lk_producto_adquirido_estado_red.producto_adquirido_estado_red_nombre
    view_label: "Producto Adquirido"
    label: "Estado Red Nombre"
  }

  dimension: producto_adquirido_familia_producto {
    type: string
    sql: ${TABLE}.ProductoAdquiridoFamiliaProducto ;;
    view_label: "Producto Adquirido"
    label: "Familia Producto"
  }

  dimension: producto_adquirido_garantia_invalida {
    type: string
    sql: ${TABLE}.ProductoAdquiridoGarantiaInvalida ;;
    view_label: "Producto Adquirido"
    label: "Garantia Invalida"
  }

  dimension: producto_adquirido_iccid_plan {
    type: string
    sql: ${TABLE}.ProductoAdquiridoICCID_Plan ;;
    view_label: "Producto Adquirido"
    label: "ICCID Plan"
  }

  dimension: producto_adquirido_iccidsrcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoICCIDSRCId ;;
    view_label: "Producto Adquirido"
    label: "ICCID SRCId"
  }

  dimension: producto_adquirido_imei {
    type: string
    sql: ${TABLE}.ProductoAdquiridoIMEI ;;
    view_label: "Producto Adquirido"
    label: "IMEI"
  }

  dimension: producto_adquirido_instancia_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoInstanciaSRCId ;;
    view_label: "Producto Adquirido"
    label: "Instancia SRCId"
  }

  dimension: producto_adquirido_marca_migrado {
    type: string
    sql: ${TABLE}.ProductoAdquiridoMarcaMigrado ;;
    view_label: "Producto Adquirido"
    label: "Marca Migrado"
  }

  dimension: producto_adquirido_motivo_alta {
    type: string
    sql: ${TABLE}.ProductoAdquiridoMotivoAlta ;;
    view_label: "Producto Adquirido"
    label: "Motivo Alta"
  }

  dimension: producto_adquirido_motivo_baja {
    type: string
    sql: ${TABLE}.ProductoAdquiridoMotivoBaja ;;
    view_label: "Producto Adquirido"
    label: "Motivo Baja"
  }

  dimension: producto_adquirido_nivel_jerarquia {
    type: string
    sql: ${TABLE}.ProductoAdquiridoNivelJerarquia ;;
    view_label: "Producto Adquirido"
    label: "Nivel Jerarquia"
  }

  dimension: producto_adquirido_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoNombre ;;
    view_label: "Producto Adquirido"
    label: "Nombre"
  }

  dimension: producto_adquirido_numero_linea {
    type: string
    sql: ${TABLE}.ProductoAdquiridoNumeroLinea ;;
    view_label: "Producto Adquirido"
    label: "Numero Linea"
  }

  dimension: producto_adquirido_numero_linea_toip {
    type: string
    sql: ${TABLE}.ProductoAdquiridoNumeroLineaTOIP ;;
    view_label: "Producto Adquirido"
    label: "Numero Linea TOIP"
  }

  dimension: producto_adquirido_numero_serie {
    type: string
    sql: ${TABLE}.ProductoAdquiridoNumeroSerie ;;
    view_label: "Producto Adquirido"
    label: "Numero Serie"
  }

  dimension: producto_adquirido_producto_codigo {
    type: string
    sql: ${TABLE}.ProductoAdquiridoProductoCodigo ;;
    view_label: "Producto Adquirido"
    label: "Producto Codigo"
  }

  dimension: producto_adquirido_recurso_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoRecursoSRCId ;;
    view_label: "Producto Adquirido"
    label: "Recurso Id"
  }

  dimension: producto_adquirido_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoSRCId ;;
    view_label: "Producto Adquirido"
    label: "Id"
  }

  dimension: producto_adquirido_sub_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoSubEstadoNombre ;;
    suggest_dimension: lk_producto_adquirido_sub_estado.producto_adquirido_sub_estado_nombre
    view_label: "Producto Adquirido"
    label: "Subestado Nombre"
  }

  dimension: producto_adquirido_sub_motivo_alta {
    type: string
    sql: ${TABLE}.ProductoAdquiridoSubMotivoAlta ;;
    view_label: "Producto Adquirido"
    label: "Submotivo Alta"
  }

  dimension: producto_adquirido_sub_motivo_baja {
    type: string
    sql: ${TABLE}.ProductoAdquiridoSubMotivoBaja ;;
    view_label: "Producto Adquirido"
    label: "Submotivo Baja"
  }

  dimension: producto_adquirido_tipo {
    type: string
    sql: ${TABLE}.ProductoAdquiridoTipo ;;
    view_label: "Producto Adquirido"
    label: "Tipo"
  }

  dimension: cuenta_facturacion_srcid {
    type: string
    sql: ${TABLE}.CuentaFacturacionSRCId ;;
    view_label: "Producto Adquirido"
    label: "Cuenta Facturacion SRCID"
  }

  dimension: producto_adquirido_estado_leasing_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoLeasingSRCId ;;
    view_label: "Producto Adquirido"
    label: "Estado Leasing SRCId"
  }

  dimension: producto_adquirido_padre_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoPadreSRCId ;;
    view_label: "Producto Adquirido"
    label: "Padre SRCId"
  }

  dimension: producto_adquirido_codigo_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoCodigoSRCId ;;
    view_label: "Producto Adquirido"
    label: "Codigo SRCId"
  }

  dimension: producto_adquirido_cuenta_servicio_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoCuentaServicioSRCId ;;
    view_label: "Producto Adquirido"
    label: "Cuenta Servicio SRCId"
  }

  dimension: producto_adquirido_referente_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoReferenteSRCId ;;
    view_label: "Producto Adquirido"
    label: "Referente SRCId"
  }

  dimension: producto_adquirido_leasing_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoLeasingSRCId ;;
    view_label: "Producto Adquirido"
    label: "Leasing SRCId"
  }

  dimension: producto_adquirido_orden_item_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoOrdenItemSRCId ;;
    view_label: "Producto Adquirido"
    label: "Orden Item"
  }

  dimension: producto_adquirido_usuario_creacion_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoUsuarioCreacionSRCId ;;
    view_label: "Producto Adquirido"
    group_label: "Usuario"
    group_item_label: "Creacion Id"
    label: "Usuario Creacion Id"
  }

  dimension: producto_adquirido_usuario_modificacion_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoUsuarioModificacionSRCId ;;
    view_label: "Producto Adquirido"
    group_label: "Usuario"
    group_item_label: "Modificacion Id"
    label: "Usuario Modificacion Id"
  }

  dimension: producto_srcid {
    type: string
    sql: ${TABLE}.ProductoSRCId ;;
    view_label: "Producto Adquirido"
    label: "Producto Id"
  }

  dimension: punto_venta_canal3 {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanal3 ;;
    view_label: "Punto Venta"
    label: "Canal 3"
  }

  dimension: punto_venta_canal_srcid {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanalSRCId ;;
    view_label: "Punto Venta"
    label: "Canal SRCId"
  }

  dimension: punto_venta_canal_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanalNombre ;;
    view_label: "Punto Venta"
    label: "Canal Nombre"
  }

  dimension: punto_venta_canalidad2_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanalidad2Nombre ;;
    suggest_dimension: lk_punto_venta_canalidad2.punto_venta_canalidad2_nombre
    view_label: "Punto Venta"
    label: "Canalidad 2 Nombre"
  }

  dimension: punto_venta_descripcion {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaDescripcion ;;
    view_label: "Punto Venta"
    label: "Descripcion"
  }

  dimension: punto_venta_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaNombre ;;
    view_label: "Punto Venta"
    label: "Nombre"
  }

  dimension: punto_venta_provincia {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaProvincia ;;
    view_label: "Punto Venta"
    label: "Provincia"
  }

  dimension: punto_venta_region {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaRegion ;;
    view_label: "Punto Venta"
    label: "Region"
  }

  dimension: punto_venta_subregion {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaSubregion ;;
    view_label: "Punto Venta"
    label: "Subregion"
  }

  dimension: punto_venta_tipo_canal_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoCanalNombre ;;
    suggest_dimension: lk_punto_venta_tipo_canal.punto_venta_tipo_canal_nombre
    view_label: "Punto Venta"
    label: "Tipo Canal Nombre"
  }

  dimension: punto_venta_tipo_contacto_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoContactoNombre ;;
    suggest_dimension: lk_punto_venta_tipo_contacto.punto_venta_tipo_contacto_nombre
    view_label: "Punto Venta"
    label: "Tipo Contacto Nombre"
  }

  dimension: motivo_suspension1 {
    type: string
    sql: ${TABLE}.Suspensiones.MotivoSuspension1Nombre ;;
    suggest_dimension: lk_suspensiones_tipo_estado.suspensiones_tipo_estado_nombre
    view_label: "Suspensiones"
    label: "Primer Motivo Suspension"
  }

  dimension: motivo_suspension_ultima {
    type: string
    sql: ${TABLE}.Suspensiones.MotivoSuspensionUltimaNombre ;;
    suggest_dimension: lk_suspensiones_tipo_estado_ult.suspensiones_tipo_estado_nombre
    view_label: "Suspensiones"
    label: "Ultimo Motivo Suspension"
  }

  dimension: suspensiones_producto_adquirido_srcid {
    type: string
    sql: ${TABLE}.Suspensiones.SuspensionesProductoAdquiridoSRCId ;;
    view_label: "Suspensiones"
    label: "Producto Adquirido Id"
  }

  ## Numbers

  dimension: cuenta_codigo_facturacion {
    type: number
    sql: ${TABLE}.Cliente.CuentaCodigoFacturacion ;;
    view_label: "Cliente"
    label: "Cuenta Codigo Facturacion"
  }

  dimension: cuenta_hwacct_id {
    type: number
    sql: ${TABLE}.Cliente.CuentaHWAcct_Id ;;
    view_label: "Cliente"
    label: "Cuenta HW Acct Id"
  }

  dimension: cuenta_hwcust_id {
    type: number
    sql: ${TABLE}.Cliente.CuentaHWCUST_ID ;;
    view_label: "Cliente"
    label: "Cuenta HW Cust Id"
  }

  dimension: persona_codigo_integracion {
    type: number
    sql: ${TABLE}.Cliente.PersonaCodigoIntegracion ;;
    view_label: "Cliente"
    label: "Persona Codigo Integracion"
  }

  dimension: persona_edad {
    type: number
    sql: ${TABLE}.Cliente.PersonaEdad ;;
    view_label: "Cliente"
    label: "Persona Edad"
  }

  dimension: domicilio_codigo_postal_comercial_fact {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioCodigoPostalComercialFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Codigo Postal Comercial"
    label: "Codigo Postal Comercial Facturacion"
  }

  dimension: domicilio_latitud_env {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioLatitudEnv ;;
    view_label: "Domicilio"
    group_label: "Envio"
    label: "Latitud Envio"
  }

  dimension: domicilio_latitud_fact {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioLatitudFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Latitud"
    label: "Latitud Facturacion"
  }

  dimension: domicilio_longitud_env {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioLongitudEnv ;;
    view_label: "Domicilio"
    group_label: "Envio"
    group_item_label: "Longitud"
    label: "Longitud Envio"
  }

  dimension: domicilio_longitud_fact {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioLongitudFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    label: "Longitud Facturacion"
  }

  dimension: geo_corp_codigo_postal_fact {
    type: number
    sql: ${TABLE}.Domicilio.GeoCorpCodigoPostalFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Geo Corp Codigo Postal"
    label: "Geo Corp Codigo Postal Facturacion"
  }

  dimension: oa_orden_item_precio_calculado_recurrente {
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenItemPrecioCalculadoRecurrente ;;
    view_label: "Orden Alta"
    label: "Orden Item Precio Calculado Recurrente"
  }

  dimension: pa_orden_item_cargo_recurrente {
    type: number
    sql: ${TABLE}.PlanAnterior.OrdenItemCargoRecurrente ;;
    view_label: "Plan Anterior"
    label: "Orden Item Cargo Recurrente"
  }

  dimension: pa_orden_item_precio_calculado_recurrente {
    type: number
    sql: ${TABLE}.PlanAnterior.OrdenItemPrecioCalculadoRecurrente ;;
    view_label: "Plan Anterior"
    group_item_label: "Orden Item Precio Calculado Recurrente"
  }

  dimension: producto_adquirido_cant_unidades {
    type: number
    sql: ${TABLE}.ProductoAdquiridoCantUnidades ;;
    view_label: "Producto Adquirido"
    label: "Cantidad de Unidades"
  }

  dimension: producto_adquirido_precio {
    type: number
    sql: ${TABLE}.ProductoAdquiridoPrecio ;;
    view_label: "Producto Adquirido"
    label: "Precio"
  }

  dimension: recarga_recharge_amt_pri_rec {
    type: number
    sql: ${TABLE}.Recarga.RecargaRECHARGE_AMT_Pri_Rec ;;
    view_label: "Recarga"
    label: "Monto Primera Recarga"
  }

  dimension: recarga_recharge_amt_ult_rec {
    type: number
    sql: ${TABLE}.Recarga.RecargaRECHARGE_AMT_Ult_Rec ;;
    view_label: "Recarga"
    label: "Monto Ultima Recarga"
  }

  dimension: recarga_recharge_log_id_pri_rec {
    type: number
    sql: ${TABLE}.Recarga.RecargaRECHARGE_LOG_ID_Pri_Rec ;;
    value_format_name: id
    view_label: "Recarga"
    label: "Log Id Primera Recarga"
  }

  dimension: recarga_recharge_log_id_ult_rec {
    type: number
    sql: ${TABLE}.Recarga.RecargaRECHARGE_LOG_ID_Ult_Rec ;;
    value_format_name: id
    view_label: "Recarga"
    label: "Log Id Ultima Recarga"
  }

  dimension: domicilio_numero_env {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioNumeroEnv ;;
    view_label: "Domicilio"
    group_label: "Envio"
    label: "Numero Envio"
  }

  dimension: domicilio_numero_fact {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioNumeroFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Numero"
    label: "Numero Facturacion"
  }

  dimension: oa_orden_item_cargo_recurrente {
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenItemCargoRecurrente ;;
    view_label: "Orden Alta"
    label: "Orden Item Cargo Recurrente"
  }

  dimension: cantidad_suspensiones_activas {
    type: number
    sql: ${TABLE}.Suspensiones.CantidadSuspensionesActivas ;;
    view_label: "Suspensiones"
    label: "Cantidad Suspensiones Activas"
  }

  ## Flags

  dimension: cuenta_domicilio_envio_validado {
    type: yesno
    sql: ${TABLE}.Cliente.CuentaDomicilioEnvioValidado ;;
    view_label: "Cliente"
    group_label: "Marcas"
    label: "Es Envio Validado"
  }

  dimension: cuenta_domicilio_facturacion_validado {
    type: yesno
    sql: ${TABLE}.Cliente.CuentaDomicilioFacturacionValidado ;;
    view_label: "Cliente"
    group_label: "Marcas"
    label: "Es Domicilio Facturacion Validado"
  }

  dimension: cliente_marca_activo {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.ClienteMarcaActivo ;;
    view_label: "Cliente"
    group_label: "Marcas"
    label: "Es Cliente Activo"
  }

  dimension: cliente_marca_jubilado {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.ClienteMarcaJubilado ;;
    view_label: "Cliente"
    group_label: "Marcas"
    label: "Es Jubilado"
  }

  dimension: cliente_marca_vip {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.ClienteMarcaVIP ;;
    view_label: "Cliente"
    group_label: "Marcas"
    label: "Es Vip"
  }

  dimension: cliente_restriccion_comercial {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.ClienteRestriccionComercial ;;
    view_label: "Cliente"
    group_label: "Marcas"
    label: "Es Restriccion Comercial"
    description: "Marca cliente con proteccion personal activa y deuda"
  }

  dimension: cuenta_marca_debito {
    type: yesno
    sql: ${cuenta_medio_pago_srcid} != "-1" ;;
    view_label: "Cliente"
    group_label: "Marcas"
    label: "Es Debito"
  }

  dimension: cuenta_marca_no_nominado {
    type: yesno
    sql: ${TABLE}.Cliente.Marcas.CuentaMarcaNoNominado ;;
    view_label: "Cliente"
    group_label: "Marcas"
    label: "Es No Nominado"
  }

  dimension: persona_marca_no_llamar {
    type: yesno
    sql: ${TABLE}.Cliente.PersonaMarcaNoLlamar ;;
    view_label: "Cliente"
    group_label: "Marcas"
    label: "Es No Llamar"
  }

  dimension: producto_adquirido_marca_destruccion_total {
    type: yesno
    sql: ${TABLE}.Marcas.ProductoAdquiridoMarcaDestruccionTotal ;;
    view_label: "Producto Adquirido"
    group_label: "Marcas"
    label: "Es Destruccion Total"
  }

  dimension: producto_adquirido_marca_leasing {
    type: yesno
    sql: ${TABLE}.Marcas.ProductoAdquiridoMarcaLeasing ;;
    view_label: "Producto Adquirido"
    group_label: "Marcas"
    label: "Es Leasing"
  }

  dimension: producto_adquirido_marca_parque_activo {
    type: yesno
    sql: ${TABLE}.Marcas.ProductoAdquiridoMarcaParqueActivo ;;
    view_label: "Producto Adquirido"
    group_label: "Marcas"
    label: "Es Parque Activo"
  }

  dimension: producto_adquirido_marca_restriccion_comercial {
    type: yesno
    sql: ${TABLE}.Marcas.ProductoAdquiridoRestriccionComercial ;;
    view_label: "Producto Adquirido"
    group_label: "Marcas"
    label: "Es Restriccion Comercial"
    description: "Marca producto con proteccion personal activa y deuda"
  }

  dimension: producto_adquirido_marca_pertenece_bundle {
    type: yesno
    sql: ${TABLE}.Marcas.ProductoAdquiridoMarcaPerteneceBundle ;;
    view_label: "Producto Adquirido"
    group_label: "Marcas"
    label: "Es Pertenece Bundle"
  }

  dimension: producto_adquirido_marca_principal {
    type: yesno
    sql: ${TABLE}.Marcas.ProductoAdquiridoMarcaPrincipal ;;
    view_label: "Producto Adquirido"
    group_label: "Marcas"
    label: "Es Principal"
  }

  dimension: producto_adquirido_marca_producto_competencia {
    type: yesno
    sql: ${TABLE}.Marcas.ProductoAdquiridoMarcaProductoCompetencia ;;
    view_label: "Producto Adquirido"
    group_label: "Marcas"
    label: "Es Producto Competencia"
  }
  dimension: oa_orden_marca_cambio_mercado {
    type: yesno
    sql: ${TABLE}.OrdenAlta.OrdenMarcaCambioMercado ;;
    view_label: "Orden Alta"
    group_label: "Marcas"
    label: "Es Cambio Mercado"
  }

  dimension: oa_orden_marca_cambio_producto {
    type: yesno
    sql: ${TABLE}.OrdenAlta.OrdenMarcaCambioProducto ;;
    view_label: "Orden Alta"
    group_label: "Marcas"
    label: "Es Cambio Producto"
  }

  dimension: producto_marca_tangible {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaTangible ;;
    view_label: "Producto"
    group_label: "Marcas"
    label: "Es Tangible"
  }

  ## Location

  dimension: domicilio_env_location {
    type: location
    sql_latitude: ${domicilio_latitud_env} ;;
    sql_longitude: ${domicilio_longitud_env} ;;
    view_label: "Domicilio"
    group_label: "Envio"
    group_item_label: "Ubicacion"
    label: "Ubicacion Envio"
  }

  dimension: domicilio_fact_location {
    type: location
    sql_latitude: ${domicilio_latitud_fact} ;;
    sql_longitude: ${domicilio_longitud_fact} ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Ubicacion"
    label: "Ubicacion Facturacion"
  }

  ## Hidden

  dimension: cliente_segmento1_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.ClienteSegmento1SK ;;
  }

  dimension: cliente_segmento1_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento1SRCId ;;
  }

  dimension: cliente_segmento2_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.ClienteSegmento2SK ;;
  }

  dimension: cliente_segmento2_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento2SRCId ;;
  }

  dimension: cliente_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.ClienteTipoSK ;;
  }

  dimension: cliente_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.ClienteTipoSRCId ;;
  }

  dimension: cuenta_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.CuentaEstadoSK ;;
  }

  dimension: cuenta_estado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.CuentaEstadoSRCId ;;
  }

  dimension: medio_pago_cuenta_bancaria_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.MedioPagoCuentaBancariaTipoSK ;;
  }

  dimension: medio_pago_cuenta_bancaria_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.MedioPagoCuentaBancariaTipoSRCId ;;
  }

  dimension: medio_pago_entidad_financiera_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.MedioPagoEntidadFinancieraSK ;;
  }

  dimension: medio_pago_entidad_financiera_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.MedioPagoEntidadFinancieraSRCId ;;
  }

  dimension: medio_pago_tarjeta_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.MedioPagoTarjetaTipoSK ;;
  }

  dimension: medio_pago_tarjeta_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.MedioPagoTarjetaTipoSRCId ;;
  }

  dimension: medio_pago_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.MedioPagoTipoSK ;;
  }

  dimension: medio_pago_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.MedioPagoTipoSRCId ;;
  }

  dimension: persona_tipo_documento_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.PersonaTipoDocumentoSK ;;
  }

  dimension: persona_tipo_documento_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.PersonaTipoDocumentoSRCId ;;
  }

  dimension: oa_caso_sub_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.CasoSubTipoSK ;;
  }

  dimension: oa_caso_sub_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenAlta.CasoSubTipoSRCId ;;
  }

  dimension: oa_caso_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.CasoTipoSK ;;
  }

  dimension: oa_caso_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenAlta.CasoTipoSRCId ;;
  }

  dimension: oa_orden_canal_origen_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenCanalOrigenSK ;;
  }

  dimension: oa__orden_canal_origen_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenCanalOrigenSRCId ;;
  }

  dimension: oa_orden_item_accion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenItemAccionSK ;;
  }

  dimension: oa_orden_item_accion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemAccionSRCId ;;
  }

  dimension: oa_orden_item_estado_provisionamiento_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenItemEstadoProvisionamientoSK ;;
  }

  dimension: oa_orden_item_estado_provisionamiento_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemEstadoProvisionamientoSRCId ;;
  }

  dimension: oa_orden_item_sub_accion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenItemSubAccionSK ;;
  }

  dimension: oa_orden_item_sub_accion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenItemSubAccionSRCId ;;
  }

  dimension: oa_orden_tipo_cambio_plan_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenTipoCambioPlanSK ;;
  }

  dimension: oa_orden_tipo_cambio_plan_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenTipoCambioPlanSRCId ;;
  }

  dimension: oa_orden_tipo_gestion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenTipoGestionSK ;;
  }

  dimension: oa_orden_tipo_gestion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenTipoGestionSRCId ;;
  }

  dimension: oa_orden_tipo_sub_gestion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenAlta.OrdenTipoSubGestionSK ;;
  }

  dimension: oa_orden_tipo_sub_gestion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenAlta.OrdenTipoSubGestionSRCId ;;
  }

  dimension: ob_caso_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.CasoEstadoSK ;;
  }

  dimension: ob_caso_estado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenBaja.CasoEstadoSRCId ;;
  }

  dimension: ob_caso_motivo_baja_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.CasoMotivoBajaSK ;;
  }

  dimension: ob_caso_motivo_baja_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenBaja.CasoMotivoBajaSRCId ;;
  }

  dimension: ob_caso_motivo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.CasoMotivoSK ;;
  }

  dimension: ob__caso_motivo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenBaja.CasoMotivoSRCId ;;
  }

  dimension: ob_caso_sub_motivo_baja_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.CasoSubMotivoBajaSK ;;
  }

  dimension: ob_caso_sub_motivo_baja_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenBaja.CasoSubMotivoBajaSRCId ;;
  }

  dimension: ob_caso_sub_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.CasoSubTipoSK ;;
  }

  dimension: ob_caso_sub_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenBaja.CasoSubTipoSRCId ;;
  }

  dimension: ob_orden_item_accion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.OrdenItemAccionSK ;;
  }

  dimension: ob_orden_item_accion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenItemAccionSRCId ;;
  }

  dimension: ob_orden_item_sub_accion_sk_ {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.OrdenItemSubAccionSK ;;
  }

  dimension: ob_orden_item_sub_accion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenItemSubAccionSRCId ;;
  }

  dimension: ob__orden_tipo_gestion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.OrdenTipoGestionSK ;;
  }

  dimension: ob_orden_tipo_gestion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenTipoGestionSRCId ;;
  }

  dimension: ob_orden_tipo_sub_gestion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenBaja.OrdenTipoSubGestionSK ;;
  }

  dimension: ob_orden_tipo_sub_gestion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenBaja.OrdenTipoSubGestionSRCId ;;
  }

  dimension: pa_producto_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PlanAnterior.ProductoTipoSK ;;
  }

  dimension: pa_producto_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.PlanAnterior.ProductoTipoSRCId ;;
  }

  dimension: producto_familia_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto.ProductoFamiliaSK ;;
  }

  dimension: producto_familia_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Producto.ProductoFamiliaSRCId ;;
  }

  dimension: producto_mercado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto.ProductoMercadoSK ;;
  }

  dimension: producto_mercado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Producto.ProductoMercadoSRCId ;;
  }

  dimension: producto_sub_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto.ProductoSubTipoSK ;;
  }

  dimension: producto_sub_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Producto.ProductoSubTipoSRCId ;;
  }

  dimension: producto_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto.ProductoTipoSK ;;
  }

  dimension: producto_tipo_srcid {
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

  dimension: punto_venta_canalidad2_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanalidad2SK ;;
  }

  dimension: punto_venta_canalidad2_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanalidad2SRCId ;;
  }

  dimension: punto_venta_tipo_canal_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoCanalSK ;;
  }

  dimension: punto_venta_tipo_canal_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoCanalSRCId ;;
  }

  dimension: punto_venta_tipo_contacto_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoContactoSK ;;
  }

  dimension: punto_venta_tipo_contacto_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoContactoSRCId ;;
  }

  dimension: cuenta_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.CuentaTIpoSK ;;
  }

  dimension: motivo_suspension1_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Suspensiones.MotivoSuspension1SRCId ;;
  }

  dimension: motivo_suspension1_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Suspensiones.MotivoSuspension1SK ;;
  }

  dimension: motivo_suspension_ult_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Suspensiones.MotivoSuspensionUltimaSRCId ;;
  }

  dimension: motivo_suspension_ult_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Suspensiones.MotivoSuspensionUltimaSK ;;
  }

  dimension: cuenta_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.CuentaTipoSRCId ;;
  }

  dimension: m_producto_adquirido_precio {
    hidden: yes
    type: number
    sql: ${TABLE}.Metricas.ProductoAdquiridoPrecio ;;
  }

  dimension: m_precio_recurrente_sin_impuesto {
    hidden: yes
    type: number
    sql: ${TABLE}.Metricas.PrecioRecurrenteSinImpuesto ;;
  }

  dimension: m_cargo_recurrente_sin_impuesto {
    hidden: yes
    type: number
    sql: ${TABLE}.Metricas.CargoRecurrenteSinImpuesto  ;;
  }

  dimension: rango_numeracion_provincia_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionProvinciaSRCId ;;
  }

  dimension: rango_numeracion_departamento_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionDepartamentoSRCId ;;
  }

  dimension: rango_numeracion_localidad_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionLocalidadSRCId ;;
  }

  dimension: producto_adquirido_total_tv {
    hidden: yes
    type: number
    sql: ${TABLE}.Metricas.ProductoAdquiridoTotalTV ;;
  }

  dimension: producto_adquirido_total_internet {
    hidden: yes
    type: number
    sql: ${TABLE}.Metricas.ProductoAdquiridoTotalInternet ;;
  }

  dimension: producto_adquirido_combo_internet_tv {
    hidden: yes
    type: number
    sql: ${TABLE}.Metricas.ProductoAdquiridoComboInternetTV ;;
  }

  dimension: producto_adquirido_combo_internet_flow_flex {
    hidden: yes
    type: number
    sql: ${TABLE}.Metricas.ProductoAdquiridoComboInternetFlowFlex ;;
  }

  dimension: producto_adquirido_smart_tv {
    hidden: yes
    type: number
    sql: ${TABLE}.Metricas.ProductoAdquiridoSmartTV ;;
  }

  dimension: cuenta_monto_desc_convergente {
    hidden: yes
    type: number
    sql: ${TABLE}.Metricas.CuentaMontoDescConvergente ;;
  }

  dimension: producto_adquirido_solo_internet {
    hidden: yes
    type: number
    sql: ${TABLE}.Metricas.ProductoAdquiridoSoloInternet ;;
  }

  dimension: producto_adquirido_volte {
    hidden: yes
    type: number
    sql: ${TABLE}.Metricas.ProductoAdquiridoVolte ;;
  }

  dimension: producto_adquirido_boca_adicional_tv {
    hidden: yes
    type: number
    sql: ${TABLE}.Metricas.ProductoAdquiridoBocaAdicionalTV ;;
  }



## Measures
  measure: count_parque {
    type: count
    label: "Cantidad Productos"
  }

  measure: count_productos_activos_hibridos {
    type: count
    group_label: "Productos"
    group_item_label: "Mixto"
    label: "Productos Mixtos"
    description: "Negocio movil / Cuenta productos plan Mixto (hibrido)
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , producto_adquirido_familia_producto: 'MOVIL'
      , p_producto_tipo_nombre: 'PLAN HIBRIDO'"
    filters: [
        producto_adquirido_marca_parque_activo: "Yes"
      , producto_adquirido_marca_principal: "Yes"
      , producto_adquirido_familia_producto: "MOVIL"
      , p_producto_tipo_nombre: "PLAN HIBRIDO"
    ]
  }

  measure: count_productos_activos_pospagos {
    type: count
    group_label: "Productos"
    group_item_label: "Pospagos"
    label: "Productos Pospagos"
    description: "Negocio movil / Cuenta productos plan pospago
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , producto_adquirido_familia_producto: 'MOVIL'
      , p_producto_tipo_nombre: 'PLAN POSPAGO'"
    filters: [
        producto_adquirido_marca_parque_activo: "Yes"
      , producto_adquirido_marca_principal: "Yes"
      , producto_adquirido_familia_producto: "MOVIL"
      , p_producto_tipo_nombre: "PLAN POSPAGO"
    ]
  }

  measure: count_productos_activos_prepagos {
    type: count
    group_label: "Productos"
    group_item_label: "Prepagos"
    label: "Productos Prepagos"
    description: "Negocio movil / Cuenta productos plan prepago
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , producto_adquirido_familia_producto: 'MOVIL'
      , p_producto_tipo_nombre: 'PLAN PREPAGO'"
    filters: [
        producto_adquirido_marca_parque_activo: "Yes"
      , producto_adquirido_marca_principal: "Yes"
      , producto_adquirido_familia_producto: "MOVIL"
      , p_producto_tipo_nombre: "PLAN PREPAGO"
    ]
  }

  measure: count_productos_bundle {
    type: count
    group_label: "Productos"
    group_item_label: "Bundle"
    label: "Productos Bundle"
    description: "Negocio fija / Cuenta productos bundle principal
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , producto_adquirido_familia_producto: 'FIJA'
      , p_producto_tipo_nombre: 'BUNDLE'"
    filters: [
        producto_adquirido_marca_parque_activo: "Yes"
      , producto_adquirido_marca_principal: "Yes"
      , producto_adquirido_familia_producto: "FIJA"
      , p_producto_tipo_nombre: "BUNDLE"
    ]
  }

  measure: count_productos_flow_flex {
    type: count
    group_label: "Productos"
    group_item_label: "Flow Flex"
    label: "Productos Flow Flex"
    description: "Negocio fija / Cuenta productos prepagos Flow Flex
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'No'
      , producto_adquirido_familia_producto: 'FIJA'
      , p_producto_tipo_nombre: 'TV'
      , producto_adquirido_nombre: 'Flow Flex'"
    filters: [
        producto_adquirido_marca_parque_activo: "Yes"
      , producto_adquirido_marca_principal: "No"
      , producto_adquirido_familia_producto: "FIJA"
      , p_producto_tipo_nombre: "TV"
      , producto_adquirido_nombre: "Flow Flex"
    ]
  }

  measure: count_productos_tv_flow_box {
    type: count
    group_label: "Productos"
    group_item_label: "Solo TV Flow Box"
    label: "Productos Solo TV FLow Box"
    description: "Negocio fija / Cuenta Productos de TV Flow Box
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , producto_adquirido_familia_producto: 'FIJA'
      , p_producto_tipo_nombre: 'TV'
      , producto_sub_tipo_nombre: 'FLOW BOX'"
    filters: [
        producto_adquirido_marca_parque_activo: "Yes"
      , producto_adquirido_marca_principal: "Yes"
      , producto_adquirido_familia_producto: "FIJA"
      , p_producto_tipo_nombre: "TV"
      , producto_sub_tipo_nombre: "FLOW BOX"
      , producto_adquirido_marca_pertenece_bundle: "No"
    ]
  }

  measure: count_productos_tv {
    type: count
    group_label: "Productos"
    group_item_label: "Solo TV Clasica"
    label: "Productos Solo TV Clasica"
    description: "Negocio fijo / Cuenta producto TV clasico
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , producto_adquirido_familia_producto: 'FIJA'
      , p_producto_tipo_nombre: 'TV'
      , producto_sub_tipo_nombre: 'TV CLASICA'
      , producto_adquirido_marca_pertenece_bundle: 'No'"
    filters: [
        producto_adquirido_marca_parque_activo: "Yes"
      , producto_adquirido_marca_principal: "Yes"
      , producto_adquirido_familia_producto: "FIJA"
      , p_producto_tipo_nombre: "TV"
      , producto_sub_tipo_nombre: "TV CLASICA"
      , producto_adquirido_marca_pertenece_bundle: "No"
    ]
  }

  measure: count_productos_telefonia_toip {
    type: count
    group_label: "Productos"
    group_item_label: "Telefonia TOIP"
    label: "Productos Telefonia TOIP"
    description: "Negocio fija / Cuenta Productos de Telefonia (TOIP)
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , producto_adquirido_familia_producto: 'FIJA'
      , p_producto_tipo_nombre: 'TELEFONIA'
      , producto_sub_tipo_nombre: 'TOIP'"
    filters: [
        producto_adquirido_marca_parque_activo: "Yes"
      , producto_adquirido_marca_principal: "Yes"
      , producto_adquirido_familia_producto: "FIJA"
      , p_producto_tipo_nombre: "TELEFONIA"
      , producto_sub_tipo_nombre: "TOIP"
    ]
  }

  measure: count_productos_total_fija {
    type: count
    group_label: "Productos"
    group_item_label: "Total Fija"
    label: "Productos Total Fija"
    description: "Negocio fija /Cuenta Productos Principales familia fija (excluye Bundle)
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , producto_adquirido_familia_producto: 'FIJA'
      , p_producto_tipo_nombre: '-BUNDLE'"
    filters: [
        producto_adquirido_marca_parque_activo: "Yes"
      , producto_adquirido_marca_principal: "Yes"
      , producto_adquirido_familia_producto: "FIJA"
      , p_producto_tipo_nombre: "-BUNDLE"
    ]
  }

  measure: count_productos_total_movil {
    type: count
    group_label: "Productos"
    group_item_label: "Total Movil"
    label: "Productos Total Movil"
    description: "Negocio movil / Cuenta productos principales planes
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , producto_adquirido_familia_producto: 'MOVIL'
      , p_producto_tipo_nombre: 'PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO'"
    filters: [
        producto_adquirido_marca_parque_activo: "Yes"
      , producto_adquirido_marca_principal: "Yes"
      , producto_adquirido_familia_producto: "MOVIL"
      , p_producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO"
    ]
  }

  measure: count_parque_terminales{
    type: count
    group_label: "Productos"
    group_item_label: "Terminales"
    label: "Terminales"
    description: " Negocio movil / Cuenta dispositivos Movil
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , producto_adquirido_familia_producto: 'MOVIL'
      , p_producto_tipo_nombre: 'DISPOSITIVO'
      , producto_sub_tipo_nombre: '-ACCESORIOS MULTIMEDIA'"
    filters: [
        producto_adquirido_marca_parque_activo: "Yes"
      , producto_adquirido_marca_principal: "Yes"
      , producto_adquirido_familia_producto: "MOVIL"
      , p_producto_tipo_nombre: "DISPOSITIVO"
      , producto_sub_tipo_nombre: "-ACCESORIOS MULTIMEDIA"
    ]
  }

  measure: count_clientes_unicos{
    type: count_distinct
    sql: ${persona_documento_numero} ;;
    group_label: "Clientes"
    group_item_label: "Unicos"
    label: "Clientes Unicos"
    description: "Negocio Fija/Movil - Cuenta Total Clientes unicos.
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , producto_adquirido_familia_producto: 'MOVIL, FIJA'"
    filters: [
        producto_adquirido_marca_parque_activo: "Yes"
      , producto_adquirido_marca_principal: "Yes"
      , producto_adquirido_familia_producto: "MOVIL, FIJA"
    ]
  }

  measure: count_clientes_alto_valor{
    type: count_distinct
    sql: ${persona_documento_numero} ;;
    group_label: "Clientes"
    group_item_label: "Alto Valor"
    label: "Clientes Alto Valor"
    description: "Clientes alto valor donde Segmento 1 es abono solo movil , convergente siebel / convergente open / convergente siebel open, con productos principales activos
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , producto_adquirido_familia_producto: 'MOVIL, FIJA'
      , cliente_segmento1_nombre: 'ABONOS SOLO MOVIL, CONVERGENTE OPEN, CONVERGENTE SIEBEL, CONVERGENTE SIEBEL OPEN'
      , cliente_segmento2_nombre: '1'"
    filters: [
        producto_adquirido_marca_parque_activo: "Yes"
      , producto_adquirido_marca_principal: "Yes"
      , producto_adquirido_familia_producto: "MOVIL, FIJA"
      , cliente_segmento1_nombre: "ABONOS SOLO MOVIL, CONVERGENTE OPEN, CONVERGENTE SIEBEL, CONVERGENTE SIEBEL OPEN"
      , cliente_segmento2_nombre: "1"
    ]
  }

  measure: count_suspension_administrativa {
    type: count
    group_label: "Suspensiones"
    group_item_label: "Adminstrativa"
    label: "Suspension Adminstrativa"
    description: "Negocio Movil - Lineas Suspendidas por fraude.
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , fecha_suspension_administrativa_src_date: 'NOT NULL'
      , cantidad_suspensiones_activas: 'NOT NULL'"
    filters: [
        producto_adquirido_marca_parque_activo: "Yes"
      , producto_adquirido_marca_principal: "Yes"
      , fecha_suspension_administrativa_src_date: "NOT NULL"
      , cantidad_suspensiones_activas: "NOT NULL"
    ]
  }

  measure: count_suspension_por_degradacion {
    type: count
    group_label: "Suspensiones"
    group_item_label: "Degradacion"
    label: "Suspension por Degradacion"
    description: "Negocio Movil/Fija - productos suspendidos por degradacion / servicio reducido.
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , fecha_suspension_degradacion_src_date: 'NOT NULL'
      , cantidad_suspensiones_activas: 'NOT NULL'"
    filters: [
        producto_adquirido_marca_parque_activo: "Yes"
      , producto_adquirido_marca_principal: "Yes"
      , fecha_suspension_degradacion_src_date: "NOT NULL"
      , cantidad_suspensiones_activas: "NOT NULL"
    ]
  }

  measure: count_suspension_por_leasing {
    type: count
    group_label: "Suspensiones"
    group_item_label: "Leasing"
    label: "Suspension por Leasing"
    description: "Dispositivos suspendidos por Leasing (compro equipo en DPF y se supende por mora).
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , fecha_suspension_leasing_src_date: 'NOT NULL'
      , cantidad_suspensiones_activas: 'NOT NULL'"
    filters: [
        producto_adquirido_marca_parque_activo: "Yes"
      , producto_adquirido_marca_principal: "Yes"
      , fecha_suspension_leasing_src_date: "NOT NULL"
      , cantidad_suspensiones_activas: "NOT NULL"
    ]
  }

  measure: count_otras_suspensiones{
    type: count
    group_label: "Suspensiones"
    group_item_label: "Otras"
    label: "Otras Suspensiones"
    description: "Negocio Movil/Fija- Productos suspendidos por Otros motivos de suspension
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , fecha_suspension_otros_src_date: 'NOT NULL'
      , cantidad_suspensiones_activas: 'NOT NULL'"
    filters: [
        producto_adquirido_marca_parque_activo: "Yes"
      , producto_adquirido_marca_principal: "Yes"
      , fecha_suspension_otros_src_date: "NOT NULL"
      , cantidad_suspensiones_activas: "NOT NULL"
    ]
  }

  measure: count_suspension_por_mora_parcial {
    type: count
    group_label: "Suspensiones"
    group_item_label: "Mora Parcial"
    label: "Suspension por Mora Parcial"
    description: "Negocio Movil/Fija - Productos Suspendidos por morosidad parcial.
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , fecha_suspension_parcial_mora_src_date: 'NOT NULL'
      , cantidad_suspensiones_activas: 'NOT NULL'"
    filters: [
        producto_adquirido_marca_parque_activo: "Yes"
      , producto_adquirido_marca_principal: "Yes"
      , fecha_suspension_parcial_mora_src_date: "NOT NULL"
      , cantidad_suspensiones_activas: "NOT NULL"
    ]
  }

  measure: count_suspension_por_mora_total {
    type: count
    group_label: "Suspensiones"
    group_item_label: "Mora Total"
    label: "Suspension por Mora Total"
    description: " Negocio Movil/Fija- Productos suspendidos por Mora Total
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , fecha_suspension_total_mora_src_date: 'NOT NULL'
      , cantidad_suspensiones_activas: 'NOT NULL'"
    filters: [
        producto_adquirido_marca_parque_activo: "Yes"
      , producto_adquirido_marca_principal: "Yes"
      , fecha_suspension_total_mora_src_date: "NOT NULL"
      , cantidad_suspensiones_activas: "NOT NULL"
    ]
  }

  measure: count_suspension_voluntaria {
    type: count
    group_label: "Suspensiones"
    group_item_label: "Voluntaria"
    label: "Suspension Voluntaria"
    description: "Negocio Movil/Fija - Productos suspendidos por pedido del cliente, por un tiempo ejemplo Mudanza, PC Rota.
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , fecha_suspension_voluntaria_src_date: 'NOT NULL'
      , cantidad_suspensiones_activas: 'NOT NULL'"
    filters: [
        producto_adquirido_marca_parque_activo: "Yes"
      , producto_adquirido_marca_principal: "Yes"
      , fecha_suspension_voluntaria_src_date: "NOT NULL"
      , cantidad_suspensiones_activas: "NOT NULL"
    ]
  }

  measure: count_suspension_por_siniestro {
    type: count
    group_label: "Suspensiones"
    group_item_label: "Siniestro"
    label: "Suspension por Siniestro"
    description: "Negocio Movil - Lineas Suspendidas por Siniestro de la terminal.
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , fecha_suspension_siniestro_src_date: 'NOT NULL'
      , cantidad_suspensiones_activas: 'NOT NULL'"
    filters: [
        producto_adquirido_marca_parque_activo: "Yes"
      , producto_adquirido_marca_principal: "Yes"
      , fecha_suspension_siniestro_src_date: "NOT NULL"
      , cantidad_suspensiones_activas: "NOT NULL"
    ]
  }

  measure: count_suspension_por_portout {
    type: count
    group_label: "Suspensiones"
    group_item_label: "Portout"
    label: "Suspension por Portout"
    description: "Negocio Movil - Lineas suspendidas por  acción de  baja por portabilidad (portOut).
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , fecha_suspension_port_out_src_date: 'NOT NULL'
      , cantidad_suspensiones_activas: 'NOT NULL'"
    filters: [
        producto_adquirido_marca_parque_activo: "Yes"
      , producto_adquirido_marca_principal: "Yes"
      , fecha_suspension_port_out_src_date: "NOT NULL"
      , cantidad_suspensiones_activas: "NOT NULL"
    ]
  }

  measure: total_m_producto_adquirido_precio {
    type: sum
    sql: ${m_producto_adquirido_precio} ;;
    value_format_name: decimal_2
    label: "Producto Adquirido Precio"
  }

  measure: total_m_precio_recurrente_sin_impuesto {
    type: sum
    sql: ${m_precio_recurrente_sin_impuesto} ;;
    value_format_name: decimal_2
    label: "Precio Recurrente Sin Impuesto"
  }

  measure: total_m_cargo_recurrente_sin_impuesto {
    type: sum
    sql: ${m_cargo_recurrente_sin_impuesto} ;;
    value_format_name: decimal_2
    label: "Cargo Recurrente Sin Impuesto"
  }

  measure: total_producto_adquirido_total_tv {
    type: sum
    sql: ${producto_adquirido_total_tv} ;;
    group_label: "Productos"
    group_item_label: "Total TV"
    label: "Producto Total TV"
    description: "Negocio Fija/Cuenta Productos de TV, incluye los que pertenecen a un bundle
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , producto_adquirido_familia_producto: 'FIJA'
      , p_producto_tipo_nombre: 'TV'
      , producto_sub_tipo_nombre: 'TV CLASICA','FLOW BOX'"
  }

  measure: total_producto_adquirido_total_internet {
    type: sum
    sql: ${producto_adquirido_total_internet} ;;
    group_label: "Productos"
    group_item_label: "Total Internet"
    label: "Producto Total Internet"
    description: "Negocio Fija Cuenta Productos de Internet, incluye bundle
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , producto_adquirido_familia_producto: 'FIJA'
      , p_producto_tipo_nombre: 'INTERNET'"
  }

  measure: total_producto_adquirido_combo_internet_tv {
    type: sum
    sql: ${producto_adquirido_combo_internet_tv} ;;
    group_label: "Productos"
    group_item_label: "Combo Internet + TV"
    label: "Producto Combo Internet + TV"
    description: "Negocio Fija/Cuenta Combo de Internet + TV Flow Box
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , producto_adquirido_familia_producto: 'FIJA'
      , producto_producto_Tipo_nombre: 'BUNDLE'
      , producto_producto_nombre: LIKE ('%Flow Box%') OR
      , producto_producto_nombre:LIKE ('%TV%')"
  }

  measure: total_producto_adquirido_combo_internet_flow_flex {
    type: sum
    sql: ${producto_adquirido_combo_internet_flow_flex} ;;
    group_label: "Productos"
    group_item_label: "Combo Internet + Flow Flex"
    label: "Producto Combo Internet + Flow Flex"
    description: "Negocio Fija /Cuenta Combo de Internet + TV Flow Flex
      (type: count) FILTROS:
        producto_adquirido_marca_parque_activo: 'Yes'
      , producto_adquirido_marca_principal: 'Yes'
      , producto_adquirido_familia_producto: 'FIJA'
      , producto_producto_Tipo_nombre: 'BUNDLE'
      , producto_producto_nombre: LIKE ('%Flow Flex%')"
  }

  measure: total_producto_adquirido_smart_tv {
    type: sum
    sql: ${producto_adquirido_smart_tv} ;;
    group_label: "Productos"
    group_item_label: "Smart TV"
    label: "Producto Smart TV"
    description: " Cuenta Productos de Television (Accesorio)
      (type: count) FILTROS:
       Producto.ProductoTipoNombre = 'ACCESORIO'
      ,Producto.ProductoSubTipoNombre = 'TV'"
  }

  measure: total_cuenta_monto_desc_convergente {
    type: sum
    sql: ${cuenta_monto_desc_convergente} ;;
    view_label: "Cliente"
    label: "Monto Desc Convergente"
    description: "Monto del descuento convergente"
  }

  measure: total_producto_adquirido_solo_internet {
    type: sum
    sql: ${producto_adquirido_solo_internet} ;;
    group_label: "Productos"
    label: "Solo Internet"
    description: "Negocio Fija. Cuenta Productos de Internet que no pertenezcan a un bundle, incluye Toip y Flow Flex"
  }

  measure: total_producto_adquirido_volte {
    type: sum
    sql: ${producto_adquirido_volte} ;;
    group_label: "Productos"
    label: "Volte"
    description: "Negocio Fija. Cuenta Productos de Telefonia Volte."
  }

  measure: total_producto_adquirido_boca_adicional_tv {
    type: sum
    sql: ${producto_adquirido_boca_adicional_tv} ;;
    group_label: "Productos"
    label: "Boca Adicional TV"
    description: "Negocio Fija. Cuenta Bocas adicionales de TV Clasica y Flow."
  }
}

### Nested Attributes - Views ###

view: parque_promocion {

## Dimensions

  # Dates

  dimension_group: promocion_fecha_creacion {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: PromocionFechaCreacionSRC ;;
    view_label: "Promocion Actual"
    group_label: "Fecha Creacion Promo"
    label: "Promo Creacion"
    description: "Fecha de creacion de la promocion"
  }

  dimension_group: promocion_fecha_fin {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: PromocionFechaFin ;;
    group_label: "Fecha Promocion Fin"
    label: "Promocion Fin"
  }

  # Strings

  dimension: pago_ajuste_precio_srcid {
    type: string
    sql: PagoAjustePrecioSRCId ;;
    label: "Pago Ajuste Precio ID"
  }

  dimension: promocion_nombre {
    type: string
    sql: PromocionNombre ;;
    label: "Promocion Nombre"
  }

  # Flags

  dimension: marca_promocion {
    type: yesno
    sql: MarcaPromocion ;;
    label: "Es Promocion"
  }
}
