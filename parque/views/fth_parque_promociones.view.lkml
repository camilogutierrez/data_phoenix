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
    label: "Act Bill Cycle Type"
  }

  dimension: bill_cycle_id {
    type: string
    sql: ${TABLE}.BILL_CYCLE_ID ;;
    label: "Bill Cycle ID"
  }

  dimension: caso_srcid {
    type: string
    sql: ${TABLE}.CasoSRCId ;;
    label: "Caso ID"
  }

  dimension: caso_sub_tipo_nombre {
    type: string
    sql: ${TABLE}.CasoSubTipoNombre ;;
    suggest_dimension: lk_caso_sub_tipo.caso_sub_tipo_nombre
    label: "Caso Sub Tipo"
  }

  dimension: caso_tipo_nombre {
    type: string
    sql: ${TABLE}.CasoTipoNombre ;;
    suggest_dimension: lk_caso_tipo.caso_tipo_nombre
    label: "Caso Tipo"
  }

  dimension: cliente_codigo_integracion {
    type: string
    sql: ${TABLE}.ClienteCodigoIntegracion ;;
    group_label: "Cliente"
    label: "Codigo Integracion"
  }

  dimension: cliente_persona_contacto_srcid {
    type: string
    sql: ${TABLE}.ClientePersonaContactoSRCId ;;
    group_label: "Cliente"
    label: "Persona Contacto ID"
  }

  dimension: cliente_razon_social {
    type: string
    sql: ${TABLE}.ClienteRazonSocial ;;
    group_label: "Cliente"
    label: "Razon Social"
  }

  dimension: cliente_segmento1_nombre {
    type: string
    sql: ${TABLE}.ClienteSegmento1Nombre ;;
    group_label: "Cliente"
    label: "Segmento Nombre"
  }

  dimension: cliente_segmento2_nombre {
    type: string
    sql: ${TABLE}.ClienteSegmento2Nombre ;;
    group_label: "Cliente"
    label: "Segmento 2 Nombre"
  }

  dimension: cliente_srcid {
    type: string
    sql: ${TABLE}.ClienteSRCId ;;
    group_label: "Cliente"
    label: "ID"
  }

  dimension: cuenta_facturacion_srcid {
    type: string
    sql: ${TABLE}.CuentaFacturacionSRCId ;;
    group_label: "Cuenta"
    label: "Facturacion ID"
  }

  dimension: cuenta_propiedad_srcid {
    type: string
    sql: ${TABLE}.CuentaPropiedadSRCId ;;
    group_label: "Cuenta"
    label: "Propiedad ID"

  }

  dimension: cuenta_srcid {
    type: string
    sql: ${TABLE}.CuentaSRCId ;;
    group_label: "Cuenta"
    label: "ID"
  }

  dimension: cuenta_tipo_srcid {
    type: string
    sql: ${TABLE}.CuentaTipoSRCId ;;
    group_label: "Cuenta"
    label: "Tipo ID"
  }

  dimension: orden_canal_origen_nombre {
    type: string
    sql: ${TABLE}.OrdenCanalOrigenNombre ;;
    suggest_dimension: lk_orden_canal_origen.orden_canal_origen_nombre
    group_label: "Orden"
    label: "Canal Origen Nombre"
  }

  dimension: orden_item_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenItemAccionNombre ;;
    group_label: "Orden"
    label: "Item Accion Nombre"
  }

  dimension: orden_item_srcid {
    type: string
    sql: ${TABLE}.OrdenItemSRCId ;;
    group_label: "Orden"
    label: "Item ID"
  }

  dimension: orden_precio_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenPrecioAccionNombre ;;
    group_label: "Orden"
    label: "Precio Accion Nombre"
  }

  dimension: orden_precio_elemento_codigo {
    type: string
    sql: ${TABLE}.OrdenPrecioElementoCodigo ;;
    group_label: "Orden"
    label: "Precio Elemento Codigo"
  }

  dimension: orden_precio_elemento_srcid {
    type: string
    sql: ${TABLE}.OrdenPrecioElementoSRCId ;;
    group_label: "Orden"
    label: "Precio Accion Elemento ID"
  }

  dimension: OrdenProductoAdquiridoReferenteSRCId {
    type: string
    sql: ${TABLE}.OrdenProductoAdquiridoReferenteSRCId ;;
    group_label: "Orden"
    label: "Producto Adquirido Referente ID"
  }

  dimension: orden_srcid {
    type: string
    sql: ${TABLE}.OrdenSRCId ;;
    group_label: "Orden"
    label: "ID"
  }

  dimension: orden_tipo_cambio_plan_nombre {
    type: string
    sql: ${TABLE}.OrdenTipoCambioPlanNombre ;;
    suggest_dimension: lk_orden_tipo_cambio_plan.orden_tipo_cambio_plan_nombre
    group_label: "Orden"
    label: "Tipo Cambio Plan Nombre"
  }

  dimension: orden_tipo_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenTipoGestionNombre ;;
    suggest_dimension: lk_orden_tipo_gestion.orden_tipo_gestion_nombre
    group_label: "Orden"
    label: "Tipo Gestion Nombre"
  }

  dimension: orden_tipo_sub_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenTipoSubGestionNombre ;;
    suggest_dimension: lk_orden_tipo_sub_gestion.orden_tipo_sub_gestion_nombre
    group_label: "Orden"
    label: "Tipo Sub Gestion Nombre"
  }

  dimension: orden_usuario_alias {
    type: string
    sql: ${TABLE}.OrdenUsuarioAlias ;;
    group_label: "Orden"
    label: "Usuario Alias"
  }

  dimension: orden_usuario_creacion_srcid {
    type: string
    sql: ${TABLE}.OrdenUsuarioCreacionSRCId ;;
    group_label: "Orden"
    label: "Usuario Creacion ID"
  }

  dimension: orden_usuario_punto_venta_canal3 {
    type: string
    sql: ${TABLE}.OrdenUsuarioPuntoVentaCanal3 ;;
    group_label: "Orden"
    label: "Usuario Punto Venta Canal 3"
  }

  dimension: orden_usuario_punto_venta_descripcion {
    type: string
    sql: ${TABLE}.OrdenUsuarioPuntoVentaDescripcion ;;
    group_label: "Orden"
    label: "Usuario Punto Venta Descripcion"
  }

  dimension: orden_usuario_srcid {
    type: string
    sql: ${TABLE}.OrdenUsuarioSRCId ;;
    group_label: "Orden"
    label: "Usuario ID"
  }

  dimension: pago_ajuste_precio_estado_cancelacion {
    type: string
    sql: ${TABLE}.PagoAjustePrecioEstadoCancelacion ;;
    group_label: "Pago Ajuste Precio"
    label: "Estado Cancelacion"
  }

  dimension: pago_ajuste_precio_motivo_cancelacion {
    type: string
    sql: ${TABLE}.PagoAjustePrecioMotivoCancelacion ;;
    group_label: "Pago Ajuste Precio"
    label: "Motivo Cancelacion"
  }

  dimension: pago_ajuste_precio_numero_referencia {
    type: string
    sql: ${TABLE}.PagoAjustePrecioNumeroReferencia ;;
    group_label: "Pago Ajuste Precio"
    label: "Numero Referencia"
  }

  dimension: pago_ajuste_precio_origen_nombre {
    type: string
    sql: ${TABLE}.PagoAjustePrecioOrigenNombre ;;
    suggest_dimension: lk_pago_ajuste_precio_origen.pago_ajuste_precio_origen_nombre
    group_label: "Pago Ajuste Precio"
    label: "Origen Nombre"
  }

  dimension: pago_ajuste_precio_srcid {
    type: string
    sql: ${TABLE}.PagoAjustePrecioSRCId ;;
    group_label: "Pago Ajuste Precio"
    label: "ID"
  }

  dimension: persona_documento_numero {
    type: string
    sql: ${TABLE}.PersonaDocumentoNumero ;;
    group_label: "Persona"
    label: "Documento Numero"
  }

  dimension: persona_srcid {
    type: string
    sql: ${TABLE}.PersonaSRCId ;;
    group_label: "Persona"
    label: "ID"
  }

  dimension: persona_tipo_documento_nombre {
    type: string
    sql: ${TABLE}.PersonaTipoDocumentoNombre ;;
    suggest_dimension: lk_persona_tipo_documento.persona_tipo_documento_nombre
    group_label: "Persona"
    label: "Tipo Documento Nombre"
  }

  dimension: plan_tiempo_srcid {
    type: string
    sql: ${TABLE}.PlanTiempoSRCId ;;
    label: "Plan Tiempo ID"
  }

  dimension: precio_elemento_variable_srcid {
    type: string
    sql: ${TABLE}.PrecioElementoVariableSRCId ;;
    label: "Precio Elemento Variable ID"
  }

  dimension: pri_bill_cycle_type {
    type: string
    sql: ${TABLE}.PRI_BILL_CYCLE_TYPE ;;
  }

  dimension: producto_adquirido_codigo_suscripcion {
    type: string
    sql: ${TABLE}.ProductoAdquiridoCodigoSuscripcion ;;
    group_label: "Producto Adquirido"
    label: "Codigo Suscripcion"
  }

  dimension: producto_adquirido_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoNombre ;;
    group_label: "Producto Adquirido"
    label: "Estado Nombre"
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

  dimension: producto_adquirido_recurso_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoRecursoSRCId ;;
    group_label: "Producto Adquirido"
    label: "Recurso ID"
  }

  dimension: producto_adquirido_referente_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoReferenteSRCId ;;
    group_label: "Producto Adquirido"
    label: "Referente ID"
  }

  dimension: producto_adquirido_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoSRCId ;;
    group_label: "Producto Adquirido"
    label: "ID"
  }

  dimension: producto_adquirido_tipo {
    type: string
    sql: ${TABLE}.ProductoAdquiridoTipo ;;
    group_label: "Producto Adquirido"
    label: "Tipo"
  }

  dimension: producto_precio_lista_srcid {
    type: string
    sql: ${TABLE}.ProductoPrecioListaSRCId ;;
    label: "Producto Precio Lista ID"
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
    label: "Promocion Aplicada ID"
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
    label: "Promocion Nombre"
  }

  dimension: promocion_srcid {
    type: string
    sql: ${TABLE}.PromocionSRCId ;;
    label: "Promocion ID"
  }

  dimension: punto_venta_canal_nombre {
    type: string
    sql: ${TABLE}.PuntoVentaCanalNombre ;;
    group_label: "Punto Venta"
    label: "Canal Nombre"
  }

  dimension: punto_venta_tipo_atencion {
    type: string
    sql: ${TABLE}.PuntoVentaTipoAtencion ;;
    group_label: "Punto Venta"
    label: "Tipo Atencion"
  }

  dimension: punto_venta_tipo_canal_nombre {
    type: string
    sql: ${TABLE}.PuntoVentaTipoCanalNombre ;;
    group_label: "Punto Venta"
    label: "Tipo Canal Nombre"

  }

  dimension: punto_venta_tipo_contacto_nombre {
    type: string
    sql: ${TABLE}.PuntoVentaTipoContactoNombre ;;
    group_label: "Punto Venta"
    label: "Tipo Contacto Nombre"
  }

  dimension: ult_bill_cycle_type {
    type: string
    sql: ${TABLE}.ULT_BILL_CYCLE_TYPE ;;
  }

  dimension: usuario_alta_nickname {
    type: string
    sql: ${TABLE}.UsuarioAltaNickname ;;
    group_label: "Usuario"
    label: "Alta Nick Name"
  }

  dimension: usuario_alta_srcid {
    type: string
    sql: ${TABLE}.UsuarioAltaSRCId ;;
    group_label: "Usuario"
    label: "Alta ID"
  }

  dimension: usuario_mod_nickname {
    type: string
    sql: ${TABLE}.UsuarioModNickname ;;
    group_label: "Usuario"
    label: "Mod Nick Name"
  }

  dimension: usuario_srcid {
    type: string
    sql: ${TABLE}.UsuarioSRCId ;;
    group_label: "Usuario"
    label: "ID"
  }

  dimension: usuario_ultima_modificacion_srcid {
    type: string
    sql: ${TABLE}.UsuarioUltimaModificacionSRCId ;;
    group_label: "Usuario"
    label: "Ultima Modificacion ID"
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
    value_format_name: decimal_2
  }

  dimension: impuesto {
    type: number
    sql: ${TABLE}.IMPUESTO ;;
    value_format_name: decimal_2
  }

  dimension: invoice_id {
    type: number
    sql: ${TABLE}.INVOICE_ID ;;
    value_format_name: id
  }

  dimension: monto_abono {
    type: number
    sql: ${TABLE}.MONTO_ABONO ;;
    value_format_name: decimal_2
  }

  dimension: monto_acceso {
    type: number
    sql: ${TABLE}.MONTO_ACCESO ;;
    value_format_name: decimal_2
  }

  dimension: total {
    type: number
    sql: ${TABLE}.TOTAL ;;
    value_format_name: decimal_2
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
    value_format_name: id
    group_label: "Cuenta"
    label: "HW Acct ID"
  }

  dimension: cuenta_hwcust_id {
    type: number
    sql: ${TABLE}.CuentaHWCUST_ID ;;
    value_format_name: id
    group_label: "Cuenta"
    label: "HW Cust ID"
  }

  dimension: pago_ajuste_precio_monto_ajuste {
    type: number
    sql: ${TABLE}.PagoAjustePrecioMontoAjuste ;;
    group_label: "Pago Ajuste Precio"
    label: "Monto Ajuste"
  }

  dimension: pago_ajuste_precio_secuencia {
    type: number
    sql: ${TABLE}.PagoAjustePrecioSecuencia ;;
    group_label: "Pago Ajuste Precio"
    label: "Secuencia"
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
