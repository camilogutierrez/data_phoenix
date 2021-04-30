view: dm_orden {
  view_label: "Orden"
  sql_table_name: `ue4_dev_edw_pub_vw_gcp.DM_Orden`
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

  dimension: orden_campania_id {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenCampaniaId ;;
  }

  dimension: orden_canal_origen_nombre {
    type: string
    sql: ${TABLE}.OrdenCanalOrigenNombre ;;
  }

  dimension: orden_canal_origen_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.OrdenCanalOrigenSK ;;
  }

  dimension: orden_canal_origen_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenCanalOrigenSRCId ;;
  }

  dimension: orden_caso_id {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenCasoId ;;
  }

  dimension: orden_cft {
    type: number
    sql: ${TABLE}.OrdenCFT ;;
  }

  dimension: orden_ciclo_facturacion {
    type: string
    sql: ${TABLE}.OrdenCicloFacturacion ;;
  }

  dimension: orden_codigo_banco {
    type: string
    sql: ${TABLE}.OrdenCodigoBanco ;;
  }

  dimension: orden_codigo_operacion {
    type: string
    sql: ${TABLE}.OrdenCodigoOperacion ;;
  }

  dimension: orden_codigo_pais_envio {
    type: string
    sql: ${TABLE}.OrdenCodigoPaisEnvio ;;
  }

  dimension: orden_codigo_tarjeta {
    type: string
    sql: ${TABLE}.OrdenCodigoTarjeta ;;
  }

  dimension: orden_cuenta_facturacion_id {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenCuentaFacturacionId ;;
  }

  dimension: orden_direccion_entrega_id {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenDireccionEntregaId ;;
  }

  dimension: orden_ejecucion_cambio_ciclo {
    type: string
    sql: ${TABLE}.OrdenEjecucionCambioCiclo ;;
  }

  dimension_group: orden_ejecucion_cambio_fecha {
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
    sql: ${TABLE}.OrdenEjecucionCambioFecha ;;
  }

  dimension: orden_ejecucion_cambio_fecha_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.OrdenEjecucionCambioFechaSK ;;
  }

  dimension: orden_es_cambio_mercado {
    type: string
    sql: ${TABLE}.OrdenEsCambioMercado ;;
  }

  dimension: orden_es_cambio_producto {
    type: string
    sql: ${TABLE}.OrdenEsCambioProducto ;;
  }

  dimension: orden_es_campana {
    type: yesno
    sql: ${TABLE}.OrdenEsCampana ;;
  }

  dimension: orden_es_cierre_parcial {
    type: yesno
    sql: ${TABLE}.OrdenEsCierreParcial ;;
  }

  dimension: orden_estado_aprobacion {
    type: string
    sql: ${TABLE}.OrdenEstadoAprobacion ;;
  }

  dimension: orden_estado_nombre {
    type: string
    sql: ${TABLE}.OrdenEstadoNombre ;;
  }

  dimension: orden_estado_provisionamiento_nombre {
    type: string
    sql: ${TABLE}.OrdenEstadoProvisionamientoNombre ;;
  }

  dimension: orden_estado_provisionamiento_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.OrdenEstadoProvisionamientoSK ;;
  }

  dimension: orden_estado_provisionamiento_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenEstadoProvisionamientoSRCId ;;
  }

  dimension: orden_estado_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.OrdenEstadoSK ;;
  }

  dimension: orden_estado_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenEstadoSRCId ;;
  }

  dimension: orden_estado_trackeo_nombre {
    type: string
    sql: ${TABLE}.OrdenEstadoTrackeoNombre ;;
  }

  dimension: orden_estado_trackeo_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.OrdenEstadoTrackeoSK ;;
  }

  dimension: orden_estado_trackeo_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenEstadoTrackeoSRCId ;;
  }

  dimension: orden_estado_validado_cliente {
    type: string
    sql: ${TABLE}.OrdenEstadoValidadoCliente ;;
  }

  dimension: orden_fecha_activacion_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.OrdenFechaActivacionSK ;;
  }

  dimension: orden_fecha_creacion_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.OrdenFechaCreacionSK ;;
  }

  dimension_group: orden_fecha_entrega {
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
    sql: ${TABLE}.OrdenFechaEntrega ;;
  }

  dimension: orden_fecha_entrega_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.OrdenFechaEntregaSK ;;
  }

  dimension_group: orden_fecha_mod {
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
    sql: ${TABLE}.OrdenFechaMod ;;
  }

  dimension_group: orden_fecha_venta {
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
    sql: ${TABLE}.OrdenFechaVenta ;;
  }

  dimension: orden_fecha_venta_sk {
    type: number
    sql: ${TABLE}.OrdenFechaVentaSK ;;
  }

  dimension_group: orden_fin_orden {
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
    sql: ${TABLE}.OrdenFinOrden ;;
  }

  dimension: orden_fin_orden_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.OrdenFinOrdenSK ;;
  }

  dimension: orden_grupo_trabajo_nombre {
    type: string
    sql: ${TABLE}.OrdenGrupoTrabajoNombre ;;
  }

  dimension_group: orden_inicio_orden {
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
    sql: ${TABLE}.OrdenInicioOrden ;;
  }

  dimension: orden_inicio_orden_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.OrdenInicioOrdenSK ;;
  }

  dimension: orden_item {
    hidden: yes
    sql: ${TABLE}.OrdenItem ;;
  }

  dimension: orden_lista_productos_cuenta {
    type: string
    sql: ${TABLE}.OrdenListaProductosCuenta ;;
  }

  dimension: orden_llamada_id {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenLlamadaId ;;
  }

  dimension: orden_llamada_padre_id {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenLlamadaPadreId ;;
  }

  dimension: orden_metodo_entrega_nombre {
    type: string
    sql: ${TABLE}.OrdenMetodoEntregaNombre ;;
  }

  dimension: orden_metodo_entrega_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.OrdenMetodoEntregaSK ;;
  }

  dimension: orden_metodo_entrega_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenMetodoEntregaSRCId ;;
  }

  dimension: orden_metodo_pago_nombre {
    type: string
    sql: ${TABLE}.OrdenMetodoPagoNombre ;;
  }

  dimension: orden_motivo_anulacion_nombre {
    type: string
    sql: ${TABLE}.OrdenMotivoAnulacionNombre ;;
  }

  dimension: orden_nombre_apellido_autorizado {
    type: string
    sql: ${TABLE}.OrdenNombreApellidoAutorizado ;;
  }

  dimension: orden_numero {
    type: string
    sql: ${TABLE}.OrdenNumero ;;
  }

  dimension: orden_numero_comprobante {
    type: string
    sql: ${TABLE}.OrdenNumeroComprobante ;;
  }

  dimension: orden_numero_pre_factura {
    type: string
    sql: ${TABLE}.OrdenNumeroPreFactura ;;
  }

  dimension: orden_original_id {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenOriginalId ;;
  }

  dimension: orden_precio_total {
    type: number
    sql: ${TABLE}.OrdenPrecioTotal ;;
  }

  dimension: orden_precio_total_recurrente {
    type: number
    sql: ${TABLE}.OrdenPrecioTotalRecurrente ;;
  }

  dimension: orden_precio_total_una_vez {
    type: number
    sql: ${TABLE}.OrdenPrecioTotalUnaVez ;;
  }

  dimension: orden_prefactibiidad_distribucion {
    type: string
    sql: ${TABLE}.OrdenPrefactibiidadDistribucion ;;
  }

  dimension: orden_prefactibilidad_codigo_area {
    type: string
    sql: ${TABLE}.OrdenPrefactibilidadCodigoArea ;;
  }

  dimension: orden_prefactibilidad_down_stream {
    type: string
    sql: ${TABLE}.OrdenPrefactibilidadDownStream ;;
  }

  dimension: orden_prefactibilidad_flow {
    type: yesno
    sql: ${TABLE}.OrdenPrefactibilidadFLOW ;;
  }

  dimension: orden_prefactibilidad_fuente_llamada {
    type: string
    sql: ${TABLE}.OrdenPrefactibilidadFuenteLlamada ;;
  }

  dimension: orden_prefactibilidad_hub_nodo {
    type: string
    sql: ${TABLE}.OrdenPrefactibilidadHubNodo ;;
  }

  dimension: orden_prefactibilidad_poligo_comercial {
    type: string
    sql: ${TABLE}.OrdenPrefactibilidadPoligoComercial ;;
  }

  dimension: orden_prefactibilidad_region {
    type: string
    sql: ${TABLE}.OrdenPrefactibilidadRegion ;;
  }

  dimension: orden_prefactibilidad_tecno {
    type: string
    sql: ${TABLE}.OrdenPrefactibilidadTECNO ;;
  }

  dimension: orden_prefactibilidad_tipo_deco {
    type: string
    sql: ${TABLE}.OrdenPrefactibilidadTipoDeco ;;
  }

  dimension: orden_prefactibilidad_toip {
    type: yesno
    sql: ${TABLE}.OrdenPrefactibilidadTOIP ;;
  }

  dimension: orden_punto_venta_id {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenPuntoVentaId ;;
  }

  dimension: orden_seguimiento_entrega_id {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenSeguimientoEntregaId ;;
  }

  dimension: orden_servicio_entrega_nombre {
    type: string
    sql: ${TABLE}.OrdenServicioEntregaNombre ;;
  }

  dimension: orden_servicio_entrega_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.OrdenServicioEntregaSK ;;
  }

  dimension: orden_servicio_entrega_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenServicioEntregaSRCId ;;
  }

  dimension: orden_simulacion_factura {
    type: string
    sql: ${TABLE}.OrdenSimulacionFactura ;;
  }

  dimension_group: orden_srcfecha_activacion {
    type: time
    label: "Fecha de Activacion Orden"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.OrdenSRCFechaActivacion ;;
  }

  dimension_group: orden_srcfecha_creacion {
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
    sql: ${TABLE}.OrdenSRCFechaCreacion ;;
  }

  dimension_group: orden_srcfecha_mod {
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
    sql: ${TABLE}.OrdenSRCFechaMod ;;
  }

  dimension: orden_srcid {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.OrdenSRCId ;;
  }

  dimension: orden_srcid_usuario_activacion {
    type: string
    sql: ${TABLE}.OrdenSRCIdUsuarioActivacion ;;
  }

  dimension: orden_srcid_usuario_creacion {
    type: string
    sql: ${TABLE}.OrdenSRCIdUsuarioCreacion ;;
  }

  dimension: orden_srcid_usuario_mod {
    type: string
    sql: ${TABLE}.OrdenSRCIdUsuarioMod ;;
  }

  dimension: orden_tipo_cambio_plan_nombre {
    type: string
    sql: ${TABLE}.OrdenTipoCambioPlanNombre ;;
  }

  dimension: orden_tipo_cambio_plan_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.OrdenTipoCambioPlanSK ;;
  }

  dimension: orden_tipo_cambio_plan_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenTipoCambioPlanSRCId ;;
  }

  dimension: orden_tipo_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenTipoGestionNombre ;;
  }

  dimension: orden_tipo_gestion_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.OrdenTipoGestionSK ;;
  }

  dimension: orden_tipo_gestion_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenTipoGestionSRCId ;;
  }

  dimension: orden_tipo_sub_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenTipoSubGestionNombre ;;
  }

  dimension: orden_tipo_sub_gestion_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.OrdenTipoSubGestionSK ;;
  }

  dimension: orden_tipo_sub_gestion_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenTipoSubGestionSRCId ;;
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

