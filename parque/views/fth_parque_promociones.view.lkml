view: fth_parque_promociones {
  label: "Parque Promociones"
  sql_table_name: @{gcp_ambiente}.FTH_ParquePromociones` ;;
  suggestions: no

## Dimensions

  ## Primary Key

  dimension: pago_ajuste_precio_pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.PagoAjustePrecioPK ;;
  }

  ## Dates

  dimension_group: orden_fecha_activacion_src {
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
    sql: ${TABLE}.OrdenFechaActivacionSRC ;;
    datatype: timestamp
    group_label: "Fecha Activacion Orden"
    label: "Activacion Orden"
  }

  dimension_group: orden_item_fecha_creacion_src {
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
    datatype: datetime
    sql: ${TABLE}.OrdenItemFechaCreacionSRC ;;
    group_label: "Fecha Creacion Orden Item"
    label: "Creacion Orden Item"
  }

  dimension_group: pago_ajuste_precio_fecha_cancelacion_src {
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
    sql: ${TABLE}.PagoAjustePrecioFechaCancelacionSRC ;;
    datatype: timestamp
    group_label: "Fecha Cancelacion"
    label: "Cancelacion"
  }

  dimension_group: pago_ajuste_precio_fecha_creacion_src {
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
    datatype: datetime
    sql: ${TABLE}.PagoAjustePrecioFechaCreacionSRC ;;
    group_label: "Fecha Creacion"
    label: "Creacion"
  }

  dimension_group: pago_ajuste_precio_fecha_desde_src {
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
    datatype: datetime
    sql: ${TABLE}.PagoAjustePrecioFechaDesdeSRC ;;
    group_label: "Fecha Desde"
    label: "Desde"
  }

  dimension_group: pago_ajuste_precio_fecha_hasta_src {
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
    datatype: datetime
    sql: ${TABLE}.PagoAjustePrecioFechaHastaSRC ;;
    group_label: "Fecha Hasta"
    label: "Hasta"
  }

  dimension_group: pago_ajuste_precio_fecha_ultima_modificacion_src {
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
    datatype: datetime
    sql: ${TABLE}.PagoAjustePrecioFechaUltimaModificacionSRC ;;
    group_label: "Fecha Modificacion"
    label: "Modificacion"
  }

  dimension: fecha_entidad {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FechaEntidad ;;
    label: "Fecha Cierre"
  }

  dimension: _fecha_creacion {
    type: date_time
    sql: ${TABLE}._auditoria._fechaCreacion ;;
    datatype: timestamp
    view_label: "Auditoria"
    label: "Fecha Creacion"
  }

  dimension: _fecha_ultima_actualizacion {
    type: date_time
    sql: ${TABLE}._auditoria._fechaUltimaActualizacion ;;
    datatype: timestamp
    view_label: "Auditoria"
    label: "Fecha Modificacion"
  }

  ## Strings

  dimension: _sesion_id {
    type: number
    sql: ${TABLE}._auditoria._sesionId ;;
    view_label: "Auditoria"
    group_item_label: "Sesion ID"
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

  dimension: act_bill_cycle_type {
    type: string
    sql: ${TABLE}.ACT_BILL_CYCLE_TYPE ;;
  }

  dimension: bill_cycle_id {
    type: string
    sql: ${TABLE}.BILL_CYCLE_ID ;;
  }

  dimension: caso_srcid {
    type: string
    sql: ${TABLE}.CasoSRCId ;;
  }

  dimension: caso_sub_tipo_nombre {
    type: string
    sql: ${TABLE}.CasoSubTipoNombre ;;
    suggest_dimension: lk_caso_sub_tipo.caso_sub_tipo_nombre
  }

  dimension: caso_tipo_nombre {
    type: string
    sql: ${TABLE}.CasoTipoNombre ;;
    suggest_dimension: lk_caso_tipo.caso_tipo_nombre
  }

  dimension: cliente_codigo_integracion {
    type: string
    sql: ${TABLE}.ClienteCodigoIntegracion ;;
  }

  dimension: cliente_persona_contacto_srcid {
    type: string
    sql: ${TABLE}.ClientePersonaContactoSRCId ;;
  }

  dimension: cliente_razon_social {
    type: string
    sql: ${TABLE}.ClienteRazonSocial ;;
  }

  dimension: cliente_segmento1_nombre {
    type: string
    sql: ${TABLE}.ClienteSegmento1Nombre ;;
  }

  dimension: cliente_segmento2_nombre {
    type: string
    sql: ${TABLE}.ClienteSegmento2Nombre ;;
  }

  dimension: cliente_srcid {
    type: string
    sql: ${TABLE}.ClienteSRCId ;;
  }

  dimension: cuenta_facturacion_srcid {
    type: string
    sql: ${TABLE}.CuentaFacturacionSRCId ;;
  }

  dimension: cuenta_propiedad_srcid {
    type: string
    sql: ${TABLE}.CuentaPropiedadSRCId ;;
  }

  dimension: cuenta_srcid {
    type: string
    sql: ${TABLE}.CuentaSRCId ;;
  }

  dimension: cuenta_tipo_srcid {
    type: string
    sql: ${TABLE}.CuentaTipoSRCId ;;
  }

  dimension: grupo_trabajo_srcid {
    type: string
    sql: ${TABLE}.GrupoTrabajoSRCId ;;
  }

  dimension: orden_canal_origen_nombre {
    type: string
    sql: ${TABLE}.OrdenCanalOrigenNombre ;;
    suggest_dimension: lk_orden_canal_origen.orden_canal_origen_nombre
  }

  dimension: orden_item_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenItemAccionNombre ;;
  }

  dimension: orden_item_srcid {
    type: string
    sql: ${TABLE}.OrdenItemSRCId ;;
  }

  dimension: orden_precio_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenPrecioAccionNombre ;;
  }

  dimension: orden_precio_elemento_codigo {
    type: string
    sql: ${TABLE}.OrdenPrecioElementoCodigo ;;
  }

  dimension: orden_precio_elemento_scrid {
    type: string
    sql: ${TABLE}.OrdenPrecioElementoSCRId ;;
  }

  dimension: orden_precio_elemento_srcid {
    type: string
    sql: ${TABLE}.OrdenPrecioElementoSRCId ;;
  }

  dimension: orden_srcid {
    type: string
    sql: ${TABLE}.OrdenSRCId ;;
  }

  dimension: orden_tipo_cambio_plan_nombre {
    type: string
    sql: ${TABLE}.OrdenTipoCambioPlanNombre ;;
    suggest_dimension: lk_orden_tipo_cambio_plan.orden_tipo_cambio_plan_nombre
  }

  dimension: orden_tipo_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenTipoGestionNombre ;;
    suggest_dimension: lk_orden_tipo_gestion.orden_tipo_gestion_nombre
  }

  dimension: orden_tipo_sub_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenTipoSubGestionNombre ;;
    suggest_dimension: lk_orden_tipo_sub_gestion.orden_tipo_sub_gestion_nombre
  }

  dimension: orden_usuario_alias {
    type: string
    sql: ${TABLE}.OrdenUsuarioAlias ;;
  }

  dimension: orden_usuario_creacion_srcid {
    type: string
    sql: ${TABLE}.OrdenUsuarioCreacionSRCId ;;
  }

  dimension: orden_usuario_punto_venta_canal3 {
    type: string
    sql: ${TABLE}.OrdenUsuarioPuntoVentaCanal3 ;;
  }

  dimension: orden_usuario_punto_venta_descripcion {
    type: string
    sql: ${TABLE}.OrdenUsuarioPuntoVentaDescripcion ;;
  }

  dimension: orden_usuario_srcid {
    type: string
    sql: ${TABLE}.OrdenUsuarioSRCId ;;
  }

  dimension: pago_ajuste_precio_estado_cancelacion {
    type: string
    sql: ${TABLE}.PagoAjustePrecioEstadoCancelacion ;;
  }

  dimension: pago_ajuste_precio_motivo_cancelacion {
    type: string
    sql: ${TABLE}.PagoAjustePrecioMotivoCancelacion ;;
  }

  dimension: pago_ajuste_precio_numero_referencia {
    type: string
    sql: ${TABLE}.PagoAjustePrecioNumeroReferencia ;;
  }

  dimension: pago_ajuste_precio_origen_nombre {
    type: string
    sql: ${TABLE}.PagoAjustePrecioOrigenNombre ;;
    suggest_dimension: lk_pago_ajuste_precio_origen.pago_ajuste_precio_origen_nombre
  }

  dimension: pago_ajuste_precio_srcid {
    type: string
    sql: ${TABLE}.PagoAjustePrecioSRCId ;;
  }

  dimension: persona_documento_numero {
    type: string
    sql: ${TABLE}.PersonaDocumentoNumero ;;
  }

  dimension: persona_srcid {
    type: string
    sql: ${TABLE}.PersonaSRCId ;;
  }

  dimension: persona_tipo_documento_nombre {
    type: string
    sql: ${TABLE}.PersonaTipoDocumentoNombre ;;
    suggest_dimension: lk_persona_tipo_documento.persona_tipo_documento_nombre
  }

  dimension: plan_tiempo_srcid {
    type: string
    sql: ${TABLE}.PlanTiempoSRCId ;;
  }

  dimension: precio_elemento_variable_srcid {
    type: string
    sql: ${TABLE}.PrecioElementoVariableSRCId ;;
  }

  dimension: pri_bill_cycle_type {
    type: string
    sql: ${TABLE}.PRI_BILL_CYCLE_TYPE ;;
  }

  dimension: producto_adquirido_codigo_sk {
    type: string
    sql: ${TABLE}.ProductoAdquiridoCodigoSK ;;
  }

  dimension: producto_adquirido_codigo_suscripcion {
    type: string
    sql: ${TABLE}.ProductoAdquiridoCodigoSuscripcion ;;
  }

  dimension: producto_adquirido_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoNombre ;;
  }

  dimension: producto_adquirido_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoNombre ;;
  }

  dimension: producto_adquirido_numero_linea {
    type: string
    sql: ${TABLE}.ProductoAdquiridoNumeroLinea ;;
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
  }

  dimension: producto_adquirido_tipo {
    type: string
    sql: ${TABLE}.ProductoAdquiridoTipo ;;
  }

  dimension: producto_precio_lista_srcid {
    type: string
    sql: ${TABLE}.ProductoPrecioListaSRCId ;;
  }

  dimension: promocion_anio_bonificacion {
    type: string
    sql: ${TABLE}.Promocion.Anio_Bonificacion ;;
    view_label: "Promocion"
    label: "Año Bonificacion"
  }

  dimension: promocion_dia_bonificacion {
    type: string
    sql: ${TABLE}.Promocion.Dia_Bonificacion ;;
    view_label: "Promocion"
    label: "Dia Bonificacion"
  }

  dimension: promocion_mes_bonificacion {
    type: string
    sql: ${TABLE}.Promocion.Mes_Bonificacion ;;
    view_label: "Promocion"
    group_item_label: "Mes Bonificacion"
  }

  dimension: promocion_promo_vigente {
    type: string
    sql: ${TABLE}.Promocion.promo_vigente ;;
    view_label: "Promocion"
    label: "Promo Vigente"
  }

  dimension: promocion_aplicada_srcid {
    type: string
    sql: ${TABLE}.PromocionAplicadaSRCId ;;
  }

  dimension: promocion_escalones_duracion_tramo {
    type: string
    sql: ${TABLE}.PromocionEscalones.DuracionTramo ;;
    view_label: "Promocion Escalones"
    label: "Duracion Tramo"
  }

  dimension: promocion_escalones_importe_descripcion {
    type: string
    sql: ${TABLE}.PromocionEscalones.ImporteDescripcion ;;
    view_label: "Promocion Escalones"
    label: "Importe Descripcion"
  }

  dimension: promocion_escalones_offering_code {
    type: string
    sql: ${TABLE}.PromocionEscalones.OFFERING_CODE ;;
    view_label: "Promocion Escalones"
    label: "Offering Code"
  }

  dimension: promocion_escalones_offering_name {
    type: string
    sql: ${TABLE}.PromocionEscalones.OFFERING_NAME ;;
    view_label: "Promocion Escalones"
    label: "Offering Name"
  }

  dimension: promocion_escalones_offering_short_name {
    type: string
    sql: ${TABLE}.PromocionEscalones.OFFERING_SHORT_NAME ;;
    view_label: "Promocion Escalones"
    label: "Offering Short Name"
  }

  dimension: promocion_escalones_porcentaje_descripcion {
    type: string
    sql: ${TABLE}.PromocionEscalones.PorcentajeDescripcion ;;
    view_label: "Promocion Escalones"
    label: "Porcentaje Descripcion"
  }

  dimension: promocion_escalones_tipo_tramo {
    type: string
    sql: ${TABLE}.PromocionEscalones.TipoTramo ;;
    view_label: "Promocion Escalones"
    label: "Tipo Tramo"
  }

  dimension: promocion_nombre {
    type: string
    sql: ${TABLE}.PromocionNombre ;;
  }

  dimension: promocion_srcid {
    type: string
    sql: ${TABLE}.PromocionSRCId ;;
  }

  dimension: punto_venta_canal_nombre {
    type: string
    sql: ${TABLE}.PuntoVentaCanalNombre ;;
  }

  dimension: punto_venta_srcid {
    type: string
    sql: ${TABLE}.PuntoVentaSRCId ;;
  }

  dimension: punto_venta_tipo_atencion {
    type: string
    sql: ${TABLE}.PuntoVentaTipoAtencion ;;
  }

  dimension: punto_venta_tipo_canal_nombre {
    type: string
    sql: ${TABLE}.PuntoVentaTipoCanalNombre ;;
  }

  dimension: punto_venta_tipo_contacto_nombre {
    type: string
    sql: ${TABLE}.PuntoVentaTipoContactoNombre ;;
  }

  dimension: ult_bill_cycle_type {
    type: string
    sql: ${TABLE}.ULT_BILL_CYCLE_TYPE ;;
  }

  dimension: usuario_alta_nickname {
    type: string
    sql: ${TABLE}.UsuarioAltaNickname ;;
  }

  dimension: usuario_alta_srcid {
    type: string
    sql: ${TABLE}.UsuarioAltaSRCId ;;
  }

  dimension: usuario_mod_nickname {
    type: string
    sql: ${TABLE}.UsuarioModNickname ;;
  }

  dimension: usuario_srcid {
    type: string
    sql: ${TABLE}.UsuarioSRCId ;;
  }

  dimension: usuario_ultima_modificacion_srcid {
    type: string
    sql: ${TABLE}.UsuarioUltimaModificacionSRCId ;;
  }

  ## Numbers

  dimension: promocion_mes_en_curso {
    type: number
    sql: ${TABLE}.Promocion.mes_en_curso ;;
    view_label: "Promocion"
    label: "Mes En Curso"
  }

  dimension: promocion_meses_bonificados {
    type: number
    sql: ${TABLE}.Promocion.meses_bonificados ;;
    view_label: "Promocion"
    label: "Meses Bonificados"
  }

  dimension: promocion_meses_restantes {
    type: number
    sql: ${TABLE}.Promocion.meses_restantes ;;
    view_label: "Promocion"
    label: "Meses Restantes"
  }

  dimension: promocion_escalones_nro_mes_fin_escalon {
    type: number
    sql: ${TABLE}.PromocionEscalones.NroMesFinEscalon ;;
    view_label: "Promocion Escalones"
    label: "Nro Mes Fin Escalon"
  }

  dimension: promocion_escalones_nro_mes_inicio_escalon {
    type: number
    sql: ${TABLE}.PromocionEscalones.NroMesInicioEscalon ;;
    view_label: "Promocion Escalones"
    label: "Nro Mes Inicio Escalon"
  }

  dimension: descuento {
    type: number
    sql: ${TABLE}.DESCUENTO ;;
  }

  dimension: impuesto {
    type: number
    sql: ${TABLE}.IMPUESTO ;;
  }

  dimension: invoice_id {
    type: number
    sql: ${TABLE}.INVOICE_ID ;;
    value_format_name: id
  }

  dimension: monto_abono {
    type: number
    sql: ${TABLE}.MONTO_ABONO ;;
  }

  dimension: monto_acceso {
    type: number
    sql: ${TABLE}.MONTO_ACCESO ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.TOTAL ;;
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
    value_format_name: id
  }

  dimension: promocion_escalones__tramo {
    type: number
    sql: ${TABLE}.PromocionEscalones.Tramo ;;
    view_label: "Promocion Escalones"
    label: "Tramo"
  }

  dimension: promocion_escalones__orden_tramo {
    type: number
    sql: ${TABLE}.PromocionEscalones.OrdenTramo ;;
    view_label: "Promocion Escalones"
    label: "Orden Tramo"
  }

  dimension: promocion_escalones__offering_id {
    type: number
    sql: ${TABLE}.PromocionEscalones.OFFERING_ID ;;
    view_label: "Promocion Escalones"
    label: "Offering ID"
  }

  dimension: cuenta_hwacct_id {
    type: number
    sql: ${TABLE}.CuentaHWAcct_Id ;;
  }

  dimension: cuenta_hwcust_id {
    type: number
    sql: ${TABLE}.CuentaHWCUST_ID ;;
  }

  dimension: pago_ajuste_precio_monto_ajuste {
    type: number
    sql: ${TABLE}.PagoAjustePrecioMontoAjuste ;;
  }

  dimension: pago_ajuste_precio_secuencia {
    type: number
    sql: ${TABLE}.PagoAjustePrecioSecuencia ;;
  }

  ## Hidden

  dimension: caso_sub_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoSubTipoSK ;;
  }

  dimension: caso_sub_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoSubTipoSRCId ;;
  }

  dimension: caso_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoTipoSK ;;
  }

  dimension: caso_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoTipoSRCId ;;
  }

  dimension: orden_canal_origen_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenCanalOrigenSK ;;
  }

  dimension: orden_canal_origen_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenCanalOrigenSRCId ;;
  }

  dimension: orden_tipo_cambio_plan_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenTipoCambioPlanSK ;;
  }

  dimension: orden_tipo_cambio_plan_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenTipoCambioPlanSRCId ;;
  }

  dimension: orden_tipo_gestion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenTipoGestionSK ;;
  }

  dimension: orden_tipo_gestion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenTipoGestionSRCId ;;
  }

  dimension: orden_tipo_sub_gestion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenTipoSubGestionSK ;;
  }

  dimension: orden_tipo_sub_gestion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenTipoSubGestionSRCId ;;
  }

  dimension: persona_tipo_documento_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PersonaTipoDocumentoSK ;;
  }

  dimension: persona_tipo_documento_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.PersonaTipoDocumentoSRCId ;;
  }

  dimension: pago_ajuste_precio_origen_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PagoAjustePrecioOrigenSK ;;
  }

  dimension: pago_ajuste_precio_origen_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.PagoAjustePrecioOrigenSRCId ;;
  }

## Measures



}
