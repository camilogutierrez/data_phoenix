view: fth_caso {
  sql_table_name: @{gcp_dataset_pub}.FTH_Caso` ;;
  suggestions: no
  label: "Caso"

##########
## Caso ##
##########

    ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: CONCAT(CAST(${fecha_entidad} AS STRING FORMAT 'YYYYMMDD'),'-',${caso_srcid});;
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

    ## Dates

  dimension: fecha_entidad {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FechaEntidad ;;
    view_label: "Caso"
    label: "Fecha Cierre"
    description: "Se utiliza para consultar el estado de los datos al cierre de un dia determinado donde cada dia contiene la totalidad de los registros historicos almacenados hasta esa fecha."
  }

  dimension: caso_fecha_acuerdo_desde_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaAcuerdoDesdeSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Acuerdo Desde"
    label: "Fecha Acuerdo Desde"
  }

  dimension: caso_fecha_acuerdo_hasta_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaAcuerdoHastaSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Acuerdo Hasta"
    label: "Fecha Acuerdo Hasta"
  }

  dimension: caso_fecha_ajuste_desde_src {
    type: date
    sql: ${TABLE}.Fechas.CasoFechaAjusteDesdeSRC ;;
    datatype: date
    convert_tz: no
    group_label: "Fechas"
    group_item_label: "Ajuste Desde"
    label: "Fecha Ajuste Desde"
  }

  dimension: caso_fecha_ajuste_hasta_src {
    type: date
    sql: ${TABLE}.Fechas.CasoFechaAjusteHastaSRC ;;
    datatype: date
    convert_tz: no
    group_label: "Fechas"
    group_item_label: "Ajuste Hasta"
    label: "Fecha Ajuste Hasta"
  }

  dimension: caso_fecha_cierre_estimada_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaCierreEstimadaSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Cierre Estimada"
    label: "Fecha Cierre Estimada"
  }

  dimension: caso_fecha_cierre_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaCierreSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Cierre"
    label: "Fecha Cierre"
  }

  dimension: caso_fecha_creacion_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaCreacionSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Creacion"
    label: "Fecha Creacion"
  }

  dimension: caso_fecha_fin_garantia_reparacion_src {
    type: date
    sql: ${TABLE}.Fechas.CasoFechaFinGarantiaReparacionSRC ;;
    datatype: date
    convert_tz: no
    group_label: "Fechas"
    group_item_label: "Fin Garantia Reparacion"
    label: "Fecha Fin Garantia Reparacion"
  }

  dimension: caso_fecha_inicio_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaInicioSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Inicio"
    label: "Fecha Inicio"
  }

  dimension: caso_fecha_mod_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaModSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Modificacion"
    label: "Fecha Modificacion"
  }

  dimension: caso_fecha_modificacion_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaModificacionSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Modificacion"
    label: "Fecha Modificacion"
  }

  dimension: caso_fecha_pago_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaPagoSRC ;;
    datatype: date
    convert_tz: no
    group_label: "Fechas"
    group_item_label: "Pago"
    label: "Fecha Pago"
  }

  dimension: caso_fecha_solicitud_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaSolicitudSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Solicitud"
    label: "Fecha Solicitud"
  }

  dimension: caso_fecha_vencimiento_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaVencimientoSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Fecha"
    label: "Fecha Vencimiento"
  }

  dimension: caso_fecha_ventana_portacion_src {
    type: date_time
    sql: ${TABLE}.Fechas.CasoFechaVentanaPortacionSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Ventana Portacion"
    label: "Fecha Ventana Portacion"
  }

  dimension: caso_comentario_fecha_creacion_src {
    type: date_time
    sql: ${TABLE}.CasoComentarios.CasoComentarioFechaCreacionSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Creacion Comentario"
    label: "Fecha Creacion Comentario"
  }

    ## Flags

  dimension: caso_comprobantes_adjuntos {
    type: yesno
    sql: ${TABLE}.Marcas.CasoComprobantesAdjuntos ;;
    group_label: "Marcas"
    group_item_label: "Comprobantes Adjuntos"
    label: "Es Comprobantes Adjuntos"
  }

  dimension: caso_marca_cambio_garantia {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaCambioGarantia ;;
    group_label: "Marcas"
    group_item_label: "Cambio Garantia"
    label: "Es Cambio Garantia"
  }

  dimension: caso_marca_cambio_placa {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaCambioPlaca ;;
    group_label: "Marcas"
    group_item_label: "Cambio Placa"
    label: "Es Cambio Placa"
  }

  dimension: caso_marca_caso_cerrado {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaCasoCerrado ;;
    group_label: "Marcas"
    group_item_label: "Cerrado"
    label: "Es Cerrado"
  }

  dimension: caso_marca_derivado_reparacion {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaDerivadoReparacion ;;
    group_label: "Marcas"
    group_item_label: "Derivado Reparacion"
    label: "Es Derivado Reparacion"
  }

  dimension: caso_marca_en_garantia {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaEnGarantia ;;
    group_label: "Marcas"
    group_item_label: "En Garantia"
    label: "Es En Garantia"
  }

  dimension: caso_marca_equipo_reparado {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaEquipoReparado ;;
    group_label: "Marcas"
    group_item_label: "Equipo Reparado"
    label: "Es Equipo Reparado"
  }

  dimension: caso_marca_escalado {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaEscalado ;;
    group_label: "Marcas"
    group_item_label: "Escalado"
    label: "Es Escalado"
  }

  dimension: caso_marca_excepcion {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaExcepcion ;;
    group_label: "Marcas"
    group_item_label: "Excepcion"
    label: "Es Excepcion"
  }

  dimension: caso_marca_garantia_reparacion {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaGarantiaReparacion ;;
    group_label: "Marcas"
    group_item_label: "Garantia Reparacion"
    label: "Es Garantia Reparacion"
  }

  dimension: caso_marca_gestion_muleto {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaGestionMuleto ;;
    group_label: "Marcas"
    group_item_label: "Gestion Muleto"
    label: "Es Gestion Muleto"
  }

  dimension: caso_marca_muleto_completo {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaMuletoCompleto ;;
    group_label: "Marcas"
    group_item_label: "Muleto Completo"
    label: "Es Muleto Completo"
  }

  dimension: caso_marca_nace_cerrado {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaNaceCerrado ;;
    group_label: "Marcas"
    group_item_label: "Nace Cerrado"
    label: "Es Nace Cerrado"
  }

  dimension: caso_marca_pendiente_programacion_cita {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaPendienteProgramacionCita ;;
    group_label: "Marcas"
    group_item_label: "Pendiente Programacion Cita"
    label: "Es Pendiente Programacion Cita"
  }

  dimension: caso_marca_pendiente_programacion_recupero {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaPendienteProgramacionRecupero ;;
    group_label: "Marcas"
    group_item_label: "Pendiente Programacion Recupero"
    label: "Es Pendiente Programacion Recupero"
  }

  dimension: caso_marca_proteccion {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaProteccion ;;
    group_label: "Marcas"
    group_item_label: "Proteccion"
    label: "Es Proteccion"
  }

  dimension: caso_marca_re_llamado {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaReLlamado ;;
    group_label: "Marcas"
    group_item_label: "Re Llamado"
    label: "Es Re Llamado"
  }

  dimension: caso_marca_re_trabajo {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaReTrabajo ;;
    group_label: "Marcas"
    group_item_label: "Re Trabajo"
    label: "Es Re Trabajo"
  }

  dimension: caso_marca_reclamo {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaReclamo ;;
    group_label: "Marcas"
    group_item_label: "Reclamo"
    label: "Es Reclamo"
  }

  dimension: caso_marca_requiere_cita {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaRequiereCita ;;
    group_label: "Marcas"
    group_item_label: "Requiere Cita"
    label: "Es Requiere Cita"
  }

  dimension: caso_marca_requiere_conciliacion {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaRequiereConciliacion ;;
    group_label: "Marcas"
    group_item_label: "Requiere Conciliacion"
    label: "Es Requiere Conciliacion"
  }

  dimension: caso_marca_requiere_ticket_icd {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaRequiereTicketICD ;;
    group_label: "Marcas"
    group_item_label: "Requiere Ticket ICD"
    label: "Es Requiere Ticket ICD"
  }

  dimension: marca_caso_padre {
    type: yesno
    sql: ${TABLE}.Marcas.MarcaCasoPadre ;;
    group_label: "Marcas"
    group_item_label: "Padre"
    label: "Es Padre"
  }

  dimension: caso_nuevo_numero_toip {
    type: yesno
    sql: ${TABLE}.CasoNuevoNumeroTOIP ;;
    group_label: "Marcas"
    group_item_label: "Nuevo Numero TOIP"
    label: "Es Nuevo Numero TOIP"
  }

    ## Strings

  dimension: caso_srcid {
    type: string
    sql: ${TABLE}.CasoSRCId ;;
    value_format_name: id
    label: "Id"
  }

  dimension: caso_estado_nombre {
    type: string
    sql: ${TABLE}.CasoEstadoNombre ;;
    suggest_dimension: lk_caso_estado.caso_estado_nombre
    label: "Estado"
  }

  dimension: caso_horas_negocio_nombre {
    type: string
    sql: ${TABLE}.CasoHorasNegocioNombre ;;
    suggest_dimension: lk_caso_horas_negocio.caso_horas_negocio_nombre
    label: "Horas Negocio"
  }

  dimension: caso_motivo_baja_nombre {
    type: string
    sql: ${TABLE}.CasoMotivoBajaNombre ;;
    suggest_dimension: lk_caso_motivo_baja.caso_motivo_baja_nombre
    label: "Motivo Baja"
  }

  dimension: caso_motivo_nombre {
    type: string
    sql: ${TABLE}.CasoMotivoNombre ;;
    suggest_dimension: lk_caso_motivo.caso_motivo_nombre
    label: "Motivo"
  }

  dimension: caso_canal_cierre_nombre {
    type: string
    sql: ${TABLE}.CasoCanalCierreNombre ;;
    suggest_dimension: lk_caso_canal_cierre.caso_canal_cierre_nombre
    label: "Canal Cierre"
  }

  dimension: caso_tipo_nombre {
    type: string
    sql: ${TABLE}.CasoTipoNombre ;;
    suggest_dimension: lk_caso_tipo.caso_tipo_nombre
    label: "Tipo"
  }

  dimension: caso_tipo_item_nombre {
    type: string
    sql: ${TABLE}.CasoTipoItemNombre ;;
    suggest_dimension: lk_caso_tipo_item.caso_tipo_item_nombre
    label: "Tipo Item"
  }

  dimension: caso_subtipo_movimiento_portacion_nombre {
    type: string
    sql: ${TABLE}.CasoSubtipoMovimientoPortacionNombre ;;
    suggest_dimension: lk_caso_subtipo_movimiento_portacion.caso_subtipo_movimiento_portacion_nombre
    label: "Subtipo Movimiento Portacion"
  }

  dimension: caso_sub_tipo_nombre {
    type: string
    sql: ${TABLE}.CasoSubTipoNombre ;;
    suggest_dimension: lk_caso_sub_tipo.caso_sub_tipo_nombre
    label: "Subtipo"
  }

  dimension: caso_sub_motivo_baja_nombre {
    type: string
    sql: ${TABLE}.CasoSubMotivoBajaNombre ;;
    suggest_dimension: lk_caso_sub_motivo_baja.caso_sub_motivo_baja_nombre
    label: "Submotivo Baja"
  }

  dimension: caso_prioridad_nombre {
    type: string
    sql: ${TABLE}.CasoPrioridadNombre ;;
    suggest_dimension: lk_caso_prioridad.caso_prioridad_nombre
    label: "Prioridad"
  }

  dimension: caso_resultado_retencion_nombre {
    type: string
    sql: ${TABLE}.CasoResultadoRetencionNombre ;;
    suggest_dimension: lk_caso_resultado_retencion.caso_resultado_retencion_nombre
    label: "Resultado Retencion"
  }

  dimension: caso_motivo_contacto_srcid {
    type: string
    sql: ${TABLE}.CasoMotivoContactoSRCId ;;
    label: "Motivo Contacto"
  }

  dimension: caso_acuerdo_servicio_srcid {
    type: string
    sql: ${TABLE}.CasoAcuerdoServicioSRCId ;;
    label: "Acuerdo Servicio"
  }

  dimension: caso_antigua_direccion_facturacion {
    type: string
    sql: ${TABLE}.CasoAntiguaDireccionFacturacion ;;
    label: "Direccion Facturacion Antigua"
  }

  dimension: caso_area_atencion {
    type: string
    sql: ${TABLE}.CasoAreaAtencion ;;
    label: "Area Retencion"
  }

  dimension: caso_asesoria_retencion {
    type: string
    sql: ${TABLE}.CasoAsesoriaRetencion ;;
    label: "Asesoria Retencion"
  }

  dimension: caso_asignacion_atributo_srcid {
    type: string
    sql: ${TABLE}.CasoAsignacionAtributoSRCId ;;
    label: "Asignacion Atributo"
  }

  dimension: caso_asistencia_tecnica_ya_tien {
    type: string
    sql: ${TABLE}.CasoAsistenciaTecnicaYaTien ;;
    label: "Tiene Asistencia Tecnica"
  }

  dimension: caso_asset_relacionado_numero_linea {
    type: string
    sql: ${TABLE}.CasoAssetRelacionadoNumeroLinea ;;
    label: "Asset Relacionado Numero Linea"
  }

  dimension: caso_cambio_aplicado {
    type: string
    sql: ${TABLE}.CasoCambioAplicado ;;
    label: "Cambio Aplicado"
  }

  dimension: caso_cargos_operacion {
    type: string
    sql: ${TABLE}.CasoCargosOperacion ;;
    label: "Cargos Operacion"
  }

  dimension: caso_caso_externo_funcional_srcid {
    type: string
    sql: ${TABLE}.CasoCasoExternoFuncionalSRCId ;;
    label: "Externo Funcional"
  }

  dimension: caso_caso_externo_srcid {
    type: string
    sql: ${TABLE}.CasoCasoExternoSRCId ;;
    label: "Externo"
  }

  dimension: caso_categoria {
    type: string
    sql: ${TABLE}.CasoCategoria ;;
    label: "Categoria"
  }

  dimension: caso_causa_raiz_ajuste {
    type: string
    sql: ${TABLE}.CasoCausaRaizAjuste ;;
    label: "Causa Raiz Ajuste"
  }

  dimension: caso_cbualias {
    type: string
    sql: ${TABLE}.CasoCBUAlias ;;
    label: "CBU Alias"
  }

  dimension: caso_ciudad {
    type: string
    sql: ${TABLE}.CasoCiudad ;;
    label: "Ciudad"
  }

  dimension: caso_cliente_srcid {
    type: string
    sql: ${TABLE}.CasoClienteSRCId ;;
    label: "Cliente"
  }

  dimension: caso_cod_servicio {
    type: string
    sql: ${TABLE}.CasoCodServicio ;;
    label: "Codigo Servicio"
  }

  dimension: caso_codigo_error {
    type: string
    sql: ${TABLE}.CasoCodigoError ;;
    label: "Codigo Error"
  }
  dimension: caso_cuenta_destino_srcid {
    type: string
    sql: ${TABLE}.CasoCuentaDestinoSRCId ;;
    label: "Cuenta Destino"
  }

  dimension: caso_cuenta_facturacion_srcid {
    type: string
    sql: ${TABLE}.CasoCuentaFacturacionSRCId ;;
    label: "Cuenta Facturacion"
  }

  dimension: caso_cuenta_servicio_srcid {
    type: string
    sql: ${TABLE}.CasoCuentaServicioSRCId ;;
    label: "Cuenta Servicio"
  }

  dimension: caso_cupon_tarjeta {
    type: string
    sql: ${TABLE}.CasoCuponTarjeta ;;
    label: "Cupon Tarjeta"
  }

  dimension: caso_descripcion_motivo_rechazo {
    type: string
    sql: ${TABLE}.CasoDescripcionMotivoRechazo ;;
    label: "Motivo Rechazo Descripcion"
  }

  dimension: caso_detalle_problema_muleto {
    type: string
    sql: ${TABLE}.CasoDetalleProblemaMuleto ;;
    label: "Problema Multeo Detalle"
  }

  dimension: caso_diagnostico_tecnico {
    type: string
    sql: ${TABLE}.CasoDiagnosticoTecnico ;;
    label: "Diagnostico Tecnico"
  }

  dimension: caso_direccion_email {
    type: string
    sql: ${TABLE}.CasoDireccionEmail ;;
    label: "Correo Electronico Direccion"
  }

  dimension: caso_direccion_siniestro_srcid {
    type: string
    sql: ${TABLE}.CasoDireccionSiniestroSRCId ;;
    label: "Siniestro Direccion"
  }

  dimension: caso_email_origen {
    type: string
    sql: ${TABLE}.CasoEmailOrigen ;;
    label: "Correo Electronico Origen"
  }

  dimension: caso_entidad_pago {
    type: string
    sql: ${TABLE}.CasoEntidadPago ;;
    label: "Entidad Pago"
  }

  dimension: caso_equipo_iniciador {
    type: string
    sql: ${TABLE}.CasoEquipoIniciador ;;
    label: "Equipo Iniciador"
  }

  dimension: caso_equipo_propietario_srcid {
    type: string
    sql: ${TABLE}.CasoEquipoPropietarioSRCId ;;
    label: "Equipo Propietario"
  }

  dimension: caso_estado_proceso_portacion {
    type: string
    sql: ${TABLE}.CasoEstadoProcesoPortacion ;;
    label: "Proceso Portacion Estado"
  }

  dimension: caso_fax_contacto {
    type: string
    sql: ${TABLE}.CasoFaxContacto ;;
    label: "Contacto Fax"
  }

  dimension: caso_gama_servicio_tecnico {
    type: string
    sql: ${TABLE}.CasoGamaServicioTecnico ;;
    label: "Gama Servicio Tecnico"
  }

  dimension: caso_gerencia_solicitante {
    type: string
    sql: ${TABLE}.CasoGerenciaSolicitante ;;
    label: "Gerencia Solicitante"
  }

  dimension: caso_gestion_muleto_srcid {
    type: string
    sql: ${TABLE}.CasoGestionMuletoSRCId ;;
    label: "Gestion Muleto"
  }

  dimension: caso_gravedad {
    type: string
    sql: ${TABLE}.CasoGravedad ;;
    label: "Gravedad"
  }

  dimension: caso_hito_estado {
    type: string
    sql: ${TABLE}.CasoHitoEstado ;;
    label: "Estado Hito"
  }

  dimension: caso_imeianterior {
    type: string
    sql: ${TABLE}.CasoIMEIAnterior ;;
    label: "IMEI Anterior"
  }

  dimension: caso_imeiservicio_tecnico {
    type: string
    sql: ${TABLE}.CasoIMEIServicioTecnico ;;
    label: "IMEI Sericio Tecnico"
  }

  dimension: caso_impacto {
    type: string
    sql: ${TABLE}.CasoImpacto ;;
    label: "Impacto"
  }

  dimension: caso_incidente_descripcion {
    type: string
    sql: ${TABLE}.CasoIncidenteDescripcion ;;
    label: "Incidente Descripcion"
  }

  dimension: caso_informacion_inventario {
    type: string
    sql: ${TABLE}.CasoInformacionInventario ;;
    label: "Informacion Inventario"
  }

  dimension: caso_lista_plazos {
    type: string
    sql: ${TABLE}.CasoListaPlazos ;;
    label: "Lista Plazos"
  }

  dimension: caso_llamada_padre_picsrcid {
    type: string
    sql: ${TABLE}.CasoLlamadaPadrePICSRCId ;;
    label: "Llamada Padre PIC"
  }

  dimension: caso_llamada_padre_srcid {
    type: string
    sql: ${TABLE}.CasoLlamadaPadreSRCId ;;
    label: "Llamada Padre"
  }

  dimension: caso_llamada_picsrcid {
    type: string
    sql: ${TABLE}.CasoLlamadaPICSRCId ;;
    label: "Llamada PIC"
  }

  dimension: caso_llamada_srcid {
    type: string
    sql: ${TABLE}.CasoLlamadaSRCId ;;
    label: "Llamada"
  }

  dimension: caso_marca_servicio_tecnico {
    type: string
    sql: ${TABLE}.CasoMarcaServicioTecnico ;;
    label: "Marca Servicio Tecnico"
  }

  dimension: caso_medio_pago {
    type: string
    sql: ${TABLE}.CasoMedioPago ;;
    label: "Medio Pago"
  }

  dimension: caso_medio_pago_srcid {
    type: string
    sql: ${TABLE}.CasoMedioPagoSRCId ;;
    label: "Medio Pago Id"
  }

  dimension: caso_mercado_donante_portacion {
    type: string
    sql: ${TABLE}.CasoMercadoDonantePortacion ;;
    label: "Mercado Donante Portacion"
  }

  dimension: caso_mercado_donante_portacion_srcid {
    type: string
    sql: ${TABLE}.CasoMercadoDonantePortacionSRCId ;;
    label: "Mercado Donante Portacion Id"
  }

  dimension: caso_modalidad_recupero {
    type: string
    sql: ${TABLE}.CasoModalidadRecupero ;;
    label: "Modalidad Recupero"
  }

  dimension: caso_modelo_servicio_tecnico {
    type: string
    sql: ${TABLE}.CasoModeloServicioTecnico ;;
    label: "Modelo Servicio Tecnico"
  }

  dimension: caso_motivo_cancelacion_acuerdo_pago {
    type: string
    sql: ${TABLE}.CasoMotivoCancelacionAcuerdoPago ;;
    label: "Motivo Cancelacion Acuerdo Pago"
  }

  dimension: caso_motivo_rechazo_portacion {
    type: string
    sql: ${TABLE}.CasoMotivoRechazoPortacion ;;
    label: "Motivo Rechazo Portacion"
  }

  dimension: caso_motivo_rechazo_portacion_nombre {
    type: string
    sql: ${TABLE}.CasoMotivoRechazoPortacionNombre ;;
    label: "Motivo Rechazo Portacion Nombre"
  }

  dimension: caso_msisdn_lista_portout {
    type: string
    sql: ${TABLE}.CasoMsisdnListaPortout ;;
    label: "MSISDN Lista Portout"
  }

  dimension: caso_nivel_servicio_srcid {
    type: string
    sql: ${TABLE}.CasoNivelServicioSRCId ;;
    label: "Nivel Servicio"
  }

  dimension: caso_nrnportacion_srcid {
    type: string
    sql: ${TABLE}.CasoNRNPortacionSRCId ;;
    label: "Numero Portacion"
  }

  dimension: caso_nro_tarjeta {
    type: string
    sql: ${TABLE}.CasoNroTarjeta ;;
    label: "Numero Tarjeta"
  }

  dimension: caso_nueva_direccion_facturacion {
    type: string
    sql: ${TABLE}.CasoNuevaDireccionFacturacion ;;
    label: "Direccion Facturacion Nueva"
  }

  dimension: caso_numero {
    type: string
    sql: ${TABLE}.CasoNumero ;;
    label: "Numero"
  }

  dimension: caso_numero_comprobante {
    type: string
    sql: ${TABLE}.CasoNumeroComprobante ;;
    label: "Numero Comprobante"
  }

  dimension: caso_numero_estado {
    type: string
    sql: ${TABLE}.CasoNumeroEstado ;;
    label: "Numero Estado"
  }

  dimension: caso_numero_factura {
    type: string
    sql: ${TABLE}.CasoNumeroFactura ;;
    label: "Numero Factura"
  }

  dimension: caso_numero_linea {
    type: string
    sql: ${TABLE}.CasoNumeroLinea ;;
    label: "Numero Linea"
  }

  dimension: caso_numero_lote {
    type: string
    sql: ${TABLE}.CasoNumeroLote ;;
    label: "Numero Lote"
  }

  dimension: caso_numero_referente_pago {
    type: string
    sql: ${TABLE}.CasoNumeroReferentePago ;;
    label: "Numero Referente Pago"
  }

  dimension: caso_numero_telefono {
    type: string
    sql: ${TABLE}.CasoNumeroTelefono ;;
    label: "Numero Telefono"
  }

  dimension: caso_numero_telefono_movil {
    type: string
    sql: ${TABLE}.CasoNumeroTelefonoMovil ;;
    label: "Numero Telefono Movil"
  }

  dimension: caso_numeros_lineas {
    type: string
    sql: ${TABLE}.CasoNumerosLineas ;;
    label: "Numeros Lineas"
  }

  dimension: caso_operadora_receptora_srcid {
    type: string
    sql: ${TABLE}.CasoOperadoraReceptoraSRCId ;;
    label: "Operadora Receptora"
  }

  dimension: caso_origen {
    type: string
    sql: ${TABLE}.CasoOrigen ;;
    label: "Origen"
  }

  dimension: caso_padre_srcid {
    type: string
    sql: ${TABLE}.CasoPadreSRCId ;;
    label: "Padre"
  }

  dimension: caso_pinportabilidad {
    type: string
    sql: ${TABLE}.CasoPINPortabilidad ;;
    label: "Pin Portabilidad"
  }

  dimension: caso_pintarjeta_prepago {
    type: string
    sql: ${TABLE}.CasoPINTarjetaPrepago ;;
    label: "Pin Tarjeta Prepago"
  }

  dimension: caso_plazo_vencido_recepcion_factura {
    type: string
    sql: ${TABLE}.CasoPlazoVencidoRecepcionFactura ;;
    label: "Plazo Vencido Recepcion Factura"
  }

  dimension: caso_postdateo {
    type: string
    sql: ${TABLE}.CasoPostdateo ;;
    label: "Postdateo"
  }

  dimension: caso_preferencia_contacto_nombre {
    type: string
    sql: ${TABLE}.CasoPreferenciaContactoNombre ;;
    label: "Preferencia Contacto"
  }

  dimension: caso_procedimiento {
    type: string
    sql: ${TABLE}.CasoProcedimiento ;;
    label: "Procededimiento"
  }

  dimension: caso_producto_adquirido_proteccion_srcid {
    type: string
    sql: ${TABLE}.CasoProductoAdquiridoProteccionSRCId ;;
    label: "Producto Adquierido Proteccion"
  }

  dimension: caso_provincia {
    type: string
    sql: ${TABLE}.CasoProvincia ;;
    label: "Provincia"
  }

  dimension: caso_punto_venta_usuario_nombre {
    type: string
    sql: ${TABLE}.CasoPuntoVentaUsuarioNombre ;;
    label: "Punto Venta Usuario"
  }

  dimension: caso_red_portacion_nombre {
    type: string
    sql: ${TABLE}.CasoRedPortacionNombre ;;
    label: "Red Portacion"
  }

  dimension: caso_resolucion_incidente {
    type: string
    sql: ${TABLE}.CasoResolucionIncidente ;;
    label: "Resolucion Incidente"
  }

  dimension: caso_seriales_recupero {
    type: string
    sql: ${TABLE}.CasoSerialesRecupero ;;
    label: "Seriales Recupero"
  }

  dimension: caso_servicio_tecnico_sintoma {
    type: string
    sql: ${TABLE}.CasoServicioTecnicoSintoma ;;
    label: "Servicio Tecnico Sintoma"
  }

  dimension: caso_sub_area_atencion_nombre {
    type: string
    sql: ${TABLE}.CasoSubAreaAtencionNombre ;;
    label: "Subarea Atencion"
  }

  dimension: caso_sub_estado_proceso_portacion {
    type: string
    sql: ${TABLE}.CasoSubEstadoProcesoPortacion ;;
    label: "Subestado Proceso Portacion"
  }

  dimension: caso_sub_tipo_incidente {
    type: string
    sql: ${TABLE}.CasoSubTipoIncidente ;;
    label: "Subtipo Incidente"
  }

  dimension: caso_subcategoria {
    type: string
    sql: ${TABLE}.CasoSubcategoria ;;
    label: "Subcategoria"
  }

  dimension: caso_telefono_origen {
    type: string
    sql: ${TABLE}.CasoTelefonoOrigen ;;
    label: "Telefono Origen"
  }

  dimension: caso_tema_nombre {
    type: string
    sql: ${TABLE}.CasoTemaNombre ;;
    label: "Tema"
  }

  dimension: caso_tipo_ajuste {
    type: string
    sql: ${TABLE}.CasoTipoAjuste ;;
    label: "Tipo Ajuste"
  }

  dimension: caso_tipo_asset {
    type: string
    sql: ${TABLE}.CasoTipoAsset ;;
    label: "Tipo Asset"
  }

  dimension: caso_tipo_cargo {
    type: string
    sql: ${TABLE}.CasoTipoCargo ;;
    label: "Tipo Cargo"
  }

  dimension: caso_tipo_concepto {
    type: string
    sql: ${TABLE}.CasoTipoConcepto ;;
    label: "Tipo Concepto"
  }

  dimension: caso_tipo_documento_portacion {
    type: string
    sql: ${TABLE}.CasoTipoDocumentoPortacion ;;
    label: "Tipo Documento Portacion"
  }

  dimension: caso_tipo_motivo_contacto_nombre {
    type: string
    sql: ${TABLE}.CasoTipoMotivoContactoNombre ;;
    label: "Tipo Motivo Contacto"
  }

  dimension: caso_tipo_movimiento_portacion {
    type: string
    sql: ${TABLE}.CasoTipoMovimientoPortacion ;;
    label: "Tipo Movimiento Portacion"
  }

  dimension: caso_tipo_operacion {
    type: string
    sql: ${TABLE}.CasoTipoOperacion ;;
    label: "Tipo Operacion"
  }

  dimension: caso_tipo_operacion_ajuste {
    type: string
    sql: ${TABLE}.CasoTipoOperacionAjuste ;;
    label: "Tipo Operacion Ajuste"
  }

  dimension: caso_tipo_proceso {
    type: string
    sql: ${TABLE}.CasoTipoProceso ;;
    label: "Tipo Proceso"
  }

  dimension: caso_tipo_recurrencia_srcid {
    type: string
    sql: ${TABLE}.CasoTipoRecurrenciaSRCId ;;
    label: "Tipo Recurrencia"
  }

  dimension: caso_tipo_registro_nombre {
    type: string
    sql: ${TABLE}.CasoTipoRegistroNombre ;;
    label: "Tipo Registro"
  }

  dimension: caso_tipo_seleccion {
    type: string
    sql: ${TABLE}.CasoTipoSeleccion ;;
    label: "Tipo Seleccion"
  }

  dimension: caso_tipo_vencimiento {
    type: string
    sql: ${TABLE}.CasoTipoVencimiento ;;
    label: "Tipo Vencimiento"
  }

  dimension: caso_unidad_medida_nombre {
    type: string
    sql: ${TABLE}.CasoUnidadMedidaNombre ;;
    label: "Unidad de Medida"
  }

  dimension: caso_usuario_asignado_srcid {
    type: string
    sql: ${TABLE}.CasoUsuarioAsignadoSRCId ;;
    label: "Usuario Asignado"
  }

  dimension: caso_usuario_modificacion_srcid {
    type: string
    sql: ${TABLE}.CasoUsuarioModificacionSRCId ;;
    label: "Usuario Modificacion"
  }

  dimension: caso_valores_pago {
    type: string
    sql: ${TABLE}.CasoValoresPago ;;
    label: "Valores Pago"
  }

  dimension: grupo_trabajo_srcid {
    type: string
    sql: ${TABLE}.GrupoTrabajoSRCId ;;
    label: "Grupo Trabajo"
  }

  dimension: caso_cantidad_ajuste {
    type: string
    sql: ${TABLE}.Numericos.CasoCantidadAjuste ;;
    label: "Ajuste Cantidad"
  }

  dimension: persona_srcid {
    type: string
    sql: ${TABLE}.PersonaSRCId ;;
    label: "Persona"
  }

  dimension: producto_srcid {
    type: string
    sql: ${TABLE}.ProductoSRCId ;;
    label: "Producto"
  }

  dimension: usuario_srcid {
    type: string
    sql: ${TABLE}.UsuarioSRCId ;;
    label: "Usuario"
  }

  dimension: caso_comentario_srcid {
    type: string
    sql: ${TABLE}.CasoComentarios.CasoComentarioSRCId ;;
    label: "Comentario"
  }

  dimension: ultimo_comentario {
    type: string
    sql: ${TABLE}.CasoComentarios.UltimoComentario ;;
    label: "Ultimo Comentario"
  }

  ## Numbers

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

    ## Hidden

  dimension: caso_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoEstadoSK ;;
  }

  dimension: caso_estado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoEstadoSRCId ;;
  }

  dimension: caso_horas_negocio_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoHorasNegocioSK ;;
  }

  dimension: caso_horas_negocio_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoHorasNegocioSRCId ;;
  }

  dimension: caso_motivo_baja_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoMotivoBajaSK ;;
  }

  dimension: caso_motivo_baja_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoMotivoBajaSRCId ;;
  }

  dimension: caso_motivo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoMotivoSK ;;
  }

  dimension: caso_motivo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoMotivoSRCId ;;
  }

  dimension: caso_canal_cierre_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoCanalCierreSK ;;
  }

  dimension: caso_canal_cierre_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoCanalCierreSRCId ;;
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

  dimension: caso_tipo_item_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoTipoItemSK ;;
  }

  dimension: caso_tipo_item_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoTipoItemSRCId ;;
  }

  dimension: caso_subtipo_movimiento_portacion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoSubtipoMovimientoPortacionSK ;;
  }

  dimension: caso_subtipo_movimiento_portacion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoSubtipoMovimientoPortacionSRCId ;;
  }

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

  dimension: caso_sub_motivo_baja_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoSubMotivoBajaSK ;;
  }

  dimension: caso_sub_motivo_baja_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoSubMotivoBajaSRCId ;;
  }

  dimension: caso_prioridad_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoPrioridadSK ;;
  }

  dimension: caso_prioridad_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoPrioridadSRCId ;;
  }

  dimension: caso_resultado_retencion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.CasoResultadoRetencionSK ;;
  }

  dimension: caso_resultado_retencion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoResultadoRetencionSRCId ;;
  }

#############
## Cliente ##
#############

    ## Srings

  dimension: cliente_segmento1_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento1Nombre ;;
    suggest_dimension: lk_cliente_segmento1.cliente_segmento1_nombre
    view_label: "Cliente"
    label: "Segmento 1"
  }

  dimension: cliente_segmento2_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento2Nombre ;;
    suggest_dimension: lk_cliente_segmento2.cliente_segmento2_nombre
    view_label: "Cliente"
    label: "Segmento 2"
  }

  dimension: cuenta_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.CuentaTipoNombre ;;
    suggest_dimension: lk_cuenta_tipo.cuenta_tipo_nombre
    view_label: "Cliente"
    label: "Cuenta Tipo"
  }

  dimension: cliente_razon_social {
    type: string
    sql: ${TABLE}.Cliente.ClienteRazonSocial ;;
    view_label: "Cliente"
    label: "Razon Social"
  }

  dimension: cliente_srcid {
    type: string
    sql: ${TABLE}.Cliente.ClienteSRCId ;;
    view_label: "Cliente"
    label: "Id"
  }

  dimension: cuenta_cliente_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaClienteSRCId ;;
    view_label: "Cliente"
    label: "Cuenta"
  }

  dimension: persona_apellido {
    type: string
    sql: ${TABLE}.Cliente.PersonaApellido ;;
    view_label: "Cliente"
    label: "Apellido"
  }

  dimension: persona_documento_numero {
    type: string
    sql: ${TABLE}.Cliente.PersonaDocumentoNumero ;;
    view_label: "Cliente"
    label: "Documento Numero"
  }

  dimension: persona_nombre {
    type: string
    sql: ${TABLE}.Cliente.PersonaNombre ;;
    view_label: "Cliente"
    label: "Nombre"
  }

  dimension: persona_tipo_documento_srcid {
    type: string
    sql: ${TABLE}.Cliente.PersonaTipoDocumentoSRCId ;;
    view_label: "Cliente"
    label: "Documento Tipo"
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

  dimension: cuenta_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.CuentaTipoSK ;;
  }

  dimension: cuenta_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.CuentaTipoSRCId ;;
  }

###########
## Orden ##
###########

    ## Dates

  dimension: orden_fecha_activacion_src {
    type: date_time
    sql: ${TABLE}.Orden.OrdenFechaActivacionSRC ;;
    datatype: timestamp
    view_label: "Orden"
    label: "Fecha Activacion"
  }

  dimension: orden_fecha_creacion_src {
    type: date_time
    sql: ${TABLE}.Orden.OrdenFechaCreacionSRC ;;
    datatype: timestamp
    view_label: "Orden"
    label: "Fecha Creacion"
  }

    ## Strings

  dimension: orden_estado_provisionamiento_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoProvisionamientoNombre ;;
    suggest_dimension: lk_orden_estado_provisionamiento.orden_estado_provisionamiento_nombre
    view_label: "Orden"
    label: "Estado Provisionamiento"
  }

  dimension: orden_estado_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoNombre ;;
    suggest_dimension: lk_orden_estado.orden_estado_nombre
    view_label: "Orden"
    label: "Estado"
  }

  dimension: orden_estado_trackeo_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoTrackeoNombre ;;
    suggest_dimension: lk_orden_estado_trackeo.orden_estado_trackeo_nombre
    view_label: "Orden"
    label: "Estado Trackeo"
  }

  dimension: orden_metodo_entrega_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenMetodoEntregaNombre ;;
    suggest_dimension: lk_orden_metodo_entrega.orden_metodo_entrega_nombre
    view_label: "Orden"
    label: "Metodo Entrega"
  }

  dimension: orden_servicio_entrega_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenServicioEntregaNombre ;;
    suggest_dimension: lk_orden_servicio_entrega.orden_servicio_entrega_nombre
    view_label: "Orden"
    label: "Servicio Entrega"
  }

  dimension: orden_canal_origen_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenCanalOrigenNombre ;;
    suggest_dimension: lk_orden_canal_origen.orden_canal_origen_nombre
    view_label: "Orden"
    label: "Canal Origen"
  }

  dimension: orden_estado_aprobacion_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoAprobacionNombre ;;
    suggest_dimension: lk_orden_estado_aprobacion.orden_estado_aprobacion_nombre
    view_label: "Orden"
    label: "Estado Aprobacion"
  }

  dimension: orden_tipo_sub_gestion_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoSubGestionNombre ;;
    suggest_dimension: lk_orden_tipo_sub_gestion.orden_tipo_sub_gestion_nombre
    view_label: "Orden"
    label: "Tipo Subgestion"
  }

  dimension: orden_tipo_gestion_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoGestionNombre ;;
    suggest_dimension: lk_orden_tipo_gestion.orden_tipo_gestion_nombre
    view_label: "Orden"
    label: "Tipo Gestion"
  }

  dimension: orden_tipo_cambio_plan_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoCambioPlanNombre ;;
    suggest_dimension: lk_orden_tipo_gestion.orden_tipo_gestion_nombre
    view_label: "Orden"
    label: "Tipo Cambio Plan"
  }

  dimension: orden_numero {
    type: string
    sql: ${TABLE}.Orden.OrdenNumero ;;
    view_label: "Orden"
    label: "Numero"
  }

  dimension: orden_numero_pre_factura {
    type: string
    sql: ${TABLE}.Orden.OrdenNumeroPreFactura ;;
    view_label: "Orden"
    label: "Numero Prefactura"
  }

  dimension: orden_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenSRCId ;;
    view_label: "Orden"
    label: "Id"
  }

    ## Hidden

  dimension: orden_estado_provisionamiento_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenEstadoProvisionamientoSK ;;
  }

  dimension: orden_estado_provisionamiento_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoProvisionamientoSRCId ;;
  }

  dimension: orden_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenEstadoSK ;;
  }

  dimension: orden_estado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoSRCId ;;
  }

  dimension: orden_estado_trackeo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenEstadoTrackeoSK ;;
  }

  dimension: orden_estado_trackeo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoTrackeoSRCId ;;
  }

  dimension: orden_metodo_entrega_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenMetodoEntregaSK ;;
  }

  dimension: orden_metodo_entrega_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenMetodoEntregaSRCId ;;
  }

  dimension: orden_servicio_entrega_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenServicioEntregaSK ;;
  }

  dimension: orden_servicio_entrega_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenServicioEntregaSRCId ;;
  }

  dimension: orden_canal_origen_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenCanalOrigenSK ;;
  }

  dimension: orden_canal_origen_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenCanalOrigenSRCId ;;
  }

  dimension: orden_estado_aprobacion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenEstadoAprobacionSK ;;
  }

  dimension: orden_tipo_sub_gestion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenTipoSubGestionSRCId ;;
  }

  dimension: orden_estado_aprobacion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoAprobacionSRCId ;;
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

  dimension: orden_tipo_gestion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenTipoGestionSRCId ;;
  }

  dimension: orden_tipo_cambio_plan_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenTipoCambioPlanSK ;;
  }

  dimension: orden_tipo_cambio_plan_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenTipoCambioPlanSRCId ;;
  }

########################
## Producto Adquirido ##
########################

    ## Dates

  dimension: producto_adquirido_fecha_activacion_src {
    type: date_time
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoFechaActivacionSRC ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    label: "Fecha Activacion"
  }

  dimension: producto_adquirido_fecha_baja_src {
    type: date_time
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoFechaBajaSRC ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    label: "Fecha Baja"
  }

  dimension: producto_adquirido_fecha_compra_src {
    type: date_time
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoFechaCompraSRC ;;
    view_label: "Producto Adquirido"
    label: "Fecha Compra"
  }

    ## Strings

  dimension: producto_adquirido_estado_provisionamiento_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoProvisionamientoNombre ;;
    suggest_dimension: lk_producto_adquirido_estado_provisionamiento.producto_adquirido_estado_provisionamiento_nombre
    view_label: "Producto Adquirido"
    label: "Estado Provisionamiento"
  }

  dimension: producto_adquirido_sub_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSubEstadoNombre ;;
    suggest_dimension: lk_producto_adquirido_sub_estado.producto_adquirido_sub_estado_nombre
    view_label: "Producto Adquirido"
    label: "Subestado"
  }

  dimension: producto_adquirido_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoNombre ;;
    suggest_dimension: lk_producto_adquirido_estado.producto_adquirido_estado_nombre
    view_label: "Producto Adquirido"
    label: "Estado"
  }

  dimension: producto_adquirido_codigo_suscripcion {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoCodigoSuscripcion ;;
    view_label: "Producto Adquirido"
    label: "Codigo Suscripcion"
  }

  dimension: producto_adquirido_numero_linea {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoNumeroLinea ;;
    view_label: "Producto Adquirido"
    label: "Numero Linea"
  }

  dimension: producto_adquirido_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSRCId ;;
    view_label: "Producto Adquirido"
    label: "Nombre"
  }

    ## Hidden

  dimension: producto_adquirido_estado_provisionamiento_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoProvisionamientoSK ;;
  }

  dimension: producto_adquirido_estado_provisionamiento_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoProvisionamientoSRCId ;;
  }

  dimension: producto_adquirido_sub_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSubEstadoSK ;;
  }

  dimension: producto_adquirido_sub_estado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSubEstadoSRCId ;;
  }

  dimension: producto_adquirido_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoSK ;;
  }

  dimension: producto_adquirido_estado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoSRCId ;;
  }

#############
## Usuario ##
#############

    ## Strings

  dimension: empresa_alta_modif {
    type: string
    sql: ${TABLE}.Usuario.EMPRESA_ALTA_MODIF ;;
    view_label: "Usuario"
    label: "Empresa Alta Modificacion"
  }

  dimension: empresa_asig {
    type: string
    sql: ${TABLE}.Usuario.EMPRESA_ASIG ;;
    view_label: "Usuario"
    label: "Empresa Asignacion"
  }

  dimension: equipo_iniciador {
    type: string
    sql: ${TABLE}.Usuario.EquipoIniciador ;;
    view_label: "Usuario"
    label: "Equipo Iniciador"
  }

  dimension: equipo_propietario {
    type: string
    sql: ${TABLE}.Usuario.EquipoPropietario ;;
    view_label: "Usuario"
    label: "Equipo Propietario"
  }

  dimension: grupo_trabajo_alta {
    type: string
    sql: ${TABLE}.Usuario.GrupoTrabajo_Alta ;;
    view_label: "Usuario"
    label: "Grupo de Trabajo Alta"
  }

  dimension: grupo_trabajo_modif {
    type: string
    sql: ${TABLE}.Usuario.GrupoTrabajo_Modif ;;
    view_label: "Usuario"
    label: "Grupo de Trabajo Modificacion"
  }

  dimension: usuario_alias_alta {
    type: string
    sql: ${TABLE}.Usuario.UsuarioAlias_ALTA ;;
    view_label: "Usuario"
    label: "Alias Alta"
  }

  dimension: usuario_alias_asig {
    type: string
    sql: ${TABLE}.Usuario.UsuarioAlias_ASIG ;;
    view_label: "Usuario"
    label: "Alias Asignacion"
  }

  dimension: usuario_alias_modif {
    type: string
    sql: ${TABLE}.Usuario.UsuarioAlias_MODIF ;;
    view_label: "Usuario"
    label: "Alias Modificacion"
  }

  dimension: usuario_legajo_alta {
    type: string
    sql: ${TABLE}.Usuario.UsuarioLegajo_ALTA ;;
    view_label: "Usuario"
    label: "Legajo Alta"
  }

  dimension: usuario_legajo_asig {
    type: string
    sql: ${TABLE}.Usuario.UsuarioLegajo_ASIG ;;
    view_label: "Usuario"
    label: "Legajo Asignacion"
  }

  dimension: usuario_legajo_modif {
    type: string
    sql: ${TABLE}.Usuario.UsuarioLegajo_MODIF ;;
    view_label: "Usuario"
    label: "Legajo Modificacion"
  }

  dimension: usuarioempresa_alta {
    type: string
    sql: ${TABLE}.Usuario.USUARIOEMPRESA_ALTA ;;
    view_label: "Usuario"
    label: "Empresa Alta"
  }

##############
## Measures ##
##############

  measure: count_caso {
    type: count_distinct
    sql: ${caso_srcid} ;;
    label: "Cantidad de Casos"
    drill_fields: []
  }
}

#################################
### Nested Attributes - Views ###
#################################

###############
## Caso Hito ##
###############

view: fth_caso_caso_hito {

    ## Primary Key

  dimension: caso_hito_srcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.CasoHitoSRCId ;;
    value_format_name: id
    label: "Id"
  }

    ## Dates

  dimension: caso_hito_fecha_creacion_src {
    type: date_time
    sql: ${TABLE}.CasoHitoFechaCreacionSRC ;;
    datatype: timestamp
    label: "Fecha Creacion"
  }

  dimension: caso_hito_fecha_cumplido_src {
    type: date_time
    sql: ${TABLE}.CasoHitoFechaCumplidoSRC ;;
    datatype: timestamp
    label: "Fecha Cumplido"
  }

  dimension: caso_hito_fecha_mod_src {
    type: date_time
    sql: ${TABLE}.CasoHitoFechaModSRC ;;
    datatype: timestamp
    label: "Fecha Modificacion"
  }

  dimension: caso_hito_fecha_objetivo_src {
    type: date_time
    sql: ${TABLE}.CasoHitoFechaObjetivoSRC ;;
    datatype: timestamp
    label: "Fecha Objetivo"
  }

    ## Strings

  dimension: caso_hito_tiempo_excedido_minutos {
    type: string
    sql: ${TABLE}.CasoHitoTiempoExcedidoMinutos ;;
    label: "Tiempo Exedido Minutos"
  }

  dimension: caso_hito_tiempo_restante_minutos {
    type: string
    sql: ${TABLE}.CasoHitoTiempoRestanteMinutos ;;
    label: "Tiempo Restante Minutos"
  }

    ## Flags

  dimension: caso_hito_marca_completado {
    type: yesno
    sql: ${TABLE}.CasoHitoMarcaCompletado ;;
    label: "Es Hito Completado "
  }

    ## Numbers

  dimension: origen_srcid {
    type: number
    sql: ${TABLE}.OrigenSRCId ;;
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
}

###################
### Comentarios ###
###################

view: fth_caso_comentarios {

    ## Primary Key

  dimension: caso_comentario_srcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.CasoComentarioSRCId ;;
    value_format_name: id
    label: "Comentatio Id"
  }

    ## Fechas

  dimension: caso_comentario_fecha_creacion_src {
    type: date_time
    sql: ${TABLE}.CasoComentarioFechaCreacionSRC ;;
    datatype: timestamp
    label: "Fecha Creacion"
  }

    ## String

  dimension: caso_comentario_cuerpo {
    type: string
    sql: ${TABLE}.CasoComentarioCuerpo ;;
    label: "Comentario Cuerpo"
  }
}
