view: fth_caso_view {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.FTH_Caso`;;
  suggestions: no
  label: "Caso"

## Native Dimensions

  ## Primary Key

  dimension: caso_srcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.CasoSRCId ;;
    label: "Caso Id"
  }

  ## Nested Fields

  dimension: caso_hito {
    hidden: yes
    sql: ${TABLE}.CasoHito ;;
  }

  dimension: comentarios {
    hidden: yes
    sql: ${TABLE}.CasoComentarios.Comentarios ;;
  }

  ## Caso

    ## Dates

  dimension: fecha_entidad {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FechaEntidad ;;
  }

  dimension: caso_fecha_acuerdo_desde_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaAcuerdoDesdeSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Fecha Acuerdo Desde"
  }

  dimension: caso_fecha_acuerdo_hasta_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaAcuerdoHastaSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Fecha Acuerdo Hasta"
  }

  dimension: caso_fecha_ajuste_desde_src {
    type: date
    sql: ${TABLE}.Fechas.CasoFechaAjusteDesdeSRC ;;
    datatype: date
    convert_tz: no
    group_label: "Fechas"
    group_item_label: "Fecha Ajuste Desde"
  }

  dimension: caso_fecha_ajuste_hasta_src {
    type: date
    sql: ${TABLE}.Fechas.CasoFechaAjusteHastaSRC ;;
    datatype: date
    convert_tz: no
    group_label: "Fechas"
    group_item_label: "Fecha Ajuste Hasta"
  }

  dimension: caso_fecha_cierre_estimada_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaCierreEstimadaSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Fecha Cierre Estimada"
  }

  dimension: caso_fecha_cierre_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaCierreSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Fecha Cierre"
  }

  dimension: caso_fecha_creacion_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaCreacionSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Fecha Creacion"
  }

  dimension: caso_fecha_fin_garantia_reparacion_src {
    type: date
    sql: ${TABLE}.Fechas.CasoFechaFinGarantiaReparacionSRC ;;
    datatype: date
    convert_tz: no
    group_label: "Fechas"
    group_item_label: "Fecha Fin Garantia Reparacion"
  }

  dimension: caso_fecha_inicio_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaInicioSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Fecha Inicio"
  }

  dimension: caso_fecha_mod_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaModSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Fecha Mod"
  }

  dimension: caso_fecha_modificacion_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaModificacionSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Fecha Modificacion"
  }

  dimension: caso_fecha_pago_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaPagoSRC ;;
    datatype: date
    convert_tz: no
    group_label: "Fechas"
    group_item_label: "Fecha Pago"
  }

  dimension: caso_fecha_solicitud_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaSolicitudSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Fecha Solicitud"
  }

  dimension: caso_fecha_vencimiento_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaVencimientoSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Fecha Vencimiento"
  }

  dimension: caso_fecha_ventana_portacion_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaVentanaPortacionSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Fecha Ventana Portacion"
  }

  dimension: caso_comentario_fecha_creacion_src {
    type: date_time
    sql: ${TABLE}.CasoComentarios.CasoComentarioFechaCreacionSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Fecha Creacion Comentario"
  }

    ## Flags

  dimension: caso_comprobantes_adjuntos {
    type: yesno
    sql: ${TABLE}.Marcas.CasoComprobantesAdjuntos ;;
    group_label: "Marcas"
    group_item_label: "Comprobantes Adjuntos"
  }

  dimension: caso_marca_cambio_garantia {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaCambioGarantia ;;
    group_label: "Marcas"
    group_item_label: "Cambio Garantia"
  }

  dimension: caso_marca_cambio_placa {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaCambioPlaca ;;
    group_label: "Marcas"
    group_item_label: "Cambio Placa"
  }

  dimension: caso_marca_caso_cerrado {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaCasoCerrado ;;
    group_label: "Marcas"
    group_item_label: "Caso Cerrado"
  }

  dimension: caso_marca_derivado_reparacion {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaDerivadoReparacion ;;
    group_label: "Marcas"
    group_item_label: "Derivado Reparacion"
  }

  dimension: caso_marca_en_garantia {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaEnGarantia ;;
    group_label: "Marcas"
    group_item_label: "En Garantia"
  }

  dimension: caso_marca_equipo_reparado {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaEquipoReparado ;;
    group_label: "Marcas"
    group_item_label: "Equipo Reparado"
  }

  dimension: caso_marca_escalado {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaEscalado ;;
    group_label: "Marcas"
    group_item_label: "Escalado"
  }

  dimension: caso_marca_excepcion {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaExcepcion ;;
    group_label: "Marcas"
    group_item_label: "Excepcion"
  }

  dimension: caso_marca_garantia_reparacion {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaGarantiaReparacion ;;
    group_label: "Marcas"
    group_item_label: "Garantia Reparacion"
  }

  dimension: caso_marca_gestion_muleto {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaGestionMuleto ;;
    group_label: "Marcas"
    group_item_label: "Gestion Muleto"
  }

  dimension: caso_marca_muleto_completo {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaMuletoCompleto ;;
    group_label: "Marcas"
    group_item_label: "Muleto Completo"
  }

  dimension: caso_marca_nace_cerrado {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaNaceCerrado ;;
    group_label: "Marcas"
    group_item_label: "Nace Cerrado"
  }

  dimension: caso_marca_pendiente_programacion_cita {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaPendienteProgramacionCita ;;
    group_label: "Marcas"
    group_item_label: "Pendiente Programacion Cita"
  }

  dimension: caso_marca_pendiente_programacion_recupero {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaPendienteProgramacionRecupero ;;
    group_label: "Marcas"
    group_item_label: "Pendiente Programacion Recupero"
  }

  dimension: caso_marca_proteccion {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaProteccion ;;
    group_label: "Marcas"
    group_item_label: "Proteccion"
  }

  dimension: caso_marca_re_llamado {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaReLlamado ;;
    group_label: "Marcas"
    group_item_label: "Re Llamado"
  }

  dimension: caso_marca_re_trabajo {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaReTrabajo ;;
    group_label: "Marcas"
    group_item_label: "Re Trabajo"
  }

  dimension: caso_marca_reclamo {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaReclamo ;;
    group_label: "Marcas"
    group_item_label: "Reclamo"
  }

  dimension: caso_marca_requiere_cita {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaRequiereCita ;;
    group_label: "Marcas"
    group_item_label: "Requiere Cita"
  }

  dimension: caso_marca_requiere_conciliacion {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaRequiereConciliacion ;;
    group_label: "Marcas"
    group_item_label: "Requiere Conciliacion"
  }

  dimension: caso_marca_requiere_ticket_icd {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaRequiereTicketICD ;;
    group_label: "Marcas"
    group_item_label: "Requiere Ticket Icd"
  }

  dimension: marca_caso_padre {
    type: yesno
    sql: ${TABLE}.Marcas.MarcaCasoPadre ;;
    group_label: "Marcas"
    group_item_label: "Caso Padre"
  }

    ## Strings

  dimension: caso_estado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoEstadoSRCId ;;
  }

  dimension: caso_estado_nombre {
    type: string
    sql: ${TABLE}.CasoEstadoNombre ;;
    suggest_dimension: lk_caso_estado.caso_estado_nombre
  }

  dimension: caso_horas_negocio_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoHorasNegocioSRCId ;;
  }

  dimension: caso_horas_negocio_nombre {
    type: string
    sql: ${TABLE}.CasoHorasNegocioNombre ;;
    suggest_dimension: lk_caso_horas_negocio.caso_horas_negocio_nombre
  }

  dimension: caso_motivo_baja_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoMotivoBajaSRCId ;;
  }

  dimension: caso_motivo_baja_nombre {
    type: string
    sql: ${TABLE}.CasoMotivoBajaNombre ;;
    suggest_dimension: lk_caso_motivo_baja.caso_motivo_baja_nombre
  }

  dimension: caso_motivo_srcid {
    type: string
    sql: ${TABLE}.CasoMotivoSRCId ;;
  }

  dimension: caso_motivo_nombre {
    type: string
    sql: ${TABLE}.CasoMotivoNombre ;;
    suggest_dimension: lk_caso_motivo.caso_motivo_nombre
  }

  dimension: caso_canal_cierre_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoCanalCierreSRCId ;;
  }

  dimension: caso_canal_cierre_nombre {
    type: string
    sql: ${TABLE}.CasoCanalCierreNombre ;;
    suggest_dimension: lk_caso_canal_cierre.caso_canal_cierre_nombre
  }

  dimension: caso_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoTipoSRCId ;;
  }

  dimension: caso_tipo_nombre {
    type: string
    sql: ${TABLE}.CasoTipoNombre ;;
    suggest_dimension: lk_caso_tipo.caso_tipo_nombre
  }

  dimension: caso_tipo_item_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoTipoItemSRCId ;;
  }

  dimension: caso_tipo_item_nombre {
    type: string
    sql: ${TABLE}.CasoTipoItemNombre ;;
    suggest_dimension: lk_caso_tipo_item.caso_tipo_item_nombre
  }

  dimension: caso_subtipo_movimiento_portacion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoSubtipoMovimientoPortacionSRCId ;;
  }

  dimension: caso_subtipo_movimiento_portacion_nombre {
    type: string
    sql: ${TABLE}.CasoSubtipoMovimientoPortacionNombre ;;
    suggest_dimension: lk_caso_subtipo_movimiento_portacion.caso_subtipo_movimiento_portacion_nombre
  }

  dimension: caso_sub_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoSubTipoSRCId ;;
  }

  dimension: caso_sub_tipo_nombre {
    type: string
    sql: ${TABLE}.CasoSubTipoNombre ;;
    suggest_dimension: lk_caso_sub_tipo.caso_sub_tipo_nombre
  }

  dimension: caso_sub_motivo_baja_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoSubMotivoBajaSRCId ;;
  }

  dimension: caso_sub_motivo_baja_nombre {
    type: string
    sql: ${TABLE}.CasoSubMotivoBajaNombre ;;
    suggest_dimension: lk_caso_sub_motivo_baja.caso_sub_motivo_baja_nombre
  }

  dimension: caso_prioridad_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoPrioridadSRCId ;;
  }

  dimension: caso_prioridad_nombre {
    type: string
    sql: ${TABLE}.CasoPrioridadNombre ;;
    suggest_dimension: lk_caso_prioridad.caso_prioridad_nombre
  }

  dimension: caso_resultado_retencion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoResultadoRetencionSRCId ;;
  }

  dimension: caso_resultado_retencion_nombre {
    type: string
    sql: ${TABLE}.CasoResultadoRetencionNombre ;;
    suggest_dimension: lk_caso_resultado_retencion.caso_resultado_retencion_nombre
  }

  dimension: caso_motivo_contacto_srcid {
    type: string
    sql: ${TABLE}.CasoMotivoContactoSRCId ;;
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

  dimension: caso_cargos_operacion {
    type: string
    sql: ${TABLE}.CasoCargosOperacion ;;
  }

  dimension: caso_caso_externo_funcional_srcid {
    type: string
    sql: ${TABLE}.CasoCasoExternoFuncionalSRCId ;;
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
  dimension: caso_cuenta_destino_srcid {
    type: string
    sql: ${TABLE}.CasoCuentaDestinoSRCId ;;
  }

  dimension: caso_cuenta_facturacion_srcid {
    type: string
    sql: ${TABLE}.CasoCuentaFacturacionSRCId ;;
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

  dimension: caso_equipo_propietario_srcid {
    type: string
    sql: ${TABLE}.CasoEquipoPropietarioSRCId ;;
  }

  dimension: caso_estado_proceso_portacion {
    type: string
    sql: ${TABLE}.CasoEstadoProcesoPortacion ;;
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

  dimension: caso_gestion_muleto_srcid {
    type: string
    sql: ${TABLE}.CasoGestionMuletoSRCId ;;
  }

  dimension: caso_gravedad {
    type: string
    sql: ${TABLE}.CasoGravedad ;;
  }

  dimension: caso_hito_estado {
    type: string
    sql: ${TABLE}.CasoHitoEstado ;;
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

  dimension: caso_llamada_padre_picsrcid {
    type: string
    sql: ${TABLE}.CasoLlamadaPadrePICSRCId ;;
  }

  dimension: caso_llamada_padre_srcid {
    type: string
    sql: ${TABLE}.CasoLlamadaPadreSRCId ;;
  }

  dimension: caso_llamada_picsrcid {
    type: string
    sql: ${TABLE}.CasoLlamadaPICSRCId ;;
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

  dimension: caso_medio_pago_srcid {
    type: string
    sql: ${TABLE}.CasoMedioPagoSRCId ;;
  }

  dimension: caso_mercado_donante_portacion {
    type: string
    sql: ${TABLE}.CasoMercadoDonantePortacion ;;
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

  dimension: caso_motivo_cancelacion_acuerdo_pago {
    type: string
    sql: ${TABLE}.CasoMotivoCancelacionAcuerdoPago ;;
  }

  dimension: caso_motivo_rechazo_portacion {
    type: string
    sql: ${TABLE}.CasoMotivoRechazoPortacion ;;
  }

  dimension: caso_motivo_rechazo_portacion_nombre {
    type: string
    sql: ${TABLE}.CasoMotivoRechazoPortacionNombre ;;
  }

  dimension: caso_msisdn_lista_portout {
    type: string
    sql: ${TABLE}.CasoMsisdnListaPortout ;;
  }

  dimension: caso_nivel_servicio_srcid {
    type: string
    sql: ${TABLE}.CasoNivelServicioSRCId ;;
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

  dimension: caso_operadora_receptora_srcid {
    type: string
    sql: ${TABLE}.CasoOperadoraReceptoraSRCId ;;
  }

  dimension: caso_origen {
    type: string
    sql: ${TABLE}.CasoOrigen ;;
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

  dimension: caso_postdateo {
    type: string
    sql: ${TABLE}.CasoPostdateo ;;
  }

  dimension: caso_preferencia_contacto_nombre {
    type: string
    sql: ${TABLE}.CasoPreferenciaContactoNombre ;;
  }

  dimension: caso_procedimiento {
    type: string
    sql: ${TABLE}.CasoProcedimiento ;;
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

  dimension: caso_seriales_recupero {
    type: string
    sql: ${TABLE}.CasoSerialesRecupero ;;
  }

  dimension: caso_servicio_tecnico_sintoma {
    type: string
    sql: ${TABLE}.CasoServicioTecnicoSintoma ;;
  }

  dimension: caso_sub_area_atencion_nombre {
    type: string
    sql: ${TABLE}.CasoSubAreaAtencionNombre ;;
  }

  dimension: caso_sub_estado_proceso_portacion {
    type: string
    sql: ${TABLE}.CasoSubEstadoProcesoPortacion ;;
  }

  dimension: caso_sub_tipo_incidente {
    type: string
    sql: ${TABLE}.CasoSubTipoIncidente ;;
  }

  dimension: caso_subcategoria {
    type: string
    sql: ${TABLE}.CasoSubcategoria ;;
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

  dimension: caso_tipo_motivo_contacto_nombre {
    type: string
    sql: ${TABLE}.CasoTipoMotivoContactoNombre ;;
  }

  dimension: caso_tipo_movimiento_portacion {
    type: string
    sql: ${TABLE}.CasoTipoMovimientoPortacion ;;
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

  dimension: caso_tipo_vencimiento {
    type: string
    sql: ${TABLE}.CasoTipoVencimiento ;;
  }

  dimension: caso_unidad_medida_nombre {
    type: string
    sql: ${TABLE}.CasoUnidadMedidaNombre ;;
  }

  dimension: caso_usuario_asignado_srcid {
    type: string
    sql: ${TABLE}.CasoUsuarioAsignadoSRCId ;;
  }

  dimension: caso_usuario_modificacion_srcid {
    type: string
    sql: ${TABLE}.CasoUsuarioModificacionSRCId ;;
  }

  dimension: caso_valores_pago {
    type: string
    sql: ${TABLE}.CasoValoresPago ;;
  }

  dimension: grupo_trabajo_srcid {
    type: string
    sql: ${TABLE}.GrupoTrabajoSRCId ;;
  }

  dimension: caso_cantidad_ajuste {
    type: string
    sql: ${TABLE}.Numericos.CasoCantidadAjuste ;;
  }

  dimension: persona_srcid {
    type: string
    sql: ${TABLE}.PersonaSRCId ;;
  }

  dimension: producto_srcid {
    type: string
    sql: ${TABLE}.ProductoSRCId ;;
  }

  dimension: usuario_srcid {
    type: string
    sql: ${TABLE}.UsuarioSRCId ;;
  }

  dimension: caso_comentario_srcid {
    type: string
    sql: ${TABLE}.CasoComentarios.CasoComentarioSRCId ;;
  }

  dimension: ultimo_comentario {
    type: string
    sql: ${TABLE}.CasoComentarios.UltimoComentario ;;
  }

    ## Numbers

  dimension: caso_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoEstadoSK ;;
  }

  dimension: caso_horas_negocio_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoHorasNegocioSK ;;
  }

  dimension: caso_motivo_baja_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoMotivoBajaSK ;;
  }

  dimension: caso_motivo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoMotivoSK ;;
  }

  dimension: caso_canal_cierre_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoCanalCierreSK ;;
  }

  dimension: caso_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoTipoSK ;;
  }

  dimension: caso_tipo_item_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoTipoItemSK ;;
  }

  dimension: caso_subtipo_movimiento_portacion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoSubtipoMovimientoPortacionSK ;;
  }

  dimension: caso_sub_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoSubTipoSK ;;
  }

  dimension: caso_sub_motivo_baja_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoSubMotivoBajaSK ;;
  }

  dimension: caso_prioridad_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoPrioridadSK ;;
  }

  dimension: caso_resultado_retencion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoResultadoRetencionSK ;;
  }

  dimension: caso_cantidad_cuotas {
    type: number
    sql: ${TABLE}.CasoCantidadCuotas ;;
  }

  dimension: caso_porcentaje_proteccion {
    type: number
    sql: ${TABLE}.CasoPorcentajeProteccion ;;
  }

  dimension: caso_numero_documento_portacion {
    type: number
    sql: ${TABLE}.CasoNumeroDocumentoPortacion ;;
  }

  dimension: caso_cantidad_casos_afectados {
    type: number
    sql: ${TABLE}.Numericos.CasoCantidadCasosAfectados ;;
  }

  dimension: caso_cantidad_lineas_portacion {
    type: number
    sql: ${TABLE}.Numericos.CasoCantidadLineasPortacion ;;
  }

  dimension: caso_cantidad_re_llamados {
    type: number
    sql: ${TABLE}.Numericos.CasoCantidadReLlamados ;;
  }

  dimension: caso_cantidad_reclamos_generados {
    type: number
    sql: ${TABLE}.Numericos.CasoCantidadReclamosGenerados ;;
  }

  dimension: caso_importe_pago_areclamar {
    type: number
    sql: ${TABLE}.Numericos.CasoImportePagoAReclamar ;;
  }

  dimension: caso_limite_compra_actual {
    type: number
    sql: ${TABLE}.Numericos.CasoLimiteCompraActual ;;
  }

  dimension: caso_limite_compra_aprobado {
    type: number
    sql: ${TABLE}.Numericos.CasoLimiteCompraAprobado ;;
  }

  dimension: caso_limite_compra_solicitado {
    type: number
    sql: ${TABLE}.Numericos.CasoLimiteCompraSolicitado ;;
  }

  dimension: caso_limite_consumo_actual {
    type: number
    sql: ${TABLE}.Numericos.CasoLimiteConsumoActual ;;
  }

  dimension: caso_limite_consumo_aprobado {
    type: number
    sql: ${TABLE}.Numericos.CasoLimiteConsumoAprobado ;;
  }

  dimension: caso_limite_consumo_solicitado {
    type: number
    sql: ${TABLE}.Numericos.CasoLimiteConsumoSolicitado ;;
  }

  dimension: caso_llamadas_repetidas {
    type: number
    sql: ${TABLE}.Numericos.CasoLlamadasRepetidas ;;
  }

  dimension: caso_monto_ajuste {
    type: number
    sql: ${TABLE}.Numericos.CasoMontoAjuste ;;
  }

  dimension: caso_saldo_vencido {
    type: number
    sql: ${TABLE}.Numericos.CasoSaldoVencido ;;
  }

  ## Cliente

    ## Srings

  dimension: cliente_segmento1_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento1SRCId ;;
  }

  dimension: cliente_segmento1_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento1Nombre ;;
    suggest_dimension: lk_cliente_segmento1.cliente_segmento1_nombre
    group_label: "Cliente"
    group_item_label: "Cliente Segmento1 Nombre"
  }

  dimension: cliente_segmento2_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento2SRCId ;;
  }

  dimension: cliente_segmento2_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento2Nombre ;;
    suggest_dimension: lk_cliente_segmento2.cliente_segmento2_nombre
    group_label: "Cliente"
    group_item_label: "Cliente Segmento2 Nombre"
  }

  dimension: cuenta_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.CuentaTipoSRCId ;;
  }

  dimension: cuenta_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.CuentaTipoNombre ;;
    suggest_dimension: lk_cuenta_tipo.cuenta_tipo_nombre
    group_label: "Cliente"
    group_item_label: "Cuenta Tipo Nombre"
  }

  dimension: cliente_razon_social {
    type: string
    sql: ${TABLE}.Cliente.ClienteRazonSocial ;;
    group_label: "Cliente"
    group_item_label: "Cliente Razon Social"
  }

  dimension: cliente_srcid {
    type: string
    sql: ${TABLE}.Cliente.ClienteSRCId ;;
    group_label: "Cliente"
    group_item_label: "Cliente Srcid"
  }

  dimension: cuenta_cliente_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaClienteSRCId ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Cliente Srcid"
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

  dimension: persona_nombre {
    type: string
    sql: ${TABLE}.Cliente.PersonaNombre ;;
    group_label: "Cliente"
    group_item_label: "Persona Nombre"
  }

  dimension: persona_tipo_documento_srcid {
    type: string
    sql: ${TABLE}.Cliente.PersonaTipoDocumentoSRCId ;;
    group_label: "Cliente"
    group_item_label: "Persona Tipo Documento Srcid"
  }

    ## Numbers

  dimension: cliente_segmento1_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.ClienteSegmento1SK ;;
  }

  dimension: cliente_segmento2_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.ClienteSegmento2SK ;;
  }

  dimension: cuenta_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.CuentaTipoSK ;;
  }

  ## Orden

    ## Dates

  dimension: orden_fecha_activacion_src {
    type: date_time
    sql: ${TABLE}.Orden.OrdenFechaActivacionSRC ;;
    datatype: timestamp
    group_label: "Orden"
    group_item_label: "Orden Fecha Activacion"
  }

  dimension: orden_fecha_creacion_src {
    type: date_time
    sql: ${TABLE}.Orden.OrdenFechaCreacionSRC ;;
    datatype: timestamp
    group_label: "Orden"
    group_item_label: "Orden Fecha Creacion"
  }

    ## Strings

  dimension: orden_estado_provisionamiento_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoProvisionamientoSRCId ;;
  }

  dimension: orden_estado_provisionamiento_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoProvisionamientoNombre ;;
    suggest_dimension: lk_orden_estado_provisionamiento.orden_estado_provisionamiento_nombre
    group_label: "Orden"
    group_item_label: "Orden Estado Provisionamiento Nombre"
  }

  dimension: orden_estado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoSRCId ;;
  }

  dimension: orden_estado_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoNombre ;;
    suggest_dimension: lk_orden_estado.orden_estado_nombre
    group_label: "Orden"
    group_item_label: "Orden Estado Nombre"
  }

  dimension: orden_estado_trackeo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoTrackeoSRCId ;;
  }

  dimension: orden_estado_trackeo_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoTrackeoNombre ;;
    suggest_dimension: lk_orden_estado_trackeo.orden_estado_trackeo_nombre
    group_label: "Orden"
    group_item_label: "Orden Estado Trackeo Nombre"
  }

  dimension: orden_metodo_entrega_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenMetodoEntregaSRCId ;;
  }

  dimension: orden_metodo_entrega_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenMetodoEntregaNombre ;;
    suggest_dimension: lk_orden_metodo_entrega.orden_metodo_entrega_nombre
    group_label: "Orden"
    group_item_label: "Orden Metodo Entrega Nombre"
  }

  dimension: orden_servicio_entrega_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenServicioEntregaSRCId ;;
  }

  dimension: orden_servicio_entrega_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenServicioEntregaNombre ;;
    suggest_dimension: lk_orden_servicio_entrega.orden_servicio_entrega_nombre
    group_label: "Orden"
    group_item_label: "Orden Servicio Entrega Nombre"
  }

  dimension: orden_canal_origen_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenCanalOrigenSRCId ;;
  }

  dimension: orden_canal_origen_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenCanalOrigenNombre ;;
    suggest_dimension: lk_orden_canal_origen.orden_canal_origen_nombre
    group_label: "Orden"
    group_item_label: "Orden Canal Origen Nombre"
  }

  dimension: orden_estado_aprobacion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoAprobacionSRCId ;;
  }

  dimension: orden_estado_aprobacion_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoAprobacionNombre ;;
    suggest_dimension: lk_orden_estado_aprobacion.orden_estado_aprobacion_nombre
    group_label: "Orden"
    group_item_label: "Orden Estado Aprobacion Nombre"
  }

  dimension: orden_tipo_sub_gestion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenTipoSubGestionSRCId ;;
  }

  dimension: orden_tipo_sub_gestion_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoSubGestionNombre ;;
    suggest_dimension: lk_orden_tipo_sub_gestion.orden_tipo_sub_gestion_nombre
    group_label: "Orden"
    group_item_label: "Orden Tipo Sub Gestion Nombre"
  }

  dimension: orden_tipo_gestion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenTipoGestionSRCId ;;
  }

  dimension: orden_tipo_gestion_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoGestionNombre ;;
    suggest_dimension: lk_orden_tipo_gestion.orden_tipo_gestion_nombre
    group_label: "Orden"
    group_item_label: "Orden Tipo Gestion Nombre"
  }

  dimension: orden_tipo_cambio_plan_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenTipoCambioPlanSRCId ;;
  }

  dimension: orden_tipo_cambio_plan_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoCambioPlanNombre ;;
    suggest_dimension: lk_orden_tipo_gestion.orden_tipo_gestion_nombre
    group_label: "Orden"
    group_item_label: "Orden Tipo Cambio Plan Nombre"
  }

  dimension: orden_numero {
    type: string
    sql: ${TABLE}.Orden.OrdenNumero ;;
    group_label: "Orden"
    group_item_label: "Orden Numero"
  }

  dimension: orden_numero_pre_factura {
    type: string
    sql: ${TABLE}.Orden.OrdenNumeroPreFactura ;;
    group_label: "Orden"
    group_item_label: "Orden Numero Pre Factura"
  }

  dimension: orden_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenSRCId ;;
    group_label: "Orden"
    group_item_label: "Orden Id"
  }

    ## Numbers

  dimension: orden_estado_provisionamiento_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenEstadoProvisionamientoSK ;;
  }

  dimension: orden_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenEstadoSK ;;
  }

  dimension: orden_estado_trackeo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenEstadoTrackeoSK ;;
  }

  dimension: orden_metodo_entrega_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenMetodoEntregaSK ;;
  }

  dimension: orden_servicio_entrega_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenServicioEntregaSK ;;
  }

  dimension: orden_canal_origen_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenCanalOrigenSK ;;
  }

  dimension: orden_estado_aprobacion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenEstadoAprobacionSK ;;
  }

  dimension: orden_tipo_sub_gestion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenTipoSubGestionSK ;;
  }

  dimension: orden_tipo_gestion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenTipoGestionSK ;;
  }

  dimension: orden_tipo_cambio_plan_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenTipoCambioPlanSK ;;
  }

  ## Producto Adquirido

  dimension: producto_adquirido_codigo_suscripcion {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoCodigoSuscripcion ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Codigo Suscripcion"
  }

  dimension: producto_adquirido_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoNombre ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Estado Nombre"
  }

  dimension: producto_adquirido_estado_provisionamiento_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoProvisionamientoNombre ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Estado Provisionamiento Nombre"
  }

  dimension: producto_adquirido_estado_provisionamiento_sk {
    type: number
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoProvisionamientoSK ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Estado Provisionamiento Sk"
  }

  dimension: producto_adquirido_estado_provisionamiento_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoProvisionamientoSRCId ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Estado Provisionamiento Srcid"
  }

  dimension: producto_adquirido_estado_sk {
    type: number
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoSK ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Estado Sk"
  }

  dimension: producto_adquirido_estado_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoSRCId ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Estado Srcid"
  }

  dimension: producto_adquirido_fecha_activacion {
    type: date_time
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoFechaActivacion ;;
    datatype: timestamp
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Fecha Activacion"
  }

  dimension: producto_adquirido_fecha_activacion_src {
    type: date_time
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoFechaActivacionSRC ;;
    datatype: timestamp
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Fecha Activacion Src"
  }

  dimension: producto_adquirido_fecha_baja {
    type: date_time
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoFechaBaja ;;
    datatype: timestamp
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Fecha Baja"
  }

  dimension: producto_adquirido_fecha_baja_src {
    type: date_time
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoFechaBajaSRC ;;
    datatype: timestamp
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Fecha Baja Src"
  }

  dimension: producto_adquirido_fecha_compra_src {
    type: date_time
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoFechaCompraSRC ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Fecha Compra Src"
  }

  dimension: producto_adquirido_numero_linea {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoNumeroLinea ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Numero Linea"
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

  dimension: producto_adquirido_sub_estado_sk {
    type: number
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSubEstadoSK ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Sub Estado Sk"
  }

  dimension: producto_adquirido_sub_estado_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSubEstadoSRCId ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Sub Estado Srcid"
  }

  ## Usuario

    ## Strings

  dimension: empresa_alta_modif {
    type: string
    sql: ${TABLE}.Usuario.EMPRESA_ALTA_MODIF ;;
    group_label: "Usuario"
    group_item_label: "Empresa Alta Modificacion"
  }

  dimension: empresa_asig {
    type: string
    sql: ${TABLE}.Usuario.EMPRESA_ASIG ;;
    group_label: "Usuario"
    group_item_label: "Empresa Asignacion"
  }

  dimension: equipo_iniciador {
    type: string
    sql: ${TABLE}.Usuario.EquipoIniciador ;;
    group_label: "Usuario"
    group_item_label: "Equipo Iniciador"
  }

  dimension: equipo_propietario {
    type: string
    sql: ${TABLE}.Usuario.EquipoPropietario ;;
    group_label: "Usuario"
    group_item_label: "Equipo Propietario"
  }

  dimension: grupo_trabajo_alta {
    type: string
    sql: ${TABLE}.Usuario.GrupoTrabajo_Alta ;;
    group_label: "Usuario"
    group_item_label: "Grupo de Trabajo Alta"
  }

  dimension: grupo_trabajo_modif {
    type: string
    sql: ${TABLE}.Usuario.GrupoTrabajo_Modif ;;
    group_label: "Usuario"
    group_item_label: "Grupo de Trabajo Modificacion"
  }

  dimension: usuario_alias_alta {
    type: string
    sql: ${TABLE}.Usuario.UsuarioAlias_ALTA ;;
    group_label: "Usuario"
    group_item_label: "Alias Alta"
  }

  dimension: usuario_alias_asig {
    type: string
    sql: ${TABLE}.Usuario.UsuarioAlias_ASIG ;;
    group_label: "Usuario"
    group_item_label: "Alias Asignacion"
  }

  dimension: usuario_alias_modif {
    type: string
    sql: ${TABLE}.Usuario.UsuarioAlias_MODIF ;;
    group_label: "Usuario"
    group_item_label: "Alias Modificacion"
  }

  dimension: usuario_legajo_alta {
    type: string
    sql: ${TABLE}.Usuario.UsuarioLegajo_ALTA ;;
    group_label: "Usuario"
    group_item_label: "Legajo Alta"
  }

  dimension: usuario_legajo_asig {
    type: string
    sql: ${TABLE}.Usuario.UsuarioLegajo_ASIG ;;
    group_label: "Usuario"
    group_item_label: "Legajo Asignacion"
  }

  dimension: usuario_legajo_modif {
    type: string
    sql: ${TABLE}.Usuario.UsuarioLegajo_MODIF ;;
    group_label: "Usuario"
    group_item_label: "Legajo Modificacion"
  }

  dimension: usuarioempresa_alta {
    type: string
    sql: ${TABLE}.Usuario.USUARIOEMPRESA_ALTA ;;
    group_label: "Usuario"
    group_item_label: "Empresa Alta"
  }

  ## Auditoria

  dimension: _fecha_creacion {
    type: date_time
    sql: ${TABLE}._auditoria._fechaCreacion ;;
    datatype: timestamp
    group_label: "Auditoria"
    group_item_label: "Fecha Creacion"
  }

  dimension: _fecha_ultima_actualizacion {
    type: date_time
    sql: ${TABLE}._auditoria._fechaUltimaActualizacion ;;
    datatype: timestamp
    group_label: "Auditoria"
    group_item_label: "Fecha Ultima Actualizacion"
  }

  dimension: _sesion_id {
    type: string
    sql: ${TABLE}._auditoria._sesionId ;;
    group_label: "Auditoria"
    group_item_label: "Sesion Id"
  }

  dimension: _usuario_creacion {
    type: string
    sql: ${TABLE}._auditoria._usuarioCreacion ;;
    group_label: "Auditoria"
    group_item_label: "Usuario Creacion"
  }

  dimension: _usuario_ultima_actualizacion {
    type: string
    sql: ${TABLE}._auditoria._usuarioUltimaActualizacion ;;
    group_label: "Auditoria"
    group_item_label: "Usuario Ultima Actualizacion"
  }

  ## Measures

  measure: count {
    type: count
    drill_fields: []
  }
}


## Nested Attributes - Views

view: fth_caso__caso_hito {

  dimension: caso_hito_fecha_creacion {
    type: date_time
    sql: ${TABLE}.CasoHitoFechaCreacion ;;
    datatype: timestamp
  }

  dimension: caso_hito_fecha_creacion_src {
    type: date_time
    sql: ${TABLE}.CasoHitoFechaCreacionSRC ;;
    datatype: timestamp
  }

  dimension: caso_hito_fecha_cumplido {
    type: date_time
    sql: ${TABLE}.CasoHitoFechaCumplido ;;
    datatype: timestamp
  }

  dimension: caso_hito_fecha_cumplido_src {
    type: date_time
    sql: ${TABLE}.CasoHitoFechaCumplidoSRC ;;
    datatype: timestamp
  }

  dimension: caso_hito_fecha_mod {
    type: date_time
    sql: ${TABLE}.CasoHitoFechaMod ;;
    datatype: timestamp
  }

  dimension: caso_hito_fecha_mod_src {
    type: date_time
    sql: ${TABLE}.CasoHitoFechaModSRC ;;
    datatype: timestamp
  }

  dimension: caso_hito_fecha_objetivo {
    type: date_time
    sql: ${TABLE}.CasoHitoFechaObjetivo ;;
    datatype: timestamp
  }

  dimension: caso_hito_fecha_objetivo_src {
    type: date_time
    sql: ${TABLE}.CasoHitoFechaObjetivoSRC ;;
    datatype: timestamp
  }

  dimension: caso_hito_marca_completado {
    type: yesno
    sql: ${TABLE}.CasoHitoMarcaCompletado ;;
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

  dimension: origen_srcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.OrigenSRCId ;;
  }
}

view: fth_caso__comentarios {

  dimension: caso_comentario_cuerpo {
    type: string
    sql: ${TABLE}.CasoComentarioCuerpo ;;
  }

  dimension: caso_comentario_fecha_creacion {
    type: date_time
    sql: ${TABLE}.CasoComentarioFechaCreacion ;;
    datatype: timestamp
  }

  dimension: caso_comentario_fecha_creacion_src {
    type: date_time
    sql: ${TABLE}.CasoComentarioFechaCreacionSRC ;;
    datatype: timestamp
  }

  dimension: caso_comentario_srcid {
    type: string
    sql: ${TABLE}.CasoComentarioSRCId ;;
  }
}
