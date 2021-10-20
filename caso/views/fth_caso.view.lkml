# The name of this view in Looker is "Fth Caso"
view: fth_caso_view {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.FTH_Caso`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _auditoria___fecha_creacion {
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
    sql: ${TABLE}._auditoria._fechaCreacion ;;
    group_label: "Auditoria"
    group_item_label: "Fecha Creacion"
  }

  dimension_group: _auditoria___fecha_ultima_actualizacion {
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
    sql: ${TABLE}._auditoria._fechaUltimaActualizacion ;;
    group_label: "Auditoria"
    group_item_label: "Fecha Ultima Actualizacion"
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " Auditoria Sesion ID" in Explore.

  dimension: _auditoria___sesion_id {
    type: string
    sql: ${TABLE}._auditoria._sesionId ;;
    group_label: "Auditoria"
    group_item_label: "Sesion ID"
  }

  dimension: _auditoria___usuario_creacion {
    type: string
    sql: ${TABLE}._auditoria._usuarioCreacion ;;
    group_label: "Auditoria"
    group_item_label: "Usuario Creacion"
  }

  dimension: _auditoria___usuario_ultima_actualizacion {
    type: string
    sql: ${TABLE}._auditoria._usuarioUltimaActualizacion ;;
    group_label: "Auditoria"
    group_item_label: "Usuario Ultima Actualizacion"
  }

  dimension: caso_acuerdo_servicio_sk {
    type: string
    sql: ${TABLE}.CasoAcuerdoServicioSK ;;
  }

  dimension: caso_acuerdo_servicio_srcid {
    type: string
    sql: ${TABLE}.CasoAcuerdoServicioSRCId ;;
  }

  dimension: caso_antigua_direccion_facturacion {
    type: string
    sql: ${TABLE}.CasoAntiguaDireccionFacturacion ;;
  }

  dimension: caso_area_atencion {
    type: string
    sql: ${TABLE}.CasoAreaAtencion ;;
  }

  dimension: caso_asesoria_retencion {
    type: string
    sql: ${TABLE}.CasoAsesoriaRetencion ;;
  }

  dimension: caso_asignacion_atributo_sk {
    type: string
    sql: ${TABLE}.CasoAsignacionAtributoSK ;;
  }

  dimension: caso_asignacion_atributo_srcid {
    type: string
    sql: ${TABLE}.CasoAsignacionAtributoSRCId ;;
  }

  dimension: caso_asistencia_tecnica_ya_tien {
    type: string
    sql: ${TABLE}.CasoAsistenciaTecnicaYaTien ;;
  }

  dimension: caso_asset_relacionado_numero_linea {
    type: string
    sql: ${TABLE}.CasoAssetRelacionadoNumeroLinea ;;
  }

  dimension: caso_cambio_aplicado {
    type: string
    sql: ${TABLE}.CasoCambioAplicado ;;
  }

  dimension: caso_canal_cierre_nombre {
    type: string
    sql: ${TABLE}.CasoCanalCierreNombre ;;
  }

  dimension: caso_canal_cierre_sk {
    type: number
    sql: ${TABLE}.CasoCanalCierreSK ;;
  }

  dimension: caso_canal_cierre_srcid {
    type: string
    sql: ${TABLE}.CasoCanalCierreSRCId ;;
  }

  dimension: caso_cantidad_cuotas {
    type: number
    sql: ${TABLE}.CasoCantidadCuotas ;;
  }

  dimension: caso_cargos_operacion {
    type: string
    sql: ${TABLE}.CasoCargosOperacion ;;
  }

  dimension: caso_caso_externo_funcional_sk {
    type: string
    sql: ${TABLE}.CasoCasoExternoFuncionalSK ;;
  }

  dimension: caso_caso_externo_funcional_srcid {
    type: string
    sql: ${TABLE}.CasoCasoExternoFuncionalSRCId ;;
  }

  dimension: caso_caso_externo_sk {
    type: string
    sql: ${TABLE}.CasoCasoExternoSK ;;
  }

  dimension: caso_caso_externo_srcid {
    type: string
    sql: ${TABLE}.CasoCasoExternoSRCId ;;
  }

  dimension: caso_categoria {
    type: string
    sql: ${TABLE}.CasoCategoria ;;
  }

  dimension: caso_causa_raiz_ajuste {
    type: string
    sql: ${TABLE}.CasoCausaRaizAjuste ;;
  }

  dimension: caso_cbualias {
    type: string
    sql: ${TABLE}.CasoCBUAlias ;;
  }

  dimension: caso_ciudad {
    type: string
    sql: ${TABLE}.CasoCiudad ;;
  }

  dimension: caso_cliente_sk {
    type: string
    sql: ${TABLE}.CasoClienteSK ;;
  }

  dimension: caso_cliente_srcid {
    type: string
    sql: ${TABLE}.CasoClienteSRCId ;;
  }

  dimension: caso_cod_servicio {
    type: string
    sql: ${TABLE}.CasoCodServicio ;;
  }

  dimension: caso_codigo_error {
    type: string
    sql: ${TABLE}.CasoCodigoError ;;
  }

  dimension_group: caso_comentarios__caso_comentario_fecha_creacion {
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
    sql: ${TABLE}.CasoComentarios.CasoComentarioFechaCreacion ;;
    group_label: "Caso Comentarios"
    group_item_label: "Caso Comentario Fecha Creacion"
  }

  dimension_group: caso_comentarios__caso_comentario_fecha_creacion_src {
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
    sql: ${TABLE}.CasoComentarios.CasoComentarioFechaCreacionSRC ;;
    group_label: "Caso Comentarios"
    group_item_label: "Caso Comentario Fecha Creacion Src"
  }

  dimension: caso_comentarios__caso_comentario_sk {
    type: string
    sql: ${TABLE}.CasoComentarios.CasoComentarioSK ;;
    group_label: "Caso Comentarios"
    group_item_label: "Caso Comentario Sk"
  }

  dimension: caso_comentarios__caso_comentario_srcid {
    type: string
    sql: ${TABLE}.CasoComentarios.CasoComentarioSRCId ;;
    group_label: "Caso Comentarios"
    group_item_label: "Caso Comentario Srcid"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: caso_comentarios__comentarios {
    hidden: yes
    sql: ${TABLE}.CasoComentarios.Comentarios ;;
    group_label: "Caso Comentarios"
    group_item_label: "Comentarios"
  }

  dimension: caso_comentarios__ultimo_comentario {
    type: string
    sql: ${TABLE}.CasoComentarios.UltimoComentario ;;
    group_label: "Caso Comentarios"
    group_item_label: "Ultimo Comentario"
  }

  dimension: caso_cuenta_destino_sk {
    type: string
    sql: ${TABLE}.CasoCuentaDestinoSK ;;
  }

  dimension: caso_cuenta_destino_srcid {
    type: string
    sql: ${TABLE}.CasoCuentaDestinoSRCId ;;
  }

  dimension: caso_cuenta_facturacion_srcid {
    type: string
    sql: ${TABLE}.CasoCuentaFacturacionSRCId ;;
  }

  dimension: caso_cuenta_servicio_sk {
    type: string
    sql: ${TABLE}.CasoCuentaServicioSK ;;
  }

  dimension: caso_cuenta_servicio_srcid {
    type: string
    sql: ${TABLE}.CasoCuentaServicioSRCId ;;
  }

  dimension: caso_cupon_tarjeta {
    type: string
    sql: ${TABLE}.CasoCuponTarjeta ;;
  }

  dimension: caso_descripcion_motivo_rechazo {
    type: string
    sql: ${TABLE}.CasoDescripcionMotivoRechazo ;;
  }

  dimension: caso_detalle_problema_muleto {
    type: string
    sql: ${TABLE}.CasoDetalleProblemaMuleto ;;
  }

  dimension: caso_diagnostico_tecnico {
    type: string
    sql: ${TABLE}.CasoDiagnosticoTecnico ;;
  }

  dimension: caso_direccion_email {
    type: string
    sql: ${TABLE}.CasoDireccionEmail ;;
  }

  dimension: caso_direccion_siniestro_srcid {
    type: string
    sql: ${TABLE}.CasoDireccionSiniestroSRCId ;;
  }

  dimension: caso_email_origen {
    type: string
    sql: ${TABLE}.CasoEmailOrigen ;;
  }

  dimension: caso_entidad_pago {
    type: string
    sql: ${TABLE}.CasoEntidadPago ;;
  }

  dimension: caso_equipo_iniciador {
    type: string
    sql: ${TABLE}.CasoEquipoIniciador ;;
  }

  dimension: caso_equipo_propietario_sk {
    type: string
    sql: ${TABLE}.CasoEquipoPropietarioSK ;;
  }

  dimension: caso_equipo_propietario_srcid {
    type: string
    sql: ${TABLE}.CasoEquipoPropietarioSRCId ;;
  }

  dimension: caso_estado_nombre {
    type: string
    sql: ${TABLE}.CasoEstadoNombre ;;
  }

  dimension: caso_estado_proceso_portacion {
    type: string
    sql: ${TABLE}.CasoEstadoProcesoPortacion ;;
  }

  dimension: caso_estado_sk {
    type: number
    sql: ${TABLE}.CasoEstadoSK ;;
  }

  dimension: caso_estado_srcid {
    type: string
    sql: ${TABLE}.CasoEstadoSRCId ;;
  }

  dimension: caso_fax_contacto {
    type: string
    sql: ${TABLE}.CasoFaxContacto ;;
  }

  dimension: caso_gama_servicio_tecnico {
    type: string
    sql: ${TABLE}.CasoGamaServicioTecnico ;;
  }

  dimension: caso_gerencia_solicitante {
    type: string
    sql: ${TABLE}.CasoGerenciaSolicitante ;;
  }

  dimension: caso_gestion_muleto_sk {
    type: string
    sql: ${TABLE}.CasoGestionMuletoSK ;;
  }

  dimension: caso_gestion_muleto_srcid {
    type: string
    sql: ${TABLE}.CasoGestionMuletoSRCId ;;
  }

  dimension: caso_gravedad {
    type: string
    sql: ${TABLE}.CasoGravedad ;;
  }

  dimension: caso_hito {
    hidden: yes
    sql: ${TABLE}.CasoHito ;;
  }

  dimension: caso_hito_estado {
    type: string
    sql: ${TABLE}.CasoHitoEstado ;;
  }

  dimension: caso_horas_negocio_nombre {
    type: string
    sql: ${TABLE}.CasoHorasNegocioNombre ;;
  }

  dimension: caso_horas_negocio_sk {
    type: number
    sql: ${TABLE}.CasoHorasNegocioSK ;;
  }

  dimension: caso_horas_negocio_srcid {
    type: string
    sql: ${TABLE}.CasoHorasNegocioSRCId ;;
  }

  dimension: caso_imeianterior {
    type: string
    sql: ${TABLE}.CasoIMEIAnterior ;;
  }

  dimension: caso_imeiservicio_tecnico {
    type: string
    sql: ${TABLE}.CasoIMEIServicioTecnico ;;
  }

  dimension: caso_impacto {
    type: string
    sql: ${TABLE}.CasoImpacto ;;
  }

  dimension: caso_incidente_descripcion {
    type: string
    sql: ${TABLE}.CasoIncidenteDescripcion ;;
  }

  dimension: caso_informacion_inventario {
    type: string
    sql: ${TABLE}.CasoInformacionInventario ;;
  }

  dimension: caso_lista_plazos {
    type: string
    sql: ${TABLE}.CasoListaPlazos ;;
  }

  dimension: caso_llamada_padre_picsk {
    type: string
    sql: ${TABLE}.CasoLlamadaPadrePICSK ;;
  }

  dimension: caso_llamada_padre_picsrcid {
    type: string
    sql: ${TABLE}.CasoLlamadaPadrePICSRCId ;;
  }

  dimension: caso_llamada_padre_sk {
    type: string
    sql: ${TABLE}.CasoLlamadaPadreSK ;;
  }

  dimension: caso_llamada_padre_srcid {
    type: string
    sql: ${TABLE}.CasoLlamadaPadreSRCId ;;
  }

  dimension: caso_llamada_picsk {
    type: string
    sql: ${TABLE}.CasoLlamadaPICSK ;;
  }

  dimension: caso_llamada_picsrcid {
    type: string
    sql: ${TABLE}.CasoLlamadaPICSRCId ;;
  }

  dimension: caso_llamada_sk {
    type: string
    sql: ${TABLE}.CasoLlamadaSK ;;
  }

  dimension: caso_llamada_srcid {
    type: string
    sql: ${TABLE}.CasoLlamadaSRCId ;;
  }

  dimension: caso_marca_servicio_tecnico {
    type: string
    sql: ${TABLE}.CasoMarcaServicioTecnico ;;
  }

  dimension: caso_medio_pago {
    type: string
    sql: ${TABLE}.CasoMedioPago ;;
  }

  dimension: caso_medio_pago_sk {
    type: string
    sql: ${TABLE}.CasoMedioPagoSK ;;
  }

  dimension: caso_medio_pago_srcid {
    type: string
    sql: ${TABLE}.CasoMedioPagoSRCId ;;
  }

  dimension: caso_mercado_donante_portacion {
    type: string
    sql: ${TABLE}.CasoMercadoDonantePortacion ;;
  }

  dimension: caso_mercado_donante_portacion_sk {
    type: string
    sql: ${TABLE}.CasoMercadoDonantePortacionSK ;;
  }

  dimension: caso_mercado_donante_portacion_srcid {
    type: string
    sql: ${TABLE}.CasoMercadoDonantePortacionSRCId ;;
  }

  dimension: caso_modalidad_recupero {
    type: string
    sql: ${TABLE}.CasoModalidadRecupero ;;
  }

  dimension: caso_modelo_servicio_tecnico {
    type: string
    sql: ${TABLE}.CasoModeloServicioTecnico ;;
  }

  dimension: caso_motivo_baja_nombre {
    type: string
    sql: ${TABLE}.CasoMotivoBajaNombre ;;
  }

  dimension: caso_motivo_baja_sk {
    type: number
    sql: ${TABLE}.CasoMotivoBajaSK ;;
  }

  dimension: caso_motivo_baja_srcid {
    type: string
    sql: ${TABLE}.CasoMotivoBajaSRCId ;;
  }

  dimension: caso_motivo_cancelacion_acuerdo_pago {
    type: string
    sql: ${TABLE}.CasoMotivoCancelacionAcuerdoPago ;;
  }

  dimension: caso_motivo_contacto_nombre {
    type: string
    sql: ${TABLE}.CasoMotivoContactoNombre ;;
  }

  dimension: caso_motivo_contacto_sk {
    type: number
    sql: ${TABLE}.CasoMotivoContactoSK ;;
  }

  dimension: caso_motivo_contacto_srcid {
    type: string
    sql: ${TABLE}.CasoMotivoContactoSRCId ;;
  }

  dimension: caso_motivo_nombre {
    type: string
    sql: ${TABLE}.CasoMotivoNombre ;;
  }

  dimension: caso_motivo_rechazo_portacion {
    type: string
    sql: ${TABLE}.CasoMotivoRechazoPortacion ;;
  }

  dimension: caso_motivo_rechazo_portacion_nombre {
    type: string
    sql: ${TABLE}.CasoMotivoRechazoPortacionNombre ;;
  }

  dimension: caso_motivo_sk {
    type: number
    sql: ${TABLE}.CasoMotivoSK ;;
  }

  dimension: caso_motivo_srcid {
    type: string
    sql: ${TABLE}.CasoMotivoSRCId ;;
  }

  dimension: caso_msisdn_lista_portout {
    type: string
    sql: ${TABLE}.CasoMsisdnListaPortout ;;
  }

  dimension: caso_nivel_servicio_sk {
    type: string
    sql: ${TABLE}.CasoNivelServicioSK ;;
  }

  dimension: caso_nivel_servicio_srcid {
    type: string
    sql: ${TABLE}.CasoNivelServicioSRCId ;;
  }

  dimension: caso_nrnportacion_sk {
    type: string
    sql: ${TABLE}.CasoNRNPortacionSK ;;
  }

  dimension: caso_nrnportacion_srcid {
    type: string
    sql: ${TABLE}.CasoNRNPortacionSRCId ;;
  }

  dimension: caso_nro_tarjeta {
    type: string
    sql: ${TABLE}.CasoNroTarjeta ;;
  }

  dimension: caso_nueva_direccion_facturacion {
    type: string
    sql: ${TABLE}.CasoNuevaDireccionFacturacion ;;
  }

  dimension: caso_nuevo_numero_toip {
    type: yesno
    sql: ${TABLE}.CasoNuevoNumeroTOIP ;;
  }

  dimension: caso_numero {
    type: string
    sql: ${TABLE}.CasoNumero ;;
  }

  dimension: caso_numero_comprobante {
    type: string
    sql: ${TABLE}.CasoNumeroComprobante ;;
  }

  dimension: caso_numero_documento_portacion {
    type: number
    sql: ${TABLE}.CasoNumeroDocumentoPortacion ;;
  }

  dimension: caso_numero_estado {
    type: string
    sql: ${TABLE}.CasoNumeroEstado ;;
  }

  dimension: caso_numero_factura {
    type: string
    sql: ${TABLE}.CasoNumeroFactura ;;
  }

  dimension: caso_numero_linea {
    type: string
    sql: ${TABLE}.CasoNumeroLinea ;;
  }

  dimension: caso_numero_lote {
    type: string
    sql: ${TABLE}.CasoNumeroLote ;;
  }

  dimension: caso_numero_referente_pago {
    type: string
    sql: ${TABLE}.CasoNumeroReferentePago ;;
  }

  dimension: caso_numero_telefono {
    type: string
    sql: ${TABLE}.CasoNumeroTelefono ;;
  }

  dimension: caso_numero_telefono_movil {
    type: string
    sql: ${TABLE}.CasoNumeroTelefonoMovil ;;
  }

  dimension: caso_numeros_lineas {
    type: string
    sql: ${TABLE}.CasoNumerosLineas ;;
  }

  dimension: caso_operadora_receptora_sk {
    type: string
    sql: ${TABLE}.CasoOperadoraReceptoraSK ;;
  }

  dimension: caso_operadora_receptora_srcid {
    type: string
    sql: ${TABLE}.CasoOperadoraReceptoraSRCId ;;
  }

  dimension: caso_origen {
    type: string
    sql: ${TABLE}.CasoOrigen ;;
  }

  dimension: caso_padre_sk {
    type: string
    sql: ${TABLE}.CasoPadreSK ;;
  }

  dimension: caso_padre_srcid {
    type: string
    sql: ${TABLE}.CasoPadreSRCId ;;
  }

  dimension: caso_pinportabilidad {
    type: string
    sql: ${TABLE}.CasoPINPortabilidad ;;
  }

  dimension: caso_pintarjeta_prepago {
    type: string
    sql: ${TABLE}.CasoPINTarjetaPrepago ;;
  }

  dimension: caso_plazo_vencido_recepcion_factura {
    type: string
    sql: ${TABLE}.CasoPlazoVencidoRecepcionFactura ;;
  }

  dimension: caso_porcentaje_proteccion {
    type: number
    sql: ${TABLE}.CasoPorcentajeProteccion ;;
  }

  dimension: caso_postdateo {
    type: string
    sql: ${TABLE}.CasoPostdateo ;;
  }

  dimension: caso_preferencia_contacto_nombre {
    type: string
    sql: ${TABLE}.CasoPreferenciaContactoNombre ;;
  }

  dimension: caso_prioridad_nombre {
    type: string
    sql: ${TABLE}.CasoPrioridadNombre ;;
  }

  dimension: caso_prioridad_sk {
    type: number
    sql: ${TABLE}.CasoPrioridadSK ;;
  }

  dimension: caso_prioridad_srcid {
    type: string
    sql: ${TABLE}.CasoPrioridadSRCId ;;
  }

  dimension: caso_procedimiento {
    type: string
    sql: ${TABLE}.CasoProcedimiento ;;
  }

  dimension: caso_producto_adquirido_proteccion_sk {
    type: string
    sql: ${TABLE}.CasoProductoAdquiridoProteccionSK ;;
  }

  dimension: caso_producto_adquirido_proteccion_srcid {
    type: string
    sql: ${TABLE}.CasoProductoAdquiridoProteccionSRCId ;;
  }

  dimension: caso_provincia {
    type: string
    sql: ${TABLE}.CasoProvincia ;;
  }

  dimension: caso_punto_venta_usuario_nombre {
    type: string
    sql: ${TABLE}.CasoPuntoVentaUsuarioNombre ;;
  }

  dimension: caso_red_portacion_nombre {
    type: string
    sql: ${TABLE}.CasoRedPortacionNombre ;;
  }

  dimension: caso_resolucion_incidente {
    type: string
    sql: ${TABLE}.CasoResolucionIncidente ;;
  }

  dimension: caso_resultado_retencion_nombre {
    type: string
    sql: ${TABLE}.CasoResultadoRetencionNombre ;;
  }

  dimension: caso_seriales_recupero {
    type: string
    sql: ${TABLE}.CasoSerialesRecupero ;;
  }

  dimension: caso_servicio_tecnico_sintoma {
    type: string
    sql: ${TABLE}.CasoServicioTecnicoSintoma ;;
  }

  dimension: caso_sk {
    type: string
    sql: ${TABLE}.CasoSK ;;
  }

  dimension: caso_srcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.CasoSRCId ;;
  }

  dimension: caso_sub_area_atencion_nombre {
    type: string
    sql: ${TABLE}.CasoSubAreaAtencionNombre ;;
  }

  dimension: caso_sub_estado_proceso_portacion {
    type: string
    sql: ${TABLE}.CasoSubEstadoProcesoPortacion ;;
  }

  dimension: caso_sub_motivo_baja_nombre {
    type: string
    sql: ${TABLE}.CasoSubMotivoBajaNombre ;;
  }

  dimension: caso_sub_motivo_baja_sk {
    type: number
    sql: ${TABLE}.CasoSubMotivoBajaSK ;;
  }

  dimension: caso_sub_motivo_baja_srcid {
    type: string
    sql: ${TABLE}.CasoSubMotivoBajaSRCId ;;
  }

  dimension: caso_sub_tipo_incidente {
    type: string
    sql: ${TABLE}.CasoSubTipoIncidente ;;
  }

  dimension: caso_sub_tipo_nombre {
    type: string
    sql: ${TABLE}.CasoSubTipoNombre ;;
  }

  dimension: caso_sub_tipo_sk {
    type: number
    sql: ${TABLE}.CasoSubTipoSK ;;
  }

  dimension: caso_sub_tipo_srcid {
    type: string
    sql: ${TABLE}.CasoSubTipoSRCId ;;
  }

  dimension: caso_subcategoria {
    type: string
    sql: ${TABLE}.CasoSubcategoria ;;
  }

  dimension: caso_subtipo_movimiento_portacion_nombre {
    type: string
    sql: ${TABLE}.CasoSubtipoMovimientoPortacionNombre ;;
  }

  dimension: caso_subtipo_movimiento_portacion_sk {
    type: number
    sql: ${TABLE}.CasoSubtipoMovimientoPortacionSK ;;
  }

  dimension: caso_subtipo_movimiento_portacion_srcid {
    type: string
    sql: ${TABLE}.CasoSubtipoMovimientoPortacionSRCId ;;
  }

  dimension: caso_telefono_origen {
    type: string
    sql: ${TABLE}.CasoTelefonoOrigen ;;
  }

  dimension: caso_tema_nombre {
    type: string
    sql: ${TABLE}.CasoTemaNombre ;;
  }

  dimension: caso_tipo_ajuste {
    type: string
    sql: ${TABLE}.CasoTipoAjuste ;;
  }

  dimension: caso_tipo_asset {
    type: string
    sql: ${TABLE}.CasoTipoAsset ;;
  }

  dimension: caso_tipo_cargo {
    type: string
    sql: ${TABLE}.CasoTipoCargo ;;
  }

  dimension: caso_tipo_concepto {
    type: string
    sql: ${TABLE}.CasoTipoConcepto ;;
  }

  dimension: caso_tipo_documento_portacion {
    type: string
    sql: ${TABLE}.CasoTipoDocumentoPortacion ;;
  }

  dimension: caso_tipo_item_nombre {
    type: string
    sql: ${TABLE}.CasoTipoItemNombre ;;
  }

  dimension: caso_tipo_item_sk {
    type: number
    sql: ${TABLE}.CasoTipoItemSK ;;
  }

  dimension: caso_tipo_item_srcid {
    type: string
    sql: ${TABLE}.CasoTipoItemSRCId ;;
  }

  dimension: caso_tipo_motivo_contacto_nombre {
    type: string
    sql: ${TABLE}.CasoTipoMotivoContactoNombre ;;
  }

  dimension: caso_tipo_movimiento_portacion {
    type: string
    sql: ${TABLE}.CasoTipoMovimientoPortacion ;;
  }

  dimension: caso_tipo_nombre {
    type: string
    sql: ${TABLE}.CasoTipoNombre ;;
  }

  dimension: caso_tipo_operacion {
    type: string
    sql: ${TABLE}.CasoTipoOperacion ;;
  }

  dimension: caso_tipo_operacion_ajuste {
    type: string
    sql: ${TABLE}.CasoTipoOperacionAjuste ;;
  }

  dimension: caso_tipo_proceso {
    type: string
    sql: ${TABLE}.CasoTipoProceso ;;
  }

  dimension: caso_tipo_recurrencia_nombre {
    type: string
    sql: ${TABLE}.CasoTipoRecurrenciaNombre ;;
  }

  dimension: caso_tipo_recurrencia_sk {
    type: number
    sql: ${TABLE}.CasoTipoRecurrenciaSK ;;
  }

  dimension: caso_tipo_recurrencia_srcid {
    type: string
    sql: ${TABLE}.CasoTipoRecurrenciaSRCId ;;
  }

  dimension: caso_tipo_registro_nombre {
    type: string
    sql: ${TABLE}.CasoTipoRegistroNombre ;;
  }

  dimension: caso_tipo_seleccion {
    type: string
    sql: ${TABLE}.CasoTipoSeleccion ;;
  }

  dimension: caso_tipo_sk {
    type: number
    sql: ${TABLE}.CasoTipoSK ;;
  }

  dimension: caso_tipo_srcid {
    type: string
    sql: ${TABLE}.CasoTipoSRCId ;;
  }

  dimension: caso_tipo_vencimiento {
    type: string
    sql: ${TABLE}.CasoTipoVencimiento ;;
  }

  dimension: caso_unidad_medida_nombre {
    type: string
    sql: ${TABLE}.CasoUnidadMedidaNombre ;;
  }

  dimension: caso_usuario_asignado_sk {
    type: string
    sql: ${TABLE}.CasoUsuarioAsignadoSK ;;
  }

  dimension: caso_usuario_asignado_srcid {
    type: string
    sql: ${TABLE}.CasoUsuarioAsignadoSRCId ;;
  }

  dimension: caso_usuario_modificacion_sk {
    type: string
    sql: ${TABLE}.CasoUsuarioModificacionSK ;;
  }

  dimension: caso_usuario_modificacion_srcid {
    type: string
    sql: ${TABLE}.CasoUsuarioModificacionSRCId ;;
  }

  dimension: caso_valores_pago {
    type: string
    sql: ${TABLE}.CasoValoresPago ;;
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

  dimension: cliente__cliente_segmento1_sk {
    type: number
    sql: ${TABLE}.Cliente.ClienteSegmento1SK ;;
    group_label: "Cliente"
    group_item_label: "Cliente Segmento1 Sk"
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

  dimension: cliente__cliente_segmento2_sk {
    type: number
    sql: ${TABLE}.Cliente.ClienteSegmento2SK ;;
    group_label: "Cliente"
    group_item_label: "Cliente Segmento2 Sk"
  }

  dimension: cliente__cliente_segmento2_srcid {
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento2SRCId ;;
    group_label: "Cliente"
    group_item_label: "Cliente Segmento2 Srcid"
  }

  dimension: cliente__cliente_sk {
    type: string
    sql: ${TABLE}.Cliente.ClienteSK ;;
    group_label: "Cliente"
    group_item_label: "Cliente Sk"
  }

  dimension: cliente__cliente_srcid {
    type: string
    sql: ${TABLE}.Cliente.ClienteSRCId ;;
    group_label: "Cliente"
    group_item_label: "Cliente Srcid"
  }

  dimension: cliente__cuenta_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.CuentaTipoNombre ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Tipo Nombre"
  }

  dimension: cliente__cuenta_tipo_sk {
    type: number
    sql: ${TABLE}.Cliente.CuentaTipoSK ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Tipo Sk"
  }

  dimension: cliente__cuenta_tipo_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaTipoSRCId ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Tipo Srcid"
  }

  dimension: cliente__persona_apellido {
    type: string
    sql: ${TABLE}.Cliente.PersonaApellido ;;
    group_label: "Cliente"
    group_item_label: "Persona Apellido"
  }

  dimension: cliente__persona_documento_numero {
    type: string
    sql: ${TABLE}.Cliente.PersonaDocumentoNumero ;;
    group_label: "Cliente"
    group_item_label: "Persona Documento Numero"
  }

  dimension: cliente__persona_nombre {
    type: string
    sql: ${TABLE}.Cliente.PersonaNombre ;;
    group_label: "Cliente"
    group_item_label: "Persona Nombre"
  }

  dimension: cliente__persona_tipo_documento_srcid {
    type: string
    sql: ${TABLE}.Cliente.PersonaTipoDocumentoSRCId ;;
    group_label: "Cliente"
    group_item_label: "Persona Tipo Documento Srcid"
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

  dimension_group: fechas__caso_fecha_acuerdo_desde {
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
    sql: ${TABLE}.Fechas.CasoFechaAcuerdoDesde ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Acuerdo Desde"
  }

  dimension_group: fechas__caso_fecha_acuerdo_desde_src {
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
    sql: ${TABLE}.Fechas.CasoFechaAcuerdoDesdeSRC ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Acuerdo Desde Src"
  }

  dimension_group: fechas__caso_fecha_acuerdo_hasta {
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
    sql: ${TABLE}.Fechas.CasoFechaAcuerdoHasta ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Acuerdo Hasta"
  }

  dimension_group: fechas__caso_fecha_acuerdo_hasta_src {
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
    sql: ${TABLE}.Fechas.CasoFechaAcuerdoHastaSRC ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Acuerdo Hasta Src"
  }

  dimension_group: fechas__caso_fecha_ajuste_desde_src {
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
    sql: ${TABLE}.Fechas.CasoFechaAjusteDesdeSRC ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Ajuste Desde Src"
  }

  dimension_group: fechas__caso_fecha_ajuste_hasta_src {
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
    sql: ${TABLE}.Fechas.CasoFechaAjusteHastaSRC ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Ajuste Hasta Src"
  }

  dimension_group: fechas__caso_fecha_cierre {
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
    sql: ${TABLE}.Fechas.CasoFechaCierre ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Cierre"
  }

  dimension_group: fechas__caso_fecha_cierre_estimada {
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
    sql: ${TABLE}.Fechas.CasoFechaCierreEstimada ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Cierre Estimada"
  }

  dimension_group: fechas__caso_fecha_cierre_estimada_src {
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
    sql: ${TABLE}.Fechas.CasoFechaCierreEstimadaSRC ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Cierre Estimada Src"
  }

  dimension_group: fechas__caso_fecha_cierre_src {
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
    sql: ${TABLE}.Fechas.CasoFechaCierreSRC ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Cierre Src"
  }

  dimension_group: fechas__caso_fecha_creacion {
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
    sql: ${TABLE}.Fechas.CasoFechaCreacion ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Creacion"
  }

  dimension_group: fechas__caso_fecha_creacion_src {
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
    sql: ${TABLE}.Fechas.CasoFechaCreacionSRC ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Creacion Src"
  }

  dimension_group: fechas__caso_fecha_fin_garantia_reparacion_src {
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
    sql: ${TABLE}.Fechas.CasoFechaFinGarantiaReparacionSRC ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Fin Garantia Reparacion Src"
  }

  dimension_group: fechas__caso_fecha_inicio {
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
    sql: ${TABLE}.Fechas.CasoFechaInicio ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Inicio"
  }

  dimension_group: fechas__caso_fecha_inicio_src {
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
    sql: ${TABLE}.Fechas.CasoFechaInicioSRC ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Inicio Src"
  }

  dimension_group: fechas__caso_fecha_mod {
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
    sql: ${TABLE}.Fechas.CasoFechaMod ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Mod"
  }

  dimension_group: fechas__caso_fecha_mod_src {
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
    sql: ${TABLE}.Fechas.CasoFechaModSRC ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Mod Src"
  }

  dimension_group: fechas__caso_fecha_modificacion {
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
    sql: ${TABLE}.Fechas.CasoFechaModificacion ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Modificacion"
  }

  dimension_group: fechas__caso_fecha_modificacion_src {
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
    sql: ${TABLE}.Fechas.CasoFechaModificacionSRC ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Modificacion Src"
  }

  dimension_group: fechas__caso_fecha_pago_src {
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
    sql: ${TABLE}.Fechas.CasoFechaPagoSRC ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Pago Src"
  }

  dimension_group: fechas__caso_fecha_solicitud {
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
    sql: ${TABLE}.Fechas.CasoFechaSolicitud ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Solicitud"
  }

  dimension_group: fechas__caso_fecha_solicitud_src {
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
    sql: ${TABLE}.Fechas.CasoFechaSolicitudSRC ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Solicitud Src"
  }

  dimension_group: fechas__caso_fecha_vencimiento {
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
    sql: ${TABLE}.Fechas.CasoFechaVencimiento ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Vencimiento"
  }

  dimension_group: fechas__caso_fecha_vencimiento_src {
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
    sql: ${TABLE}.Fechas.CasoFechaVencimientoSRC ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Vencimiento Src"
  }

  dimension_group: fechas__caso_fecha_ventana_portacion {
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
    sql: ${TABLE}.Fechas.CasoFechaVentanaPortacion ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Ventana Portacion"
  }

  dimension_group: fechas__caso_fecha_ventana_portacion_src {
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
    sql: ${TABLE}.Fechas.CasoFechaVentanaPortacionSRC ;;
    group_label: "Fechas"
    group_item_label: "Caso Fecha Ventana Portacion Src"
  }

  dimension: grupo_trabajo_sk {
    type: string
    sql: ${TABLE}.GrupoTrabajoSK ;;
  }

  dimension: grupo_trabajo_srcid {
    type: string
    sql: ${TABLE}.GrupoTrabajoSRCId ;;
  }

  dimension: marcas__caso_comprobantes_adjuntos {
    type: yesno
    sql: ${TABLE}.Marcas.CasoComprobantesAdjuntos ;;
    group_label: "Marcas"
    group_item_label: "Caso Comprobantes Adjuntos"
  }

  dimension: marcas__caso_marca_cambio_garantia {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaCambioGarantia ;;
    group_label: "Marcas"
    group_item_label: "Caso Marca Cambio Garantia"
  }

  dimension: marcas__caso_marca_cambio_placa {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaCambioPlaca ;;
    group_label: "Marcas"
    group_item_label: "Caso Marca Cambio Placa"
  }

  dimension: marcas__caso_marca_caso_cerrado {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaCasoCerrado ;;
    group_label: "Marcas"
    group_item_label: "Caso Marca Caso Cerrado"
  }

  dimension: marcas__caso_marca_derivado_reparacion {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaDerivadoReparacion ;;
    group_label: "Marcas"
    group_item_label: "Caso Marca Derivado Reparacion"
  }

  dimension: marcas__caso_marca_en_garantia {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaEnGarantia ;;
    group_label: "Marcas"
    group_item_label: "Caso Marca En Garantia"
  }

  dimension: marcas__caso_marca_equipo_reparado {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaEquipoReparado ;;
    group_label: "Marcas"
    group_item_label: "Caso Marca Equipo Reparado"
  }

  dimension: marcas__caso_marca_escalado {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaEscalado ;;
    group_label: "Marcas"
    group_item_label: "Caso Marca Escalado"
  }

  dimension: marcas__caso_marca_excepcion {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaExcepcion ;;
    group_label: "Marcas"
    group_item_label: "Caso Marca Excepcion"
  }

  dimension: marcas__caso_marca_garantia_reparacion {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaGarantiaReparacion ;;
    group_label: "Marcas"
    group_item_label: "Caso Marca Garantia Reparacion"
  }

  dimension: marcas__caso_marca_gestion_muleto {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaGestionMuleto ;;
    group_label: "Marcas"
    group_item_label: "Caso Marca Gestion Muleto"
  }

  dimension: marcas__caso_marca_muleto_completo {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaMuletoCompleto ;;
    group_label: "Marcas"
    group_item_label: "Caso Marca Muleto Completo"
  }

  dimension: marcas__caso_marca_nace_cerrado {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaNaceCerrado ;;
    group_label: "Marcas"
    group_item_label: "Caso Marca Nace Cerrado"
  }

  dimension: marcas__caso_marca_pendiente_programacion_cita {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaPendienteProgramacionCita ;;
    group_label: "Marcas"
    group_item_label: "Caso Marca Pendiente Programacion Cita"
  }

  dimension: marcas__caso_marca_pendiente_programacion_recupero {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaPendienteProgramacionRecupero ;;
    group_label: "Marcas"
    group_item_label: "Caso Marca Pendiente Programacion Recupero"
  }

  dimension: marcas__caso_marca_proteccion {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaProteccion ;;
    group_label: "Marcas"
    group_item_label: "Caso Marca Proteccion"
  }

  dimension: marcas__caso_marca_re_llamado {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaReLlamado ;;
    group_label: "Marcas"
    group_item_label: "Caso Marca Re Llamado"
  }

  dimension: marcas__caso_marca_re_trabajo {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaReTrabajo ;;
    group_label: "Marcas"
    group_item_label: "Caso Marca Re Trabajo"
  }

  dimension: marcas__caso_marca_reclamo {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaReclamo ;;
    group_label: "Marcas"
    group_item_label: "Caso Marca Reclamo"
  }

  dimension: marcas__caso_marca_requiere_cita {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaRequiereCita ;;
    group_label: "Marcas"
    group_item_label: "Caso Marca Requiere Cita"
  }

  dimension: marcas__caso_marca_requiere_conciliacion {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaRequiereConciliacion ;;
    group_label: "Marcas"
    group_item_label: "Caso Marca Requiere Conciliacion"
  }

  dimension: marcas__caso_marca_requiere_ticket_icd {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaRequiereTicketICD ;;
    group_label: "Marcas"
    group_item_label: "Caso Marca Requiere Ticket Icd"
  }

  dimension: marcas__marca_caso_padre {
    type: yesno
    sql: ${TABLE}.Marcas.MarcaCasoPadre ;;
    group_label: "Marcas"
    group_item_label: "Marca Caso Padre"
  }

  dimension: numericos__caso_cantidad_ajuste {
    type: string
    sql: ${TABLE}.Numericos.CasoCantidadAjuste ;;
    group_label: "Numericos"
    group_item_label: "Caso Cantidad Ajuste"
  }

  dimension: numericos__caso_cantidad_casos_afectados {
    type: number
    sql: ${TABLE}.Numericos.CasoCantidadCasosAfectados ;;
    group_label: "Numericos"
    group_item_label: "Caso Cantidad Casos Afectados"
  }

  dimension: numericos__caso_cantidad_lineas_portacion {
    type: number
    sql: ${TABLE}.Numericos.CasoCantidadLineasPortacion ;;
    group_label: "Numericos"
    group_item_label: "Caso Cantidad Lineas Portacion"
  }

  dimension: numericos__caso_cantidad_re_llamados {
    type: number
    sql: ${TABLE}.Numericos.CasoCantidadReLlamados ;;
    group_label: "Numericos"
    group_item_label: "Caso Cantidad Re Llamados"
  }

  dimension: numericos__caso_cantidad_reclamos_generados {
    type: number
    sql: ${TABLE}.Numericos.CasoCantidadReclamosGenerados ;;
    group_label: "Numericos"
    group_item_label: "Caso Cantidad Reclamos Generados"
  }

  dimension: numericos__caso_importe_pago_areclamar {
    type: number
    sql: ${TABLE}.Numericos.CasoImportePagoAReclamar ;;
    group_label: "Numericos"
    group_item_label: "Caso Importe Pago Areclamar"
  }

  dimension: numericos__caso_limite_compra_actual {
    type: number
    sql: ${TABLE}.Numericos.CasoLimiteCompraActual ;;
    group_label: "Numericos"
    group_item_label: "Caso Limite Compra Actual"
  }

  dimension: numericos__caso_limite_compra_aprobado {
    type: number
    sql: ${TABLE}.Numericos.CasoLimiteCompraAprobado ;;
    group_label: "Numericos"
    group_item_label: "Caso Limite Compra Aprobado"
  }

  dimension: numericos__caso_limite_compra_solicitado {
    type: number
    sql: ${TABLE}.Numericos.CasoLimiteCompraSolicitado ;;
    group_label: "Numericos"
    group_item_label: "Caso Limite Compra Solicitado"
  }

  dimension: numericos__caso_limite_consumo_actual {
    type: number
    sql: ${TABLE}.Numericos.CasoLimiteConsumoActual ;;
    group_label: "Numericos"
    group_item_label: "Caso Limite Consumo Actual"
  }

  dimension: numericos__caso_limite_consumo_aprobado {
    type: number
    sql: ${TABLE}.Numericos.CasoLimiteConsumoAprobado ;;
    group_label: "Numericos"
    group_item_label: "Caso Limite Consumo Aprobado"
  }

  dimension: numericos__caso_limite_consumo_solicitado {
    type: number
    sql: ${TABLE}.Numericos.CasoLimiteConsumoSolicitado ;;
    group_label: "Numericos"
    group_item_label: "Caso Limite Consumo Solicitado"
  }

  dimension: numericos__caso_llamadas_repetidas {
    type: number
    sql: ${TABLE}.Numericos.CasoLlamadasRepetidas ;;
    group_label: "Numericos"
    group_item_label: "Caso Llamadas Repetidas"
  }

  dimension: numericos__caso_monto_ajuste {
    type: number
    sql: ${TABLE}.Numericos.CasoMontoAjuste ;;
    group_label: "Numericos"
    group_item_label: "Caso Monto Ajuste"
  }

  dimension: numericos__caso_saldo_vencido {
    type: number
    sql: ${TABLE}.Numericos.CasoSaldoVencido ;;
    group_label: "Numericos"
    group_item_label: "Caso Saldo Vencido"
  }

  dimension: orden__orden_canal_origen_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenCanalOrigenNombre ;;
    group_label: "Orden"
    group_item_label: "Orden Canal Origen Nombre"
  }

  dimension: orden__orden_canal_origen_sk {
    type: number
    sql: ${TABLE}.Orden.OrdenCanalOrigenSK ;;
    group_label: "Orden"
    group_item_label: "Orden Canal Origen Sk"
  }

  dimension: orden__orden_canal_origen_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenCanalOrigenSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Canal Origen Srcid"
  }

  dimension: orden__orden_estado_aprobacion_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoAprobacionNombre ;;
    group_label: "Orden"
    group_item_label: "Orden Estado Aprobacion Nombre"
  }

  dimension: orden__orden_estado_aprobacion_sk {
    type: number
    sql: ${TABLE}.Orden.OrdenEstadoAprobacionSK ;;
    group_label: "Orden"
    group_item_label: "Orden Estado Aprobacion Sk"
  }

  dimension: orden__orden_estado_aprobacion_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoAprobacionSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Estado Aprobacion Srcid"
  }

  dimension: orden__orden_estado_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoNombre ;;
    group_label: "Orden"
    group_item_label: "Orden Estado Nombre"
  }

  dimension: orden__orden_estado_provisionamiento_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoProvisionamientoNombre ;;
    group_label: "Orden"
    group_item_label: "Orden Estado Provisionamiento Nombre"
  }

  dimension: orden__orden_estado_provisionamiento_sk {
    type: number
    sql: ${TABLE}.Orden.OrdenEstadoProvisionamientoSK ;;
    group_label: "Orden"
    group_item_label: "Orden Estado Provisionamiento Sk"
  }

  dimension: orden__orden_estado_provisionamiento_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoProvisionamientoSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Estado Provisionamiento Srcid"
  }

  dimension: orden__orden_estado_sk {
    type: number
    sql: ${TABLE}.Orden.OrdenEstadoSK ;;
    group_label: "Orden"
    group_item_label: "Orden Estado Sk"
  }

  dimension: orden__orden_estado_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Estado Srcid"
  }

  dimension: orden__orden_estado_trackeo_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoTrackeoNombre ;;
    group_label: "Orden"
    group_item_label: "Orden Estado Trackeo Nombre"
  }

  dimension: orden__orden_estado_trackeo_sk {
    type: number
    sql: ${TABLE}.Orden.OrdenEstadoTrackeoSK ;;
    group_label: "Orden"
    group_item_label: "Orden Estado Trackeo Sk"
  }

  dimension: orden__orden_estado_trackeo_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoTrackeoSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Estado Trackeo Srcid"
  }

  dimension_group: orden__orden_fecha_activacion {
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
    sql: ${TABLE}.Orden.OrdenFechaActivacion ;;
    group_label: "Orden"
    group_item_label: "Orden Fecha Activacion"
  }

  dimension_group: orden__orden_fecha_activacion_src {
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
    sql: ${TABLE}.Orden.OrdenFechaActivacionSRC ;;
    group_label: "Orden"
    group_item_label: "Orden Fecha Activacion Src"
  }

  dimension_group: orden__orden_fecha_creacion {
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
    sql: ${TABLE}.Orden.OrdenFechaCreacion ;;
    group_label: "Orden"
    group_item_label: "Orden Fecha Creacion"
  }

  dimension_group: orden__orden_fecha_creacion_src {
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
    sql: ${TABLE}.Orden.OrdenFechaCreacionSRC ;;
    group_label: "Orden"
    group_item_label: "Orden Fecha Creacion Src"
  }

  dimension: orden__orden_metodo_entrega_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenMetodoEntregaNombre ;;
    group_label: "Orden"
    group_item_label: "Orden Metodo Entrega Nombre"
  }

  dimension: orden__orden_metodo_entrega_sk {
    type: number
    sql: ${TABLE}.Orden.OrdenMetodoEntregaSK ;;
    group_label: "Orden"
    group_item_label: "Orden Metodo Entrega Sk"
  }

  dimension: orden__orden_metodo_entrega_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenMetodoEntregaSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Metodo Entrega Srcid"
  }

  dimension: orden__orden_numero {
    type: string
    sql: ${TABLE}.Orden.OrdenNumero ;;
    group_label: "Orden"
    group_item_label: "Orden Numero"
  }

  dimension: orden__orden_numero_pre_factura {
    type: string
    sql: ${TABLE}.Orden.OrdenNumeroPreFactura ;;
    group_label: "Orden"
    group_item_label: "Orden Numero Pre Factura"
  }

  dimension: orden__orden_servicio_entrega_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenServicioEntregaNombre ;;
    group_label: "Orden"
    group_item_label: "Orden Servicio Entrega Nombre"
  }

  dimension: orden__orden_servicio_entrega_sk {
    type: number
    sql: ${TABLE}.Orden.OrdenServicioEntregaSK ;;
    group_label: "Orden"
    group_item_label: "Orden Servicio Entrega Sk"
  }

  dimension: orden__orden_servicio_entrega_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenServicioEntregaSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Servicio Entrega Srcid"
  }

  dimension: orden__orden_sk {
    type: string
    sql: ${TABLE}.Orden.OrdenSK ;;
    group_label: "Orden"
    group_item_label: "Orden Sk"
  }

  dimension: orden__orden_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Srcid"
  }

  dimension: orden__orden_tipo_cambio_plan_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoCambioPlanNombre ;;
    group_label: "Orden"
    group_item_label: "Orden Tipo Cambio Plan Nombre"
  }

  dimension: orden__orden_tipo_cambio_plan_sk {
    type: number
    sql: ${TABLE}.Orden.OrdenTipoCambioPlanSK ;;
    group_label: "Orden"
    group_item_label: "Orden Tipo Cambio Plan Sk"
  }

  dimension: orden__orden_tipo_cambio_plan_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoCambioPlanSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Tipo Cambio Plan Srcid"
  }

  dimension: orden__orden_tipo_gestion_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoGestionNombre ;;
    group_label: "Orden"
    group_item_label: "Orden Tipo Gestion Nombre"
  }

  dimension: orden__orden_tipo_gestion_sk {
    type: number
    sql: ${TABLE}.Orden.OrdenTipoGestionSK ;;
    group_label: "Orden"
    group_item_label: "Orden Tipo Gestion Sk"
  }

  dimension: orden__orden_tipo_gestion_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoGestionSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Tipo Gestion Srcid"
  }

  dimension: orden__orden_tipo_sub_gestion_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoSubGestionNombre ;;
    group_label: "Orden"
    group_item_label: "Orden Tipo Sub Gestion Nombre"
  }

  dimension: orden__orden_tipo_sub_gestion_sk {
    type: number
    sql: ${TABLE}.Orden.OrdenTipoSubGestionSK ;;
    group_label: "Orden"
    group_item_label: "Orden Tipo Sub Gestion Sk"
  }

  dimension: orden__orden_tipo_sub_gestion_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoSubGestionSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Tipo Sub Gestion Srcid"
  }

  dimension: orden_srcid {
    type: string
    sql: ${TABLE}.OrdenSRCId ;;
  }

  dimension: persona_sk {
    type: string
    sql: ${TABLE}.PersonaSK ;;
  }

  dimension: persona_srcid {
    type: string
    sql: ${TABLE}.PersonaSRCId ;;
  }

  dimension: producto_adquirido__producto_adquirido_codigo_suscripcion {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoCodigoSuscripcion ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Codigo Suscripcion"
  }

  dimension: producto_adquirido__producto_adquirido_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoNombre ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Estado Nombre"
  }

  dimension: producto_adquirido__producto_adquirido_estado_provisionamiento_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoProvisionamientoNombre ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Estado Provisionamiento Nombre"
  }

  dimension: producto_adquirido__producto_adquirido_estado_provisionamiento_sk {
    type: number
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoProvisionamientoSK ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Estado Provisionamiento Sk"
  }

  dimension: producto_adquirido__producto_adquirido_estado_provisionamiento_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoProvisionamientoSRCId ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Estado Provisionamiento Srcid"
  }

  dimension: producto_adquirido__producto_adquirido_estado_sk {
    type: number
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoSK ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Estado Sk"
  }

  dimension: producto_adquirido__producto_adquirido_estado_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoSRCId ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Estado Srcid"
  }

  dimension_group: producto_adquirido__producto_adquirido_fecha_activacion {
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
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoFechaActivacion ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Fecha Activacion"
  }

  dimension_group: producto_adquirido__producto_adquirido_fecha_activacion_src {
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
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoFechaActivacionSRC ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Fecha Activacion Src"
  }

  dimension_group: producto_adquirido__producto_adquirido_fecha_baja {
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
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoFechaBaja ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Fecha Baja"
  }

  dimension_group: producto_adquirido__producto_adquirido_fecha_baja_src {
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
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoFechaBajaSRC ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Fecha Baja Src"
  }

  dimension_group: producto_adquirido__producto_adquirido_fecha_compra_src {
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
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoFechaCompraSRC ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Fecha Compra Src"
  }

  dimension: producto_adquirido__producto_adquirido_numero_linea {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoNumeroLinea ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Numero Linea"
  }

  dimension: producto_adquirido__producto_adquirido_sk {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSK ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Sk"
  }

  dimension: producto_adquirido__producto_adquirido_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSRCId ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Srcid"
  }

  dimension: producto_adquirido__producto_adquirido_sub_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSubEstadoNombre ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Sub Estado Nombre"
  }

  dimension: producto_adquirido__producto_adquirido_sub_estado_sk {
    type: number
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSubEstadoSK ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Sub Estado Sk"
  }

  dimension: producto_adquirido__producto_adquirido_sub_estado_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSubEstadoSRCId ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Sub Estado Srcid"
  }

  dimension: producto_adquirido_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquiridoSRCId ;;
  }

  dimension: producto_sk {
    type: string
    sql: ${TABLE}.ProductoSK ;;
  }

  dimension: producto_srcid {
    type: string
    sql: ${TABLE}.ProductoSRCId ;;
  }

  dimension: usuario {
    hidden: yes
    sql: ${TABLE}.Usuario ;;
  }

  dimension: usuario_sk {
    type: string
    sql: ${TABLE}.UsuarioSK ;;
  }

  dimension: usuario_srcid {
    type: string
    sql: ${TABLE}.UsuarioSRCId ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: []
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_caso_canal_cierre_sk {
    type: sum
    hidden: yes
    sql: ${caso_canal_cierre_sk} ;;
  }

  measure: average_caso_canal_cierre_sk {
    type: average
    hidden: yes
    sql: ${caso_canal_cierre_sk} ;;
  }

  measure: total_caso_cantidad_cuotas {
    type: sum
    hidden: yes
    sql: ${caso_cantidad_cuotas} ;;
  }

  measure: average_caso_cantidad_cuotas {
    type: average
    hidden: yes
    sql: ${caso_cantidad_cuotas} ;;
  }

  measure: total_caso_estado_sk {
    type: sum
    hidden: yes
    sql: ${caso_estado_sk} ;;
  }

  measure: average_caso_estado_sk {
    type: average
    hidden: yes
    sql: ${caso_estado_sk} ;;
  }

  measure: total_caso_horas_negocio_sk {
    type: sum
    hidden: yes
    sql: ${caso_horas_negocio_sk} ;;
  }

  measure: average_caso_horas_negocio_sk {
    type: average
    hidden: yes
    sql: ${caso_horas_negocio_sk} ;;
  }

  measure: total_caso_motivo_baja_sk {
    type: sum
    hidden: yes
    sql: ${caso_motivo_baja_sk} ;;
  }

  measure: average_caso_motivo_baja_sk {
    type: average
    hidden: yes
    sql: ${caso_motivo_baja_sk} ;;
  }

  measure: total_caso_motivo_contacto_sk {
    type: sum
    hidden: yes
    sql: ${caso_motivo_contacto_sk} ;;
  }

  measure: average_caso_motivo_contacto_sk {
    type: average
    hidden: yes
    sql: ${caso_motivo_contacto_sk} ;;
  }

  measure: total_caso_motivo_sk {
    type: sum
    hidden: yes
    sql: ${caso_motivo_sk} ;;
  }

  measure: average_caso_motivo_sk {
    type: average
    hidden: yes
    sql: ${caso_motivo_sk} ;;
  }

  measure: total_caso_numero_documento_portacion {
    type: sum
    hidden: yes
    sql: ${caso_numero_documento_portacion} ;;
  }

  measure: average_caso_numero_documento_portacion {
    type: average
    hidden: yes
    sql: ${caso_numero_documento_portacion} ;;
  }

  measure: total_caso_porcentaje_proteccion {
    type: sum
    hidden: yes
    sql: ${caso_porcentaje_proteccion} ;;
  }

  measure: average_caso_porcentaje_proteccion {
    type: average
    hidden: yes
    sql: ${caso_porcentaje_proteccion} ;;
  }

  measure: total_caso_prioridad_sk {
    type: sum
    hidden: yes
    sql: ${caso_prioridad_sk} ;;
  }

  measure: average_caso_prioridad_sk {
    type: average
    hidden: yes
    sql: ${caso_prioridad_sk} ;;
  }

  measure: total_caso_sub_motivo_baja_sk {
    type: sum
    hidden: yes
    sql: ${caso_sub_motivo_baja_sk} ;;
  }

  measure: average_caso_sub_motivo_baja_sk {
    type: average
    hidden: yes
    sql: ${caso_sub_motivo_baja_sk} ;;
  }

  measure: total_caso_sub_tipo_sk {
    type: sum
    hidden: yes
    sql: ${caso_sub_tipo_sk} ;;
  }

  measure: average_caso_sub_tipo_sk {
    type: average
    hidden: yes
    sql: ${caso_sub_tipo_sk} ;;
  }

  measure: total_caso_subtipo_movimiento_portacion_sk {
    type: sum
    hidden: yes
    sql: ${caso_subtipo_movimiento_portacion_sk} ;;
  }

  measure: average_caso_subtipo_movimiento_portacion_sk {
    type: average
    hidden: yes
    sql: ${caso_subtipo_movimiento_portacion_sk} ;;
  }

  measure: total_caso_tipo_item_sk {
    type: sum
    hidden: yes
    sql: ${caso_tipo_item_sk} ;;
  }

  measure: average_caso_tipo_item_sk {
    type: average
    hidden: yes
    sql: ${caso_tipo_item_sk} ;;
  }

  measure: total_caso_tipo_recurrencia_sk {
    type: sum
    hidden: yes
    sql: ${caso_tipo_recurrencia_sk} ;;
  }

  measure: average_caso_tipo_recurrencia_sk {
    type: average
    hidden: yes
    sql: ${caso_tipo_recurrencia_sk} ;;
  }

  measure: total_caso_tipo_sk {
    type: sum
    hidden: yes
    sql: ${caso_tipo_sk} ;;
  }

  measure: average_caso_tipo_sk {
    type: average
    hidden: yes
    sql: ${caso_tipo_sk} ;;
  }

  measure: total_cliente__cliente_segmento1_sk {
    type: sum
    hidden: yes
    sql: ${cliente__cliente_segmento1_sk} ;;
  }

  measure: average_cliente__cliente_segmento1_sk {
    type: average
    hidden: yes
    sql: ${cliente__cliente_segmento1_sk} ;;
  }

  measure: total_cliente__cliente_segmento2_sk {
    type: sum
    hidden: yes
    sql: ${cliente__cliente_segmento2_sk} ;;
  }

  measure: average_cliente__cliente_segmento2_sk {
    type: average
    hidden: yes
    sql: ${cliente__cliente_segmento2_sk} ;;
  }

  measure: total_cliente__cuenta_tipo_sk {
    type: sum
    hidden: yes
    sql: ${cliente__cuenta_tipo_sk} ;;
  }

  measure: average_cliente__cuenta_tipo_sk {
    type: average
    hidden: yes
    sql: ${cliente__cuenta_tipo_sk} ;;
  }

  measure: total_numericos__caso_cantidad_casos_afectados {
    type: sum
    hidden: yes
    sql: ${numericos__caso_cantidad_casos_afectados} ;;
  }

  measure: average_numericos__caso_cantidad_casos_afectados {
    type: average
    hidden: yes
    sql: ${numericos__caso_cantidad_casos_afectados} ;;
  }

  measure: total_numericos__caso_cantidad_lineas_portacion {
    type: sum
    hidden: yes
    sql: ${numericos__caso_cantidad_lineas_portacion} ;;
  }

  measure: average_numericos__caso_cantidad_lineas_portacion {
    type: average
    hidden: yes
    sql: ${numericos__caso_cantidad_lineas_portacion} ;;
  }

  measure: total_numericos__caso_cantidad_re_llamados {
    type: sum
    hidden: yes
    sql: ${numericos__caso_cantidad_re_llamados} ;;
  }

  measure: average_numericos__caso_cantidad_re_llamados {
    type: average
    hidden: yes
    sql: ${numericos__caso_cantidad_re_llamados} ;;
  }

  measure: total_numericos__caso_cantidad_reclamos_generados {
    type: sum
    hidden: yes
    sql: ${numericos__caso_cantidad_reclamos_generados} ;;
  }

  measure: average_numericos__caso_cantidad_reclamos_generados {
    type: average
    hidden: yes
    sql: ${numericos__caso_cantidad_reclamos_generados} ;;
  }

  measure: total_numericos__caso_importe_pago_areclamar {
    type: sum
    hidden: yes
    sql: ${numericos__caso_importe_pago_areclamar} ;;
  }

  measure: average_numericos__caso_importe_pago_areclamar {
    type: average
    hidden: yes
    sql: ${numericos__caso_importe_pago_areclamar} ;;
  }

  measure: total_numericos__caso_limite_compra_actual {
    type: sum
    hidden: yes
    sql: ${numericos__caso_limite_compra_actual} ;;
  }

  measure: average_numericos__caso_limite_compra_actual {
    type: average
    hidden: yes
    sql: ${numericos__caso_limite_compra_actual} ;;
  }

  measure: total_numericos__caso_limite_compra_aprobado {
    type: sum
    hidden: yes
    sql: ${numericos__caso_limite_compra_aprobado} ;;
  }

  measure: average_numericos__caso_limite_compra_aprobado {
    type: average
    hidden: yes
    sql: ${numericos__caso_limite_compra_aprobado} ;;
  }

  measure: total_numericos__caso_limite_compra_solicitado {
    type: sum
    hidden: yes
    sql: ${numericos__caso_limite_compra_solicitado} ;;
  }

  measure: average_numericos__caso_limite_compra_solicitado {
    type: average
    hidden: yes
    sql: ${numericos__caso_limite_compra_solicitado} ;;
  }

  measure: total_numericos__caso_limite_consumo_actual {
    type: sum
    hidden: yes
    sql: ${numericos__caso_limite_consumo_actual} ;;
  }

  measure: average_numericos__caso_limite_consumo_actual {
    type: average
    hidden: yes
    sql: ${numericos__caso_limite_consumo_actual} ;;
  }

  measure: total_numericos__caso_limite_consumo_aprobado {
    type: sum
    hidden: yes
    sql: ${numericos__caso_limite_consumo_aprobado} ;;
  }

  measure: average_numericos__caso_limite_consumo_aprobado {
    type: average
    hidden: yes
    sql: ${numericos__caso_limite_consumo_aprobado} ;;
  }

  measure: total_numericos__caso_limite_consumo_solicitado {
    type: sum
    hidden: yes
    sql: ${numericos__caso_limite_consumo_solicitado} ;;
  }

  measure: average_numericos__caso_limite_consumo_solicitado {
    type: average
    hidden: yes
    sql: ${numericos__caso_limite_consumo_solicitado} ;;
  }

  measure: total_numericos__caso_llamadas_repetidas {
    type: sum
    hidden: yes
    sql: ${numericos__caso_llamadas_repetidas} ;;
  }

  measure: average_numericos__caso_llamadas_repetidas {
    type: average
    hidden: yes
    sql: ${numericos__caso_llamadas_repetidas} ;;
  }

  measure: total_numericos__caso_monto_ajuste {
    type: sum
    hidden: yes
    sql: ${numericos__caso_monto_ajuste} ;;
  }

  measure: average_numericos__caso_monto_ajuste {
    type: average
    hidden: yes
    sql: ${numericos__caso_monto_ajuste} ;;
  }

  measure: total_numericos__caso_saldo_vencido {
    type: sum
    hidden: yes
    sql: ${numericos__caso_saldo_vencido} ;;
  }

  measure: average_numericos__caso_saldo_vencido {
    type: average
    hidden: yes
    sql: ${numericos__caso_saldo_vencido} ;;
  }

  measure: total_orden__orden_canal_origen_sk {
    type: sum
    hidden: yes
    sql: ${orden__orden_canal_origen_sk} ;;
  }

  measure: average_orden__orden_canal_origen_sk {
    type: average
    hidden: yes
    sql: ${orden__orden_canal_origen_sk} ;;
  }

  measure: total_orden__orden_estado_aprobacion_sk {
    type: sum
    hidden: yes
    sql: ${orden__orden_estado_aprobacion_sk} ;;
  }

  measure: average_orden__orden_estado_aprobacion_sk {
    type: average
    hidden: yes
    sql: ${orden__orden_estado_aprobacion_sk} ;;
  }

  measure: total_orden__orden_estado_provisionamiento_sk {
    type: sum
    hidden: yes
    sql: ${orden__orden_estado_provisionamiento_sk} ;;
  }

  measure: average_orden__orden_estado_provisionamiento_sk {
    type: average
    hidden: yes
    sql: ${orden__orden_estado_provisionamiento_sk} ;;
  }

  measure: total_orden__orden_estado_sk {
    type: sum
    hidden: yes
    sql: ${orden__orden_estado_sk} ;;
  }

  measure: average_orden__orden_estado_sk {
    type: average
    hidden: yes
    sql: ${orden__orden_estado_sk} ;;
  }

  measure: total_orden__orden_estado_trackeo_sk {
    type: sum
    hidden: yes
    sql: ${orden__orden_estado_trackeo_sk} ;;
  }

  measure: average_orden__orden_estado_trackeo_sk {
    type: average
    hidden: yes
    sql: ${orden__orden_estado_trackeo_sk} ;;
  }

  measure: total_orden__orden_metodo_entrega_sk {
    type: sum
    hidden: yes
    sql: ${orden__orden_metodo_entrega_sk} ;;
  }

  measure: average_orden__orden_metodo_entrega_sk {
    type: average
    hidden: yes
    sql: ${orden__orden_metodo_entrega_sk} ;;
  }

  measure: total_orden__orden_servicio_entrega_sk {
    type: sum
    hidden: yes
    sql: ${orden__orden_servicio_entrega_sk} ;;
  }

  measure: average_orden__orden_servicio_entrega_sk {
    type: average
    hidden: yes
    sql: ${orden__orden_servicio_entrega_sk} ;;
  }

  measure: total_orden__orden_tipo_cambio_plan_sk {
    type: sum
    hidden: yes
    sql: ${orden__orden_tipo_cambio_plan_sk} ;;
  }

  measure: average_orden__orden_tipo_cambio_plan_sk {
    type: average
    hidden: yes
    sql: ${orden__orden_tipo_cambio_plan_sk} ;;
  }

  measure: total_orden__orden_tipo_gestion_sk {
    type: sum
    hidden: yes
    sql: ${orden__orden_tipo_gestion_sk} ;;
  }

  measure: average_orden__orden_tipo_gestion_sk {
    type: average
    hidden: yes
    sql: ${orden__orden_tipo_gestion_sk} ;;
  }

  measure: total_orden__orden_tipo_sub_gestion_sk {
    type: sum
    hidden: yes
    sql: ${orden__orden_tipo_sub_gestion_sk} ;;
  }

  measure: average_orden__orden_tipo_sub_gestion_sk {
    type: average
    hidden: yes
    sql: ${orden__orden_tipo_sub_gestion_sk} ;;
  }

  measure: total_producto_adquirido__producto_adquirido_estado_provisionamiento_sk {
    type: sum
    hidden: yes
    sql: ${producto_adquirido__producto_adquirido_estado_provisionamiento_sk} ;;
  }

  measure: average_producto_adquirido__producto_adquirido_estado_provisionamiento_sk {
    type: average
    hidden: yes
    sql: ${producto_adquirido__producto_adquirido_estado_provisionamiento_sk} ;;
  }

  measure: total_producto_adquirido__producto_adquirido_estado_sk {
    type: sum
    hidden: yes
    sql: ${producto_adquirido__producto_adquirido_estado_sk} ;;
  }

  measure: average_producto_adquirido__producto_adquirido_estado_sk {
    type: average
    hidden: yes
    sql: ${producto_adquirido__producto_adquirido_estado_sk} ;;
  }

  measure: total_producto_adquirido__producto_adquirido_sub_estado_sk {
    type: sum
    hidden: yes
    sql: ${producto_adquirido__producto_adquirido_sub_estado_sk} ;;
  }

  measure: average_producto_adquirido__producto_adquirido_sub_estado_sk {
    type: average
    hidden: yes
    sql: ${producto_adquirido__producto_adquirido_sub_estado_sk} ;;
  }
}

# The name of this view in Looker is "Fth Caso Caso Hito"
view: fth_caso__caso_hito {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: caso_hito_fecha_creacion {
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
    sql: ${TABLE}.CasoHitoFechaCreacion ;;
  }

  dimension_group: caso_hito_fecha_creacion_src {
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
    sql: ${TABLE}.CasoHitoFechaCreacionSRC ;;
  }

  dimension_group: caso_hito_fecha_cumplido {
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
    sql: ${TABLE}.CasoHitoFechaCumplido ;;
  }

  dimension_group: caso_hito_fecha_cumplido_src {
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
    sql: ${TABLE}.CasoHitoFechaCumplidoSRC ;;
  }

  dimension_group: caso_hito_fecha_mod {
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
    sql: ${TABLE}.CasoHitoFechaMod ;;
  }

  dimension_group: caso_hito_fecha_mod_src {
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
    sql: ${TABLE}.CasoHitoFechaModSRC ;;
  }

  dimension_group: caso_hito_fecha_objetivo {
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
    sql: ${TABLE}.CasoHitoFechaObjetivo ;;
  }

  dimension_group: caso_hito_fecha_objetivo_src {
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
    sql: ${TABLE}.CasoHitoFechaObjetivoSRC ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Caso Hito Marca Completado" in Explore.

  dimension: caso_hito_marca_completado {
    type: yesno
    sql: ${TABLE}.CasoHitoMarcaCompletado ;;
  }

  dimension: caso_hito_sk {
    type: string
    sql: ${TABLE}.CasoHitoSK ;;
  }

  dimension: caso_hito_srcid {
    type: string
    sql: ${TABLE}.CasoHitoSRCId ;;
  }

  dimension: caso_hito_tiempo_excedido_minutos {
    type: string
    sql: ${TABLE}.CasoHitoTiempoExcedidoMinutos ;;
  }

  dimension: caso_hito_tiempo_objetivo_dias {
    type: number
    sql: ${TABLE}.CasoHitoTiempoObjetivoDias ;;
  }

  dimension: caso_hito_tiempo_objetivo_horas {
    type: number
    sql: ${TABLE}.CasoHitoTiempoObjetivoHoras ;;
  }

  dimension: caso_hito_tiempo_objetivo_minutos {
    type: number
    sql: ${TABLE}.CasoHitoTiempoObjetivoMinutos ;;
  }

  dimension: caso_hito_tiempo_restante_minutos {
    type: string
    sql: ${TABLE}.CasoHitoTiempoRestanteMinutos ;;
  }

  dimension: caso_hito_tiempo_transcurrido_dias {
    type: number
    sql: ${TABLE}.CasoHitoTiempoTranscurridoDias ;;
  }

  dimension: caso_hito_tiempo_transcurrido_horas {
    type: number
    sql: ${TABLE}.CasoHitoTiempoTranscurridoHoras ;;
  }

  dimension: caso_hito_tiempo_transcurrido_minutos {
    type: number
    sql: ${TABLE}.CasoHitoTiempoTranscurridoMinutos ;;
  }

  dimension: caso_hito_tipo_sk {
    type: string
    sql: ${TABLE}.CasoHitoTipoSK ;;
  }

  dimension: origen_srcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.OrigenSRCId ;;
  }
}

# The name of this view in Looker is "Fth Caso Usuario"
view: fth_caso__usuario {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Empresa Alta Modif" in Explore.

  dimension: empresa_alta_modif {
    type: string
    sql: ${TABLE}.EMPRESA_ALTA_MODIF ;;
  }

  dimension: empresa_asig {
    type: string
    sql: ${TABLE}.EMPRESA_ASIG ;;
  }

  dimension: equipo_iniciador {
    type: string
    sql: ${TABLE}.EquipoIniciador ;;
  }

  dimension: equipo_propietario {
    type: string
    sql: ${TABLE}.EquipoPropietario ;;
  }

  dimension: grupo_trabajo_alta {
    type: string
    sql: ${TABLE}.GrupoTrabajo_Alta ;;
  }

  dimension: grupo_trabajo_modif {
    type: string
    sql: ${TABLE}.GrupoTrabajo_Modif ;;
  }

  dimension: usuario_alias_alta {
    type: string
    sql: ${TABLE}.UsuarioAlias_ALTA ;;
  }

  dimension: usuario_alias_asig {
    type: string
    sql: ${TABLE}.UsuarioAlias_ASIG ;;
  }

  dimension: usuario_alias_modif {
    type: string
    sql: ${TABLE}.UsuarioAlias_MODIF ;;
  }

  dimension: usuario_legajo_alta {
    type: string
    sql: ${TABLE}.UsuarioLegajo_ALTA ;;
  }

  dimension: usuario_legajo_asig {
    type: string
    sql: ${TABLE}.UsuarioLegajo_ASIG ;;
  }

  dimension: usuario_legajo_modif {
    type: string
    sql: ${TABLE}.UsuarioLegajo_MODIF ;;
  }

  dimension: usuarioempresa_alta {
    type: string
    sql: ${TABLE}.USUARIOEMPRESA_ALTA ;;
  }
}

# The name of this view in Looker is "Fth Caso Caso Comentarios Comentarios"
view: fth_caso__caso_comentarios__comentarios {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Caso Comentario Cuerpo" in Explore.

  dimension: caso_comentario_cuerpo {
    type: string
    sql: ${TABLE}.CasoComentarioCuerpo ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: caso_comentario_fecha_creacion {
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
    sql: ${TABLE}.CasoComentarioFechaCreacion ;;
  }

  dimension_group: caso_comentario_fecha_creacion_src {
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
    sql: ${TABLE}.CasoComentarioFechaCreacionSRC ;;
  }

  dimension: caso_comentario_sk {
    type: string
    sql: ${TABLE}.CasoComentarioSK ;;
  }

  dimension: caso_comentario_srcid {
    type: string
    sql: ${TABLE}.CasoComentarioSRCId ;;
  }
}