view: dm_orden__orden_item {
  view_label: "Orden Item"
  dimension: orden_item_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenItemAccionNombre ;;
  }

  dimension: orden_item_accion_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.OrdenItemAccionSK ;;
  }

  dimension: orden_item_accion_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenItemAccionSRCId ;;
  }

  dimension: orden_item_cantidad {
    type: number
    sql: ${TABLE}.OrdenItemCantidad ;;
  }

  dimension: orden_item_cargo_recurrente {
    type: number
    sql: ${TABLE}.OrdenItemCargoRecurrente ;;
  }

  dimension: orden_item_cargo_recurrente_sin_impuesto {
    type: number
    sql: ${TABLE}.OrdenItemCargoRecurrenteSinImpuesto ;;
  }

  dimension: orden_item_cargo_unica_vez {
    type: number
    sql: ${TABLE}.OrdenItemCargoUnicaVez ;;
  }

  dimension: orden_item_cargo_unica_vez_sin_impuesto {
    type: number
    sql: ${TABLE}.OrdenItemCargoUnicaVezSinImpuesto ;;
  }

  dimension: orden_item_codigo_deposito {
    type: string
    sql: ${TABLE}.OrdenItemCodigoDeposito ;;
  }

  dimension: orden_item_codigo_operacion {
    type: string
    sql: ${TABLE}.OrdenItemCodigoOperacion ;;
  }

  dimension: orden_item_es_facturable {
    type: string
    sql: ${TABLE}.OrdenItemEsFacturable ;;
  }

  dimension: orden_item_es_provisionable {
    type: string
    sql: ${TABLE}.OrdenItemEsProvisionable ;;
  }

  dimension: orden_item_estado_nombre {
    type: string
    sql: ${TABLE}.OrdenItemEstadoNombre ;;
  }

  dimension: orden_item_estado_provisionamiento_nombre {
    type: string
    sql: ${TABLE}.OrdenItemEstadoProvisionamientoNombre ;;
  }

  dimension: orden_item_estado_provisionamiento_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.OrdenItemEstadoProvisionamientoSK ;;
  }

  dimension: orden_item_estado_provisionamiento_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenItemEstadoProvisionamientoSRCId ;;
  }

  dimension: orden_item_estado_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.OrdenItemEstadoSK ;;
  }

  dimension: orden_item_estado_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenItemEstadoSRCId ;;
  }

  dimension: orden_item_estado_stock_nombre {
    type: string
    sql: ${TABLE}.OrdenItemEstadoStockNombre ;;
  }

  dimension_group: orden_item_fecha_creacion {
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
    sql: ${TABLE}.OrdenItemFechaCreacion ;;
  }

  dimension: orden_item_fecha_creacion_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.OrdenItemFechaCreacionSK ;;
  }

  dimension_group: orden_item_fecha_creacion_src {
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
    sql: ${TABLE}.OrdenItemFechaCreacionSRC ;;
  }

  dimension_group: orden_item_fecha_modificacion {
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
    sql: ${TABLE}.OrdenItemFechaModificacion ;;
  }

  dimension_group: orden_item_fecha_modificacion_src {
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
    sql: ${TABLE}.OrdenItemFechaModificacionSRC ;;
  }

  dimension_group: orden_item_historial_sk {
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
    sql: ${TABLE}.OrdenItemHistorialSK ;;
  }

  dimension: orden_item_instancia_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenItemInstanciaSRCId ;;
  }

  dimension: orden_item_mrc {
    type: number
    sql: ${TABLE}.OrdenItemMRC ;;
  }

  dimension: orden_item_numero {
    type: string
    sql: ${TABLE}.OrdenItemNumero ;;
  }

  dimension: orden_item_numero_secuencia {
    type: string
    sql: ${TABLE}.OrdenItemNumeroSecuencia ;;
  }

  dimension: orden_item_precio_calculado_recurrente {
    type: number
    sql: ${TABLE}.OrdenItemPrecioCalculadoRecurrente ;;
  }

  dimension: orden_item_precio_calculado_recurrente_sin_impuesto {
    type: number
    sql: ${TABLE}.OrdenItemPrecioCalculadoRecurrenteSinImpuesto ;;
  }

  dimension: orden_item_precio_dcto_unica_vez {
    type: number
    sql: ${TABLE}.OrdenItemPrecioDctoUnicaVez ;;
  }

  dimension: orden_item_precio_dcto_unica_vez_sin_impuesto {
    type: number
    sql: ${TABLE}.OrdenItemPrecioDctoUnicaVezSinImpuesto ;;
  }

  dimension: orden_item_precio_efectivo_unica_vez {
    type: number
    sql: ${TABLE}.OrdenItemPrecioEfectivoUnicaVez ;;
  }

  dimension: orden_item_precio_efectivo_unica_vez_sin_impuesto {
    type: number
    sql: ${TABLE}.OrdenItemPrecioEfectivoUnicaVezSinImpuesto ;;
  }

  dimension: orden_item_precio_lista {
    type: number
    sql: ${TABLE}.OrdenItemPrecioLista ;;
  }

  dimension: orden_item_precio_recurrente {
    type: number
    sql: ${TABLE}.OrdenItemPrecioRecurrente ;;
  }

  dimension: orden_item_precio_recurrente_sin_impuesto {
    type: number
    sql: ${TABLE}.OrdenItemPrecioRecurrenteSinImpuesto ;;
  }

  dimension: orden_item_precio_total_unica_vez {
    type: number
    sql: ${TABLE}.OrdenItemPrecioTotalUnicaVez ;;
  }

  dimension: orden_item_precio_total_unica_vez_sin_impuesto {
    type: number
    sql: ${TABLE}.OrdenItemPrecioTotalUnicaVezSinImpuesto ;;
  }

  dimension: orden_item_precio_unitario {
    type: number
    sql: ${TABLE}.OrdenItemPrecioUnitario ;;
  }

  dimension: orden_item_producto_padre_intid {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenItemProductoPadreINTId ;;
  }

  dimension: orden_item_producto_raiz_intid {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenItemProductoRaizINTId ;;
  }

  dimension: orden_item_requiere_cambio_dispositivo {
    type: string
    sql: ${TABLE}.OrdenItemRequiereCambioDispositivo ;;
  }

  dimension: orden_item_srcid {
    type: string
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.OrdenItemSRCId ;;
  }

  dimension: orden_item_sub_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenItemSubAccionNombre ;;
  }

  dimension: orden_item_sub_accion_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.OrdenItemSubAccionSK ;;
  }

  dimension: orden_item_sub_accion_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenItemSubAccionSRCId ;;
  }

  dimension: orden_item_sub_motivo_baja_nombre {
    type: string
    sql: ${TABLE}.OrdenItemSubMotivoBajaNombre ;;
  }

  dimension: orden_item_sub_motivo_baja_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.OrdenItemSubMotivoBajaSK ;;
  }

  dimension: orden_item_sub_motivo_baja_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenItemSubMotivoBajaSRCId ;;
  }

  dimension: orden_item_total_recurrente {
    type: number
    sql: ${TABLE}.OrdenItemTotalRecurrente ;;
  }

  dimension: orden_item_total_recurrente_sin_impuesto {
    type: number
    sql: ${TABLE}.OrdenItemTotalRecurrenteSinImpuesto ;;
  }

  dimension: orden_precio_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.OrdenPrecioSRCId ;;
  }

  dimension: orden_srcid {
    type: string
    hidden: yes
       sql: ${TABLE}.OrdenSRCId ;;
  }

  dimension: origen_srcid {
    type: number
    hidden: yes
    value_format_name: id
    sql: ${TABLE}.OrigenSRCId ;;
  }

  dimension: producto_adquirido_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.ProductoAdquiridoSRCId ;;
  }

  dimension: producto_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.ProductoSRCId ;;
  }
}
