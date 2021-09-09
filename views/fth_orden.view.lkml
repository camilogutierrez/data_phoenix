view: fth_orden {
  label: "Orden Historico"
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.FT_Orden` ;;

  ## PrimaryKey

  dimension: id {
    hidden: yes
    primary_key: yes
    type: string
    sql: CONCAT(CAST(${fecha_entidad} AS STRING FORMAT 'YYYYMMDD'),'-',${orden_item_srcid});;
  }

  ## Custom

  dimension: fecha_entidad {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FechaEntidad ;;
  }

  ## Orden

  dimension: orden_campania_id {
    type: string
    sql: ${TABLE}.Orden.OrdenCampaniaId ;;
    group_label: "Orden"
    group_item_label: "Orden Campania ID"
  }
  dimension: orden_canal_origen_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenCanalOrigenNombre ;;
    group_label: "Orden"
    group_item_label: "Orden Canal Origen Nombre"
  }
  dimension: orden_canal_origen_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenCanalOrigenSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Canal Origen Srcid"
  }
  dimension: orden_cft {
    type: number
    sql: ${TABLE}.Orden.OrdenCFT ;;
    group_label: "Orden"
    group_item_label: "Orden Cft"
  }
  dimension: orden_ciclo_facturacion {
    type: string
    sql: ${TABLE}.Orden.OrdenCicloFacturacion ;;
    group_label: "Orden"
    group_item_label: "Orden Ciclo Facturacion"
  }
  dimension: orden_codigo_banco {
    type: string
    sql: ${TABLE}.Orden.OrdenCodigoBanco ;;
    group_label: "Orden"
    group_item_label: "Orden Codigo Banco"
  }
  dimension: orden_codigo_operacion {
    type: string
    sql: ${TABLE}.Orden.OrdenCodigoOperacion ;;
    group_label: "Orden"
    group_item_label: "Orden Codigo Operacion"
  }
  dimension: orden_codigo_pais_envio {
    type: string
    sql: ${TABLE}.Orden.OrdenCodigoPaisEnvio ;;
    group_label: "Orden"
    group_item_label: "Orden Codigo Pais Envio"
  }
  dimension: orden_codigo_tarjeta {
    type: string
    sql: ${TABLE}.Orden.OrdenCodigoTarjeta ;;
    group_label: "Orden"
    group_item_label: "Orden Codigo Tarjeta"
  }
  dimension: orden_contacto_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenContactoNombre ;;
    group_label: "Orden"
    group_item_label: "Orden Contacto Nombre"
  }
  dimension: orden_cuenta_facturacion_id {
    type: string
    sql: ${TABLE}.Orden.OrdenCuentaFacturacionId ;;
    group_label: "Orden"
    group_item_label: "Orden Cuenta Facturacion ID"
  }
  dimension: orden_cuenta_facturacion_predeterminada_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenCuentaFacturacionPredeterminadaSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Cuenta Facturacion Predeterminada Srcid"
  }
  dimension: orden_cuenta_servicio_predeterminada_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenCuentaServicioPredeterminadaSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Cuenta Servicio Predeterminada Srcid"
  }
  dimension: orden_detalle_error_insalvable {
    type: string
    sql: ${TABLE}.Orden.OrdenDetalleErrorInsalvable ;;
    group_label: "Orden"
    group_item_label: "Orden Detalle Error Insalvable"
  }
  dimension: orden_direccion_entrega_id {
    type: string
    sql: ${TABLE}.Orden.OrdenDireccionEntregaId ;;
    group_label: "Orden"
    group_item_label: "Orden Direccion Entrega ID"
  }
  dimension: orden_direccion_instalacion_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenDireccionInstalacionSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Direccion Instalacion Srcid"
  }
  dimension: orden_ejecucion_cambio_ciclo {
    type: string
    sql: ${TABLE}.Orden.OrdenEjecucionCambioCiclo ;;
    group_label: "Orden"
    group_item_label: "Orden Ejecucion Cambio Ciclo"
  }
  dimension: orden_estado_aprobacion {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoAprobacion ;;
    group_label: "Orden"
    group_item_label: "Orden Estado Aprobacion"
  }
  dimension: orden_estado_consentimiento_cliente {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoConsentimientoCliente ;;
    group_label: "Orden"
    group_item_label: "Orden Estado Consentimiento Cliente"
  }
  dimension: orden_estado_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoNombre ;;
    group_label: "Orden"
    group_item_label: "Orden Estado Nombre"
    suggest_dimension: lk_orden_estado.orden_estado_nombre
  }
  dimension: orden_estado_provisionamiento_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoProvisionamientoNombre ;;
    group_label: "Orden"
    group_item_label: "Orden Estado Provisionamiento Nombre"
  }
  dimension: orden_estado_provisionamiento_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoProvisionamientoSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Estado Provisionamiento Srcid"
  }
  dimension: orden_estado_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Estado Srcid"
  }
  dimension: orden_estado_trackeo_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoTrackeoNombre ;;
    group_label: "Orden"
    group_item_label: "Orden Estado Trackeo Nombre"
  }
  dimension: orden_estado_trackeo_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoTrackeoSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Estado Trackeo Srcid"
  }
  dimension: orden_estado_validado_cliente {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoValidadoCliente ;;
    group_label: "Orden"
    group_item_label: "Orden Estado Validado Cliente"
  }
  dimension: orden_grupo_trabajo_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenGrupoTrabajoNombre ;;
    group_label: "Orden"
    group_item_label: "Orden Grupo Trabajo Nombre"
  }
  dimension: orden_lista_productos_cuenta {
    type: string
    sql: ${TABLE}.Orden.OrdenListaProductosCuenta ;;
    group_label: "Orden"
    group_item_label: "Orden Lista Productos Cuenta"
  }
  dimension: orden_llamada_id {
    type: string
    sql: ${TABLE}.Orden.OrdenLlamadaId ;;
    group_label: "Orden"
    group_item_label: "Orden Llamada ID"
  }
  dimension: orden_llamada_padre_id {
    type: string
    sql: ${TABLE}.Orden.OrdenLlamadaPadreId ;;
    group_label: "Orden"
    group_item_label: "Orden Llamada Padre ID"
  }
  dimension: orden_metodo_consentimiento {
    type: string
    sql: ${TABLE}.Orden.OrdenMetodoConsentimiento ;;
    group_label: "Orden"
    group_item_label: "Orden Metodo Consentimiento"
  }
  dimension: orden_metodo_entrega_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenMetodoEntregaNombre ;;
    group_label: "Orden"
    group_item_label: "Orden Metodo Entrega Nombre"
  }
  dimension: orden_metodo_entrega_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenMetodoEntregaSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Metodo Entrega Srcid"
  }
  dimension: orden_metodo_pago_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenMetodoPagoNombre ;;
    group_label: "Orden"
    group_item_label: "Orden Metodo Pago Nombre"
  }
  dimension: orden_motivo_anulacion_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenMotivoAnulacionNombre ;;
    group_label: "Orden"
    group_item_label: "Orden Motivo Anulacion Nombre"
  }
  dimension: orden_nombre_apellido_autorizado {
    type: string
    sql: ${TABLE}.Orden.OrdenNombreApellidoAutorizado ;;
    group_label: "Orden"
    group_item_label: "Orden Nombre Apellido Autorizado"
  }
  dimension: orden_numero {
    type: string
    sql: ${TABLE}.Orden.OrdenNumero ;;
    group_label: "Orden"
    group_item_label: "Orden Numero"
  }
  dimension: orden_numero_comprobante {
    type: string
    sql: ${TABLE}.Orden.OrdenNumeroComprobante ;;
    group_label: "Orden"
    group_item_label: "Orden Numero Comprobante"
  }
  dimension: orden_numero_pre_factura {
    type: string
    sql: ${TABLE}.Orden.OrdenNumeroPreFactura ;;
    group_label: "Orden"
    group_item_label: "Orden Numero Pre Factura"
  }
  dimension: orden_numero_seguimiento {
    type: string
    sql: ${TABLE}.Orden.OrdenNumeroSeguimiento ;;
    group_label: "Orden"
    group_item_label: "Orden Numero Seguimiento"
  }
  dimension: orden_original_id {
    type: string
    sql: ${TABLE}.Orden.OrdenOriginalId ;;
    group_label: "Orden"
    group_item_label: "Orden Original ID"
  }
  dimension: codproducto_plan_anterior {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.CODPRODUCTO_PLAN_ANTERIOR ;;
    group_label: "Orden Orden Plan Anterior"
    group_item_label: "Codproducto Plan Anterior"
  }
  dimension: codproductoraiz_plan_anterior {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.CODPRODUCTORAIZ_PLAN_ANTERIOR ;;
    group_label: "Orden Orden Plan Anterior"
    group_item_label: "Codproductoraiz Plan Anterior"
  }
  dimension: idordenitem_plan_anterior {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.IDORDENITEM_PLAN_ANTERIOR ;;
    group_label: "Orden Orden Plan Anterior"
    group_item_label: "Idordenitem Plan Anterior"
  }
  dimension: idprodadquirido_plan_anterior {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.IDPRODADQUIRIDO_PLAN_ANTERIOR ;;
    group_label: "Orden Orden Plan Anterior"
    group_item_label: "Idprodadquirido Plan Anterior"
  }
  dimension: idproducto_plan_anterior {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.IDPRODUCTO_PLAN_ANTERIOR ;;
    group_label: "Orden Orden Plan Anterior"
    group_item_label: "Idproducto Plan Anterior"
  }
  dimension: nombreproducto_plan_anterior {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.NOMBREPRODUCTO_PLAN_ANTERIOR ;;
    group_label: "Orden Orden Plan Anterior"
    group_item_label: "Nombreproducto Plan Anterior"
  }
  dimension: orden_item_srcid_plan_anterior {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.OrdenItemSRCId_PLAN_ANTERIOR ;;
    group_label: "Orden Orden Plan Anterior"
    group_item_label: "Orden Item Srcid Plan Anterior"
  }
  dimension: plan_anterior_orden_estado_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.PLAN_ANTERIOR_OrdenEstadoNombre ;;
    group_label: "Orden Orden Plan Anterior"
    group_item_label: "Plan Anterior Orden Estado Nombre"
  }
  dimension: plan_anterior_orden_item_accion_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.PLAN_ANTERIOR_OrdenItemAccionNombre ;;
    group_label: "Orden Orden Plan Anterior"
    group_item_label: "Plan Anterior Orden Item Accion Nombre"
  }
  dimension: prodadqreferente_plan_anterior {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.PRODADQREFERENTE_PLAN_ANTERIOR ;;
    group_label: "Orden Orden Plan Anterior"
    group_item_label: "Prodadqreferente Plan Anterior"
  }
  dimension: tipoproducto_plan_anterior {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.TIPOPRODUCTO_PLAN_ANTERIOR ;;
    group_label: "Orden Orden Plan Anterior"
    group_item_label: "Tipoproducto Plan Anterior"
  }
  dimension: orden_precio_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenPrecioSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Precio Srcid"
  }
  dimension: orden_prefactibiidad_distribucion {
    type: string
    sql: ${TABLE}.Orden.OrdenPrefactibiidadDistribucion ;;
    group_label: "Orden"
    group_item_label: "Orden Prefactibiidad Distribucion"
  }
  dimension: orden_prefactibilidad_codigo_area {
    type: string
    sql: ${TABLE}.Orden.OrdenPrefactibilidadCodigoArea ;;
    group_label: "Orden"
    group_item_label: "Orden Prefactibilidad Codigo Area"
  }
  dimension: orden_prefactibilidad_down_stream {
    type: string
    sql: ${TABLE}.Orden.OrdenPrefactibilidadDownStream ;;
    group_label: "Orden"
    group_item_label: "Orden Prefactibilidad Down Stream"
  }
  dimension: orden_prefactibilidad_flow {
    type: yesno
    sql: ${TABLE}.Orden.OrdenPrefactibilidadFLOW ;;
    group_label: "Orden"
    group_item_label: "Orden Prefactibilidad Flow"
  }
  dimension: orden_prefactibilidad_fuente_llamada {
    type: string
    sql: ${TABLE}.Orden.OrdenPrefactibilidadFuenteLlamada ;;
    group_label: "Orden"
    group_item_label: "Orden Prefactibilidad Fuente Llamada"
  }
  dimension: orden_prefactibilidad_hub_nodo {
    type: string
    sql: ${TABLE}.Orden.OrdenPrefactibilidadHubNodo ;;
    group_label: "Orden"
    group_item_label: "Orden Prefactibilidad Hub Nodo"
  }
  dimension: orden_prefactibilidad_poligo_comercial {
    type: string
    sql: ${TABLE}.Orden.OrdenPrefactibilidadPoligoComercial ;;
    group_label: "Orden"
    group_item_label: "Orden Prefactibilidad Poligo Comercial"
  }
  dimension: orden_prefactibilidad_region {
    type: string
    sql: ${TABLE}.Orden.OrdenPrefactibilidadRegion ;;
    group_label: "Orden"
    group_item_label: "Orden Prefactibilidad Region"
  }
  dimension: orden_prefactibilidad_tecno {
    type: string
    sql: ${TABLE}.Orden.OrdenPrefactibilidadTECNO ;;
    group_label: "Orden"
    group_item_label: "Orden Prefactibilidad Tecno"
  }
  dimension: orden_prefactibilidad_tipo_deco {
    type: string
    sql: ${TABLE}.Orden.OrdenPrefactibilidadTipoDeco ;;
    group_label: "Orden"
    group_item_label: "Orden Prefactibilidad Tipo Deco"
  }
  dimension: orden_prefactibilidad_toip {
    type: yesno
    sql: ${TABLE}.Orden.OrdenPrefactibilidadTOIP ;;
    group_label: "Orden"
    group_item_label: "Orden Prefactibilidad Toip"
  }
  dimension: orden_reemplazada_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenReemplazadaSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Reemplazada Srcid"
  }
  dimension: orden_seguimiento_entrega_id {
    type: string
    sql: ${TABLE}.Orden.OrdenSeguimientoEntregaId ;;
    group_label: "Orden"
    group_item_label: "Orden Seguimiento Entrega ID"
  }
  dimension: orden_servicio_entrega_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenServicioEntregaNombre ;;
    group_label: "Orden"
    group_item_label: "Orden Servicio Entrega Nombre"
  }
  dimension: orden_servicio_entrega_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenServicioEntregaSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Servicio Entrega Srcid"
  }
  dimension: orden_simulacion_factura {
    type: string
    sql: ${TABLE}.Orden.OrdenSimulacionFactura ;;
    group_label: "Orden"
    group_item_label: "Orden Simulacion Factura"
  }
  dimension: orden_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Srcid"
  }
  dimension: orden_srcid_usuario_activacion {
    type: string
    sql: ${TABLE}.Orden.OrdenSRCIdUsuarioActivacion ;;
    group_label: "Orden"
    group_item_label: "Orden Srcid Usuario Activacion"
  }
  dimension: orden_srcid_usuario_creacion {
    type: string
    sql: ${TABLE}.Orden.OrdenSRCIdUsuarioCreacion ;;
    group_label: "Orden"
    group_item_label: "Orden Srcid Usuario Creacion"
  }
  dimension: orden_srcid_usuario_mod {
    type: string
    sql: ${TABLE}.Orden.OrdenSRCIdUsuarioMod ;;
    group_label: "Orden"
    group_item_label: "Orden Srcid Usuario Mod"
  }
  dimension: orden_suspension_preexistente {
    type: string
    sql: ${TABLE}.Orden.OrdenSuspensionPreexistente ;;
    group_label: "Orden"
    group_item_label: "Orden Suspension Preexistente"
  }
  dimension: orden_tipo_cambio_plan_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoCambioPlanNombre ;;
    group_label: "Orden"
    group_item_label: "Orden Tipo Cambio Plan Nombre"
  }
  dimension: orden_tipo_cambio_plan_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoCambioPlanSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Tipo Cambio Plan Srcid"
  }
  dimension: orden_tipo_gestion_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoGestionNombre ;;
    group_label: "Orden"
    group_item_label: "Orden Tipo Gestion Nombre"
    suggest_dimension: lk_orden_tipo_gestion.orden_tipo_gestion_nombre
  }
  dimension: orden_tipo_gestion_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoGestionSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Tipo Gestion Srcid"
  }
  dimension: orden_tipo_sub_gestion_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoSubGestionNombre ;;
    group_label: "Orden"
    group_item_label: "Orden Tipo Sub Gestion Nombre"
  }
  dimension: orden_tipo_sub_gestion_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoSubGestionSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Tipo Sub Gestion Srcid"
  }
  dimension: orden_transaccion_entrega_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenTransaccionEntregaSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Transaccion Entrega Srcid"
  }

  ##Orden Timestamps

  dimension_group: fecha_orden_ejecucion_cambio {
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
    sql: ${TABLE}.Orden.Fechas.OrdenEjecucionCambioFecha ;;
  }
  dimension_group: fecha_orden_activacion {
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
    sql: ${TABLE}.Orden.Fechas.OrdenFechaActivacion ;;
  }
  dimension_group: fecha_orden_creacion {
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
    sql: ${TABLE}.Orden.Fechas.OrdenFechaCreacion ;;
  }
  dimension_group: fecha_orden_entrega {
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
    sql: ${TABLE}.Orden.Fechas.OrdenFechaEntrega ;;
  }
  dimension_group: fecha_orden_modificacion {
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
    sql: ${TABLE}.Orden.Fechas.OrdenFechaMod ;;
  }
  dimension_group: fecha_orden_venta {
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
    sql: ${TABLE}.Orden.Fechas.OrdenFechaVenta ;;
  }
  dimension_group: fecha_orden_finalizacion {
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
    sql: ${TABLE}.Orden.Fechas.OrdenFinOrden ;;
  }
  dimension_group: fecha_orden_inicio {
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
    sql: ${TABLE}.Orden.Fechas.OrdenInicioOrden ;;
  }

  ## Orden Flags

  dimension: orden_es_cierre_parcial {
    type: yesno
    sql: ${TABLE}.Orden.OrdenEsCierreParcial ;;
    group_label: "Orden"
    group_item_label: "Orden Es Cierre Parcial"
  }
  dimension: orden_es_cambio_mercado {
    type: yesno
    sql: ${TABLE}.Marcas.OrdenEsCambioMercado ;;
    group_label: "Marcas"
    group_item_label: "Orden Es Cambio Mercado"
  }
  dimension: orden_es_cambio_producto {
    type: yesno
    sql: ${TABLE}.Marcas.OrdenEsCambioProducto ;;
    group_label: "Marcas"
    group_item_label: "Orden Es Cambio Producto"
  }
  dimension: orden_es_campana {
    type: yesno
    sql: ${TABLE}.Marcas.OrdenEsCampana ;;
    group_label: "Marcas"
    group_item_label: "Orden Es Campana"
  }
  dimension: orden_marca_batch {
    type: yesno
    sql: ${TABLE}.Marcas.OrdenMarcaBatch ;;
    group_label: "Marcas"
    group_item_label: "Orden Marca Batch"
  }

  ## Orden Item

  dimension: promocion_codigo {
    type: string
    sql: ${TABLE}.PromocionCodigo ;;
  }
  dimension: promocion_nombre {
    type: string
    sql: ${TABLE}.PromocionNombre ;;
  }
  dimension: promocion_srcid {
    type: string
    sql: ${TABLE}.PromocionSRCId ;;
  }
  dimension: orden_item_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenItemAccionNombre ;;
    suggest_dimension: lk_orden_item_accion.orden_item_accion_nombre
  }
  dimension: orden_item_accion_srcid {
    type: string
    sql: ${TABLE}.OrdenItemAccionSRCId ;;
  }
  dimension: orden_item_codigo_deposito {
    type: string
    sql: ${TABLE}.OrdenItemCodigoDeposito ;;
  }
  dimension: orden_item_codigo_operacion {
    type: string
    sql: ${TABLE}.OrdenItemCodigoOperacion ;;
  }
  dimension: orden_item_estado_nombre {
    type: string
    sql: ${TABLE}.OrdenItemEstadoNombre ;;
  }
  dimension: orden_item_estado_provisionamiento_nombre {
    type: string
    sql: ${TABLE}.OrdenItemEstadoProvisionamientoNombre ;;
  }
  dimension: orden_item_estado_provisionamiento_srcid {
    type: string
    sql: ${TABLE}.OrdenItemEstadoProvisionamientoSRCId ;;
  }
  dimension: orden_item_estado_srcid {
    type: string
    sql: ${TABLE}.OrdenItemEstadoSRCId ;;
  }
  dimension: orden_item_estado_stock_nombre {
    type: string
    sql: ${TABLE}.OrdenItemEstadoStockNombre ;;
  }
  dimension: orden_item_instancia_srcid {
    type: string
    sql: ${TABLE}.OrdenItemInstanciaSRCId ;;
  }
  dimension: orden_item_mrc {
    type: number
    sql: ${TABLE}.OrdenItemMRC ;;
  }
  dimension: orden_item_nmu {
    type: string
    sql: ${TABLE}.OrdenItemNMU ;;
  }
  dimension: orden_item_numero {
    type: string
    sql: ${TABLE}.OrdenItemNumero ;;
  }
  dimension: orden_item_numero_secuencia {
    type: string
    sql: ${TABLE}.OrdenItemNumeroSecuencia ;;
  }
  dimension: orden_item_numero_serie {
    type: string
    sql: ${TABLE}.OrdenItemNumeroSerie ;;
  }
  dimension: orden_item_srcid {
    type: string
    sql: ${TABLE}.OrdenItemSRCId ;;
  }
  dimension: orden_item_sub_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenItemSubAccionNombre ;;
  }
  dimension: orden_item_sub_accion_srcid {
    type: string
    sql: ${TABLE}.OrdenItemSubAccionSRCId ;;
  }
  dimension: orden_item_sub_motivo_baja_nombre {
    type: string
    sql: ${TABLE}.OrdenItemSubMotivoBajaNombre ;;
  }
  dimension: orden_item_sub_motivo_baja_srcid {
    type: string
    sql: ${TABLE}.OrdenItemSubMotivoBajaSRCId ;;
  }
  dimension: origen_srcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.OrigenSRCId ;;
  }

  ## Orden Item Timestamps

  dimension_group: fecha_item_creacion {
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
    sql: ${TABLE}.Fechas.OrdenItemFechaCreacion ;;
  }
  dimension_group: fecha_item_modificacion {
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
    sql: ${TABLE}.Fechas.OrdenItemFechaModificacion ;;
  }

  ## Orden Item Flags

  dimension: orden_item_es_facturable {
    type: string
    sql: ${TABLE}.Marcas.OrdenItemEsFacturable ;;
    group_label: "Marcas"
    group_item_label: "Orden Item Es Facturable"
  }
  dimension: orden_item_marca_no_provisionable {
    type: string
    sql: ${TABLE}.Marcas.OrdenItemMarcaNoProvisionable ;;
    group_label: "Marcas"
    group_item_label: "Orden Item Marca No Provisionable"
  }
  dimension: orden_item_marca_ya_suspendido {
    type: string
    sql: ${TABLE}.Marcas.OrdenItemMarcaYaSuspendido ;;
    group_label: "Marcas"
    group_item_label: "Orden Item Marca Ya Suspendido"
  }
  dimension: orden_item_requiere_cambio_dispositivo {
    type: string
    sql: ${TABLE}.Marcas.OrdenItemRequiereCambioDispositivo ;;
    group_label: "Marcas"
    group_item_label: "Orden Item Requiere Cambio Dispositivo"
  }

  ## Caso

  dimension: caso_codigo {
    type: string
    sql: ${TABLE}.CASO.CasoCodigo ;;
    group_label: "Caso"
    group_item_label: "Caso Codigo"
  }
  dimension: caso_estado_nombre {
    type: string
    sql: ${TABLE}.CASO.CasoEstadoNombre ;;
    group_label: "Caso"
    group_item_label: "Caso Estado Nombre"
  }
  dimension: caso_mercado_donante_portacion {
    type: string
    sql: ${TABLE}.CASO.CasoMercadoDonantePortacion ;;
    group_label: "Caso"
    group_item_label: "Caso Mercado Donante Portacion"
  }
  dimension: caso_mercado_donante_portacion_srcid {
    type: string
    sql: ${TABLE}.CASO.CasoMercadoDonantePortacionSRCId ;;
    group_label: "Caso"
    group_item_label: "Caso Mercado Donante Portacion Srcid"
  }
  dimension: caso_operadora_receptora_srcid {
    type: string
    sql: ${TABLE}.CASO.CasoOperadoraReceptoraSRCId ;;
    group_label: "Caso"
    group_item_label: "Caso Operadora Receptora Srcid"
  }
  dimension: caso_padre_srcid {
    type: string
    sql: ${TABLE}.CASO.CasoPadreSRCId ;;
    group_label: "Caso"
    group_item_label: "Caso Padre Srcid"
  }
  dimension: caso_red_portacion_nombre {
    type: string
    sql: ${TABLE}.CASO.CasoRedPortacionNombre ;;
    group_label: "Caso"
    group_item_label: "Caso Red Portacion Nombre"
  }
  dimension: caso_sub_tipo_nombre {
    type: string
    sql: ${TABLE}.CASO.CasoSubTipoNombre ;;
    group_label: "Caso"
    group_item_label: "Caso Sub Tipo Nombre"
  }
  dimension: caso_tema_nombre {
    type: string
    sql: ${TABLE}.CASO.CasoTemaNombre ;;
    group_label: "Caso"
    group_item_label: "Caso Tema Nombre"
  }
  dimension: caso_tipo_nombre {
    type: string
    sql: ${TABLE}.CASO.CasoTipoNombre ;;
    group_label: "Caso"
    group_item_label: "Caso Tipo Nombre"
  }
  dimension: orden_caso_id {
    type: string
    sql: ${TABLE}.CASO.OrdenCasoId ;;
    group_label: "Caso"
    group_item_label: "Orden Caso ID"
  }

  ## Caso Timestamps

  dimension_group: fecha_caso_creacion {
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
    sql: ${TABLE}.CASO.CasoFechaCreacion ;;
  }

  ## Cliente

  dimension: cliente_email {
    type: string
    sql: ${TABLE}.Cliente.ClienteEmail ;;
    group_label: "Cliente"
    group_item_label: "Cliente Email"
  }
  dimension: cliente_razon_social {
    type: string
    sql: ${TABLE}.Cliente.ClienteRazonSocial ;;
    group_label: "Cliente"
    group_item_label: "Cliente Razon Social"
  }
  dimension: cliente_sfsegmento_nivel1 {
    type: string
    sql: ${TABLE}.Cliente.ClienteSFSegmentoNivel1 ;;
    group_label: "Cliente"
    group_item_label: "Cliente Sfsegmento Nivel1"
  }
  dimension: cliente_sfsegmento_nivel2 {
    type: string
    sql: ${TABLE}.Cliente.ClienteSFSegmentoNivel2 ;;
    group_label: "Cliente"
    group_item_label: "Cliente Sfsegmento Nivel2"
  }
  dimension: cliente_srcid {
    type: string
    sql: ${TABLE}.Cliente.ClienteSRCId ;;
    group_label: "Cliente"
    group_item_label: "Cliente Srcid"
  }
  dimension: cuenta_ciclo_facturacion {
    type: string
    sql: ${TABLE}.Cliente.CuentaCicloFacturacion ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Ciclo Facturacion"
  }
  dimension: cuenta_domicilio_envio_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaDomicilioEnvioSRCId ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Domicilio Envio Srcid"
  }
  dimension: cuenta_domicilio_facturacion_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaDomicilioFacturacionSRCId ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Domicilio Facturacion Srcid"
  }
  dimension: cuenta_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaSRCId ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Srcid"
  }
  dimension: cuenta_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.CuentaTipoNombre ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Tipo Nombre"
  }
  dimension: persona_apellido {
    type: string
    sql: ${TABLE}.Cliente.PersonaApellido ;;
    group_label: "Cliente"
    group_item_label: "Persona Apellido"
  }
  dimension: persona_documento_numero {
    type: string
    sql: ${TABLE}.Cliente.PersonaDocumentoNumero ;;
    group_label: "Cliente"
    group_item_label: "Persona Documento Numero"
  }
  dimension: persona_email {
    type: string
    sql: ${TABLE}.Cliente.PersonaEmail ;;
    group_label: "Cliente"
    group_item_label: "Persona Email"
  }
  dimension: persona_nombre {
    type: string
    sql: ${TABLE}.Cliente.PersonaNombre ;;
    group_label: "Cliente"
    group_item_label: "Persona Nombre"
  }
  dimension: persona_tipo_documento_nombre {
    type: string
    sql: ${TABLE}.Cliente.PersonaTipoDocumentoNombre ;;
    group_label: "Cliente"
    group_item_label: "Persona Tipo Documento Nombre"
  }

  ## Domicilio

  dimension: domicilio_codigo_postal_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioCodigoPostalEnv ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Codigo Postal Env"
  }
  dimension: domicilio_codigo_postal_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioCodigoPostalFact ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Codigo Postal Fact"
  }
  dimension: domicilio_latitud_env {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioLatitudEnv ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Latitud Env"
  }
  dimension: domicilio_latitud_fact {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioLatitudFact ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Latitud Fact"
  }
  dimension: domicilio_longitud_env {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioLongitudEnv ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Longitud Env"
  }
  dimension: domicilio_longitud_fact {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioLongitudFact ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Longitud Fact"
  }
  dimension: domicilio_numero_env {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioNumeroEnv ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Numero Env"
  }
  dimension: domicilio_numero_fact {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioNumeroFact ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Numero Fact"
  }
  dimension: domicilio_planta_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPlantaEnv ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Planta Env"
  }
  dimension: domicilio_planta_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPlantaFact ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Planta Fact"
  }
  dimension: domicilio_puerta_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPuertaEnv ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Puerta Env"
  }
  dimension: domicilio_puerta_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPuertaFact ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Puerta Fact"
  }
  dimension: domicilio_srcid_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioSRCIdEnv ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Srcid Env"
  }
  dimension: domicilio_srcid_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioSRCIdFact ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Srcid Fact"
  }
  dimension: nombre_calle_env {
    type: string
    sql: ${TABLE}.Domicilio.NombreCalleEnv ;;
    group_label: "Domicilio"
    group_item_label: "Nombre Calle Env"
  }
  dimension: nombre_calle_fact {
    type: string
    sql: ${TABLE}.Domicilio.NombreCalleFact ;;
    group_label: "Domicilio"
    group_item_label: "Nombre Calle Fact"
  }
  dimension: nombre_localidad_env {
    type: string
    sql: ${TABLE}.Domicilio.NombreLocalidadEnv ;;
    group_label: "Domicilio"
    group_item_label: "Nombre Localidad Env"
  }
  dimension: nombre_localidad_fact {
    type: string
    sql: ${TABLE}.Domicilio.NombreLocalidadFact ;;
    group_label: "Domicilio"
    group_item_label: "Nombre Localidad Fact"
  }
  dimension: nombre_provincia_env {
    type: string
    sql: ${TABLE}.Domicilio.NombreProvinciaEnv ;;
    group_label: "Domicilio"
    group_item_label: "Nombre Provincia Env"
  }
  dimension: nombre_provincia_fact {
    type: string
    sql: ${TABLE}.Domicilio.NombreProvinciaFact ;;
    group_label: "Domicilio"
    group_item_label: "Nombre Provincia Fact"
  }

  ## Medio de Pago

  dimension: medio_pago_entidad_financiera_nombre {
    type: string
    sql: ${TABLE}.MedioPago.MedioPagoEntidadFinancieraNombre ;;
    group_label: "Medio Pago"
    group_item_label: "Medio Pago Entidad Financiera Nombre"
  }
  dimension: medio_pago_srcid {
    type: string
    sql: ${TABLE}.MedioPago.MedioPagoSRCId ;;
    group_label: "Medio Pago"
    group_item_label: "Medio Pago Srcid"
  }
  dimension: medio_pago_tipo_nombre {
    type: string
    sql: ${TABLE}.MedioPago.MedioPagoTipoNombre ;;
    group_label: "Medio Pago"
    group_item_label: "Medio Pago Tipo Nombre"
  }

  ## Producto

  dimension: orden_item_producto_padre_srcid {
    type: string
    sql: ${TABLE}.Producto.OrdenItemProductoPadreSRCId ;;
    group_label: "Producto"
    group_item_label: "Orden Item Producto Padre Srcid"
  }
  dimension: orden_item_producto_raiz_srcid {
    type: string
    sql: ${TABLE}.Producto.OrdenItemProductoRaizSRCId ;;
    group_label: "Producto"
    group_item_label: "Orden Item Producto Raiz Srcid"
  }
  dimension: producto_atributo {
    type: string
    sql: ${TABLE}.Producto.ProductoAtributo ;;
    group_label: "Producto"
    group_item_label: "Producto Atributo"
  }
  dimension: producto_descripcion {
    type: string
    sql: ${TABLE}.Producto.ProductoDescripcion ;;
    group_label: "Producto"
    group_item_label: "Producto Descripcion"
  }
  dimension: producto_estado_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoEstadoNombre ;;
    group_label: "Producto"
    group_item_label: "Producto Estado Nombre"
  }
  dimension: producto_estado_srcid {
    type: string
    sql: ${TABLE}.Producto.ProductoEstadoSRCId ;;
    group_label: "Producto"
    group_item_label: "Producto Estado Srcid"
  }
  dimension: producto_familia_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoFamiliaNombre ;;
    group_label: "Producto"
    group_item_label: "Producto Familia Nombre"
  }
  dimension: producto_familia_srcid {
    type: string
    sql: ${TABLE}.Producto.ProductoFamiliaSRCId ;;
    group_label: "Producto"
    group_item_label: "Producto Familia Srcid"
  }
  dimension: producto_intcodigo {
    type: string
    sql: ${TABLE}.Producto.ProductoINTCodigo ;;
    group_label: "Producto"
    group_item_label: "Producto Intcodigo"
  }
  dimension: producto_intid {
    type: string
    sql: ${TABLE}.Producto.ProductoINTId ;;
    group_label: "Producto"
    group_item_label: "Producto Intid"
  }
  dimension: producto_mercado_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoMercadoNombre ;;
    group_label: "Producto"
    group_item_label: "Producto Mercado Nombre"
  }
  dimension: producto_mercado_srcid {
    type: string
    sql: ${TABLE}.Producto.ProductoMercadoSRCId ;;
    group_label: "Producto"
    group_item_label: "Producto Mercado Srcid"
  }
  dimension: producto_nmu {
    type: string
    sql: ${TABLE}.Producto.ProductoNmu ;;
    group_label: "Producto"
    group_item_label: "Producto Nmu"
  }
  dimension: producto_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoNombre ;;
    group_label: "Producto"
    group_item_label: "Producto Nombre"
  }
  dimension: producto_sistema_origen_descripcion {
    type: string
    sql: ${TABLE}.Producto.ProductoSistemaOrigenDescripcion ;;
    group_label: "Producto"
    group_item_label: "Producto Sistema Origen Descripcion"
  }
  dimension: producto_srcid {
    type: string
    sql: ${TABLE}.Producto.ProductoSRCId ;;
    group_label: "Producto"
    group_item_label: "Producto Srcid"
  }
  dimension: producto_sub_tipo_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoSubTipoNombre ;;
    group_label: "Producto"
    group_item_label: "Producto Sub Tipo Nombre"
  }
  dimension: producto_sub_tipo_srcid {
    type: string
    sql: ${TABLE}.Producto.ProductoSubTipoSRCId ;;
    group_label: "Producto"
    group_item_label: "Producto Sub Tipo Srcid"
  }
  dimension: producto_tipo_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoTipoNombre ;;
    group_label: "Producto"
    group_item_label: "Producto Tipo Nombre"
    suggest_dimension: lk_producto_tipo.producto_tipo_nombre
  }
  dimension: producto_tipo_srcid {
    type: string
    sql: ${TABLE}.Producto.ProductoTipoSRCId ;;
    group_label: "Producto"
    group_item_label: "Producto Tipo Srcid"
  }

  ## Producto Timestamps

  dimension_group: fecha_producto_creacion {
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
    sql: ${TABLE}.Producto.Fechas.ProductoFechaCreacion ;;
  }
  dimension_group: fecha_producto_modificacion {
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
    sql: ${TABLE}.Producto.Fechas.ProductoFechaModificacion ;;
  }
  dimension_group: fecha_producto_vigencia_desde {
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
    sql: ${TABLE}.Producto.Fechas.ProductoVigenciaDesde ;;
  }
  dimension_group: fecha_producto_vigencia_hasta {
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
    sql: ${TABLE}.Producto.Fechas.ProductoVigenciaHasta ;;
  }

  ## Producto Flags

  dimension: producto_es_activo {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoEsActivo ;;
    group_label: "Producto Marcas"
    group_item_label: "Producto Es Activo"
  }
  dimension: producto_es_assetizable {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoEsAssetizable ;;
    group_label: "Producto Marcas"
    group_item_label: "Producto Es Assetizable"
  }
  dimension: producto_es_configurable {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoEsConfigurable ;;
    group_label: "Producto Marcas"
    group_item_label: "Producto Es Configurable"
  }
  dimension: producto_es_orderable {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoEsOrderable ;;
    group_label: "Producto Marcas"
    group_item_label: "Producto Es Orderable"
  }
  dimension: producto_es_tangible {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoEsTangible ;;
    group_label: "Producto Marcas"
    group_item_label: "Producto Es Tangible"
  }

  ## Producto Adquirido

  dimension: producto_adquirido_caracteristica_gama_equipo {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoCaracteristicaGamaEquipo ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Caracteristica Gama Equipo"
  }
  dimension: producto_adquirido_caracteristica_modelo {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoCaracteristicaModelo ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Caracteristica Modelo"
  }
  dimension: producto_adquirido_caracteristica_nmu {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoCaracteristicaNMU ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Caracteristica Nmu"
  }
  dimension: producto_adquirido_codigo_suscripcion {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoCodigoSuscripcion ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Codigo Suscripcion"
  }
  dimension: producto_adquirido_departamento_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoDepartamentoNombre ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Departamento Nombre"
  }
  dimension: producto_adquirido_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoNombre ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Estado Nombre"
  }
  dimension: producto_adquirido_iccid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoICCID ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Iccid"
  }
  dimension: producto_adquirido_imei {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoIMEI ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Imei"
  }
  dimension: producto_adquirido_localidad_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoLocalidadNombre ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Localidad Nombre"
  }
  dimension: producto_adquirido_numero_linea {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoNumeroLinea ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Numero Linea"
  }
  dimension: producto_adquirido_prefijo_interurbano {
    type: number
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoPrefijoInterurbano ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Prefijo Interurbano"
  }
  dimension: producto_adquirido_prefijo_urbano {
    type: number
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoPrefijoUrbano ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Prefijo Urbano"
  }
  dimension: producto_adquirido_provincia_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoProvinciaNombre ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Provincia Nombre"
  }
  dimension: producto_adquirido_referente_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoReferenteSRCId ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Referente Srcid"
  }
  dimension: producto_adquirido_scrid_anterior {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSCRIdAnterior ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Scrid Anterior"
  }
  dimension: producto_adquirido_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSRCId ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Srcid"
  }
  dimension: producto_adquirido_sub_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSubEstadoNombre ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Sub Estado Nombre"
  }

  ## Producto Adquirido Timestamps

  dimension_group: fecha_producto_adquirido_baja {
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
    sql: ${TABLE}.ProductoAdquirido.Fechas.ProductoAdquiridoFechaBaja ;;
  }
  dimension_group: fecha_producto_adquirido_compra {
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
    sql: ${TABLE}.ProductoAdquirido.Fechas.ProductoAdquiridoFechaCompra ;;
  }

  ## Punto de Venta

  dimension: orden_punto_venta_id {
    type: string
    sql: ${TABLE}.PuntoVenta.OrdenPuntoVentaId ;;
    group_label: "Punto Venta"
    group_item_label: "Orden Punto Venta ID"
  }
  dimension: punto_venta_canal3 {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanal3 ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Canal3"
  }
  dimension: punto_venta_canal_pago {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanalPago ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Canal Pago"
  }
  dimension: punto_venta_canalidad2_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanalidad2Nombre ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Canalidad2 Nombre"
  }
  dimension: punto_venta_cod_punto_de_venta {
    type: number
    sql: ${TABLE}.PuntoVenta.PuntoVentaCodPuntoDeVenta ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Cod Punto De Venta"
  }
  dimension: punto_venta_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaNombre ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Nombre"
  }
  dimension: punto_venta_provincia {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaProvincia ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Provincia"
  }
  dimension: punto_venta_region {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaRegion ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Region"
  }
  dimension: punto_venta_srcid {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaSRCId ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Srcid"
  }
  dimension: punto_venta_subregion {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaSubregion ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Subregion"
  }
  dimension: punto_venta_tipo_atencion {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoAtencion ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Tipo Atencion"
  }
  dimension: punto_venta_tipo_canal_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoCanalNombre ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Tipo Canal Nombre"
  }
  dimension: punto_venta_tipo_contacto_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoContactoNombre ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Tipo Contacto Nombre"
  }
  dimension: punto_venta_tipo_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoNombre ;;
    group_label: "Punto Venta"
    group_item_label: "Punto Venta Tipo Nombre"
  }

  ## Usuario

  dimension: usuario_legajo {
    type: string
    sql: ${TABLE}.Usuario.UsuarioLegajo ;;
    group_label: "Usuario"
    group_item_label: "Usuario Legajo"
  }
  dimension: usuario_nombre_completo {
    type: string
    sql: ${TABLE}.Usuario.UsuarioNombreCompleto ;;
    group_label: "Usuario"
    group_item_label: "Usuario Nombre Completo"
  }

## Custom Dimensions

  dimension: es_numero_linea {
    hidden: yes
    type: yesno
    sql: LENGHT(TRIM((${producto_adquirido_numero_linea})) = 10;;
  }

## Metricas Orden Item

  measure: orden_item_count {
    type: count
    drill_fields: []
  }
  measure: orden_item_cantidad {
    type: sum
    sql: ${TABLE}.Metricas.OrdenItemCantidad ;;
    group_label: "Orden Item"
    group_item_label: "Cantidad"
    description: "Cantidad de Items"
  }
  measure: orden_item_cargo_recurrente {
    type: sum
    sql: ${TABLE}.Metricas.OrdenItemCargoRecurrente ;;
    group_label: "Orden Item"
    group_item_label: "Cargo Recurrente"
  }
  measure: orden_item_cargo_recurrente_sin_impuesto {
    type: sum
    sql: ${TABLE}.Metricas.OrdenItemCargoRecurrenteSinImpuesto ;;
    group_label: "Orden Item"
    group_item_label: "Cargo Recurrente Sin Impuesto"
  }
  measure: orden_item_cargo_unica_vez {
    type: sum
    sql: ${TABLE}.Metricas.OrdenItemCargoUnicaVez ;;
    group_label: "Orden Item"
    group_item_label: "Cargo Unica Vez"
  }
  measure: orden_item_cargo_unica_vez_sin_impuesto {
    type: sum
    sql: ${TABLE}.Metricas.OrdenItemCargoUnicaVezSinImpuesto ;;
    group_label: "Orden Item"
    group_item_label: "Cargo Unica Vez Sin Impuesto"
  }
  measure: orden_item_precio_calculado_recurrente {
    type: sum
    sql: ${TABLE}.Metricas.OrdenItemPrecioCalculadoRecurrente ;;
    group_label: "Orden Item"
    group_item_label: "Precio Calculado Recurrente"
  }
  measure: orden_item_precio_calculado_recurrente_sin_impuesto {
    type: sum
    sql: ${TABLE}.Metricas.OrdenItemPrecioCalculadoRecurrenteSinImpuesto ;;
    group_label: "Orden Item"
    group_item_label: "Precio Calculado Recurrente Sin Impuesto"
  }
  measure: orden_item_precio_dcto_unica_vez {
    type: sum
    sql: ${TABLE}.Metricas.OrdenItemPrecioDctoUnicaVez ;;
    group_label: "Orden Item"
    group_item_label: "Precio Descuento Unica Vez"
  }
  measure: orden_item_precio_dcto_unica_vez_sin_impuesto {
    type: sum
    sql: ${TABLE}.Metricas.OrdenItemPrecioDctoUnicaVezSinImpuesto ;;
    group_label: "Orden Item"
    group_item_label: "Precio Dcto Unica Vez Sin Impuesto"
  }
  measure: orden_item_precio_efectivo_unica_vez {
    type: sum
    sql: ${TABLE}.Metricas.OrdenItemPrecioEfectivoUnicaVez ;;
    group_label: "Orden Item"
    group_item_label: "Precio Efectivo Unica Vez"
  }
  measure: orden_item_precio_efectivo_unica_vez_sin_impuesto {
    type: sum
    sql: ${TABLE}.Metricas.OrdenItemPrecioEfectivoUnicaVezSinImpuesto ;;
    group_label: "Orden Item"
    group_item_label: "Precio Efectivo Unica Vez Sin Impuesto"
  }
  measure: orden_item_precio_lista {
    type: sum
    sql: ${TABLE}.Metricas.OrdenItemPrecioLista ;;
    group_label: "Orden Item"
    group_item_label: "Orden Item Precio Lista"
  }
  measure: orden_item_precio_recurrente {
    type: sum
    sql: ${TABLE}.Metricas.OrdenItemPrecioRecurrente ;;
    group_label: "Orden Item"
    group_item_label: "Precio Recurrente"
  }
  measure: orden_item_precio_recurrente_sin_impuesto {
    type: sum
    sql: ${TABLE}.Metricas.OrdenItemPrecioRecurrenteSinImpuesto ;;
    group_label: "Orden Item"
    group_item_label: "Precio Recurrente Sin Impuesto"
  }
  measure: orden_item_precio_total_unica_vez {
    type: sum
    sql: ${TABLE}.Metricas.OrdenItemPrecioTotalUnicaVez ;;
    group_label: "Orden Item"
    group_item_label: "Precio Total Unica Vez"
  }
  measure: orden_item_precio_total_unica_vez_sin_impuesto {
    type: sum
    sql: ${TABLE}.Metricas.OrdenItemPrecioTotalUnicaVezSinImpuesto ;;
    group_label: "Orden Item"
    group_item_label: "Precio Total Unica Vez Sin Impuesto"
  }
  measure: orden_item_precio_unitario {
    type: sum
    sql: ${TABLE}.Metricas.OrdenItemPrecioUnitario ;;
    group_label: "Orden Item"
    group_item_label: "Precio Unitario"
  }
  measure: orden_item_total_recurrente {
    type: sum
    sql: ${TABLE}.Metricas.OrdenItemTotalRecurrente ;;
    group_label: "Orden Item"
    group_item_label: "Total Recurrente"
  }
  measure: orden_item_total_recurrente_sin_impuesto {
    type: sum
    sql: ${TABLE}.Metricas.OrdenItemTotalRecurrenteSinImpuesto ;;
    group_label: "Orden Item"
    group_item_label: "Total Recurrente Sin Impuesto"
  }

## Metricas Orden

  measure: orden_precio_total {
    type: sum
    sql: ${TABLE}.Metricas.OrdenPrecioTotal ;;
    group_label: "Orden"
    group_item_label: "Precio Total"
  }
  measure: orden_precio_total_recurrente {
    type: sum
    sql: ${TABLE}.Metricas.OrdenPrecioTotalRecurrente ;;
    group_label: "Orden"
    group_item_label: "Precio Total Recurrente"
  }
  measure: orden_precio_total_una_vez {
    type: sum
    sql: ${TABLE}.Metricas.OrdenPrecioTotalUnaVez ;;
    group_label: "Orden"
    group_item_label: "Precio Total Una Vez"
  }
  measure: orden_precio_valor_ajuste {
    type: sum
    sql: ${TABLE}.Metricas.OrdenPrecioValorAjuste ;;
    group_label: "Orden"
    group_item_label: "Precio Valor Ajuste"
  }

## Metricas Calculadas

  measure: cambio_plan_efectiva_count {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Cambios de Plan Efectiva"
    description: "Ordenes de Cambios de Plan Activadas POSPAGO, HIBRIDO, PREPAGO"
    filters: [
        orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "CAMBIO DE PLAN"
      , orden_item_accion_nombre: "AGREGAR"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO"
    ]
  }

  measure: orden_count {
    type: count_distinct
    sql: ${orden_srcid} ;;
    group_label: "Orden"
    group_item_label: "Cantidad de Ordenes"
  }

  measure: venta_terminal_efectiva_count {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Venta de Terminal Efectiva"
    description: "Ordenes de Ventas de dispositivos móviles activas"
    filters: [
        orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "VENTA"
      , orden_item_accion_nombre: "AGREGAR"
      , producto_tipo_nombre: "DISPOSITIVO"
    ]
  }

  measure: baja_voluntaria_efectiva_count {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Baja Voluntaria Efectiva"
    description: "Ordenes de Bajas Voluntarias Cumplidas"
    filters: [
        orden_estado_nombre: "ACTIVADA"
      , orden_item_accion_nombre: "DESCONECTAR"
      , orden_tipo_gestion_nombre: "DESCONEXION"
      , orden_item_sub_motivo_baja_nombre: "PEDIDO DE BAJA"
    ]
  }

  measure: baja_fraude_efectiva_count {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Baja Fraude Efectiva"
    description: "Ordenes de Bajas por Fraude Cumplidas"
    filters: [
        orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "DESCONECTAR"
      , orden_tipo_sub_gestion_nombre: "FRAUDE"
    ]
  }

  measure: baja_tiempo_efectiva_count {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Baja Masiva"
    description: "Ordenes de Bajas por Tiempo Cumplidas"
    filters: [
        orden_estado_nombre: "ACTIVADA"
      , orden_item_accion_nombre: "DESCONECTAR"
      , orden_tipo_sub_gestion_nombre: "DESCONEXION"
      , orden_item_sub_motivo_baja_nombre: "POR TIEMPO"
    ]
  }

  measure: baja_mora_efectiva_count {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Baja Mora Efectiva"
    description: "Ordenes de Bajas por Mora"
    filters: [
        orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "DESCONECTAR"
      , orden_tipo_sub_gestion_nombre: "MOROSIDAD"
    ]
  }

  measure: cambio_sim_efectiva_count {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Cambio SIM Efectiva"
    description: "Ordenes de Cambio de SIM Activadas"
    filters: [
        orden_estado_nombre: "ACTIVADA"
      , orden_item_accion_nombre: "EXISTENTE"
      , es_numero_linea: "Yes"
      , orden_tipo_gestion_nombre: "CAMBIO DE TARJETA SIM, CAMBIO DE TARJETA SIM POR SINIESTRO"
    ]
  }

  measure: baja_suspension_portout_count {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Baja Suspension Portout Efectiva"
    description: "Ordenes de tipo gestion suspension por PORTOUT Efectivas"
    filters: [
        orden_estado_nombre: "ACTIVADA"
      , orden_item_sub_accion_nombre: "SUSPENDIDO-PORTABILIDAD"
      , orden_tipo_gestion_nombre: "SUSPENSION"
      , orden_tipo_sub_gestion_nombre: "PORTOUT"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO"
    ]
  }

  measure: demanda_retencion_count {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Demanda Retencion"
    description: "Intenciones de bajas,vistas desde las ordenes registradas"
    filters: [
        orden_estado_nombre:"ACTIVADA , INICIADA"
      , orden_tipo_gestion_nombre: "DESCONEXION , CAMBIO DE PLAN , BAJA / RETENCION, FIDELIZACION , VENTA"
      , orden_tipo_sub_gestion_nombre: "PEDIDO DE BAJA, RETENCION, CAMBIO DE PLAN, FIDELIZACION"
    ]
  }

  measure: upselling_plan_count {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Plan Upselling"
    description: "Ordenes de Cambio de plan cuyo precio con promocion es mayor al Asset que se desconecta"
    filters: [
        orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "CAMBIO DE PLAN"
      , orden_tipo_cambio_plan_nombre: "UPGRADE"
      , orden_item_accion_nombre: "AGREGAR"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO"
    ]
  }

  measure: downselling_plan_count {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Plan Downselling"
    description: "Ordenes de Cambio de plan cuyo precio con promocion es menor al Asset que se desconecta"
    filters: [
        orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "CAMBIO DE PLAN"
      , orden_tipo_cambio_plan_nombre: "DOWNGRADE"
      , orden_item_accion_nombre: "AGREGAR"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO"
    ]
  }

  measure: cross_sell_plan_count {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Plan Cross Sell"
    description: "Ordenes Cambio de plan cuyo precio con promocion es igual al Asset que se desconecta"
    filters: [
        orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "CAMBIO DE PLAN"
      , orden_tipo_cambio_plan_nombre: "CROSS SELL"
      , orden_item_accion_nombre: "AGREGAR"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO"
    ]
  }

  measure: portin_brutas_count {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Portin Brutas"
    description: "Ordenes de portabilidad registradas"
    filters:[
      , orden_item_accion_nombre: "AGREGAR"
      , orden_tipo_gestion_nombre: "VENTA PORTIN"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO"
    ]
  }

  measure: portin_netas_count {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Portin Netas"
    description: "Ordenes de portabilidad activadas/netas"
    filters:[
        orden_estado_nombre: "ACTIVADA"
      , orden_item_accion_nombre: "AGREGAR"
      , orden_tipo_gestion_srcid: "PORTIN ACTIVAR"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO"
    ]
  }

  measure: suspen_voluntaria_movil_count {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Suspension Voluntaria Movil"
    description: "Ordenes de suspensión voluntaria por pedido de baja"
    filters:[
        orden_estado_nombre: "ACTIVADA"
      , orden_item_sub_accion_nombre: "SUSPEND-VOLUNTARIA"
      , orden_tipo_gestion_nombre: "SUSPENSION"
      , orden_tipo_sub_gestion_nombre: "PEDIDO DE BAJA"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO"
    ]
  }

}
