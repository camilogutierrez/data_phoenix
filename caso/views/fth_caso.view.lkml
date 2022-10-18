view: fth_caso {
  label: "Caso"
  sql_table_name: @{gcp_ambiente}.FTH_Caso` ;;
  suggestions: no

## Dimensions

  ## Primary Key

  dimension: caso_pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.CasoPK ;;
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
    datatype: date
    sql: ${TABLE}.FechaEntidad ;;
    convert_tz: no
    label: "Fecha Foto"
    description: "Se utiliza para consultar el estado de los datos al cierre de un dia determinado donde cada dia contiene la totalidad de los registros historicos almacenados hasta esa fecha."
  }

  dimension_group: caso_fecha_acuerdo_desde_src {
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
    sql: ${TABLE}.Fechas.CasoFechaAcuerdoDesdeSRC ;;
    datatype: timestamp
    view_label: "Acuerdo Servicio"
    group_label: "Fecha Acuerdo Desde"
    label: "Acuerdo Desde"
  }

  dimension_group: caso_fecha_acuerdo_hasta_src {
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
    sql: ${TABLE}.Fechas.CasoFechaAcuerdoHastaSRC ;;
    datatype: timestamp
    view_label: "Acuerdo Servicio"
    group_label: "Fecha Acuerdo Hasta"
    label: "Acuerdo Hasta"
  }

  dimension_group: caso_fecha_ajuste_desde_src {
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
    sql: ${TABLE}.Fechas.CasoFechaAjusteDesdeSRC ;;
    datatype: date
    convert_tz: no
    view_label: "Caso"
    group_label: "Fecha Ajuste Desde"
    label: "Ajuste Desde"
  }

  dimension_group: caso_fecha_ajuste_hasta_src {
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
    sql: ${TABLE}.Fechas.CasoFechaAjusteHastaSRC ;;
    datatype: date
    convert_tz: no
    view_label: "Caso"
    group_label: "Fecha Ajuste Hasta"
    label: "Ajuste Hasta"
  }

  dimension_group: caso_fecha_cierre_estimada_src {
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
    sql: ${TABLE}.Fechas.CasoFechaCierreEstimadaSRC ;;
    datatype: timestamp
    view_label: "Caso"
    group_label: "Fecha Cierre Estimado"
    label: "Cierre Estimado"
  }

  dimension_group: caso_fecha_cierre_src {
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
    sql: ${TABLE}.Fechas.CasoFechaCierreSRC ;;
    datatype: timestamp
    view_label: "Caso"
    group_label: "Fecha Cierre"
    label: "Cierre"
  }

  dimension_group: caso_fecha_creacion_src {
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
    sql: ${TABLE}.Fechas.CasoFechaCreacionSRC ;;
    datatype: timestamp
    view_label: "Caso"
    group_label: "Fecha Creacion"
    label: "Creacion"
  }

  dimension_group: caso_fecha_fin_garantia_reparacion_src {
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
    sql: ${TABLE}.Fechas.CasoFechaFinGarantiaReparacionSRC ;;
    datatype: date
    convert_tz: no
    view_label: "Caso"
    group_label: "Fecha Fin Garantia Reparacion"
    label: "Fin Garantia Reparacion"
  }

  dimension_group: caso_fecha_inicio_src {
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
    sql: ${TABLE}.Fechas.CasoFechaInicioSRC ;;
    datatype: timestamp
    view_label: "Otros"
    group_label: "Fecha Inicio Caso"
    label: "Inicio Caso"
  }

  dimension_group: caso_fecha_modificacion_src {
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
    sql: ${TABLE}.Fechas.CasoFechaModificacionSRC ;;
    datatype: timestamp
    view_label: "Caso"
    group_label: "Fecha Modificacion"
    label: "Modificacion"
  }

  dimension_group: caso_fecha_pago_src {
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
    sql: ${TABLE}.Fechas.CasoFechaPagoSRC ;;
    datatype: date
    convert_tz: no
    view_label: "Caso"
    group_label: "Fecha de Pago"
    label: "Pago"
  }

  dimension_group: caso_fecha_solicitud_src {
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
    sql: ${TABLE}.Fechas.CasoFechaSolicitudSRC ;;
    datatype: timestamp
    view_label: "Otros"
    group_label: "Fecha Solicitud"
    label: "Solicitud"
  }

  dimension_group: caso_fecha_vencimiento_src {
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
    sql: ${TABLE}.Fechas.CasoFechaVencimientoSRC ;;
    datatype: timestamp
    view_label: "Caso"
    group_label: "Fecha de Vencimiento de Portabilidad"
    label: "Vencimiento de Portabilidad"
    description: "Fecha de vencimiento de caso de portabilidad"
  }

  dimension_group: caso_fecha_ventana_portacion_src {
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
    sql: ${TABLE}.Fechas.CasoFechaVentanaPortacionSRC ;;
    datatype: timestamp
    view_label: "Caso"
    group_label: "Fecha Ventana Portacion"
    label: "Ventana Portacion"
  }

  dimension_group: caso_comentario_fecha_creacion_src {
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
    sql: ${TABLE}.CasoComentarios.CasoComentarioFechaCreacionSRC ;;
    datatype: timestamp
    view_label: "Otros"
    group_label: "Fecha Creacion Comentario"
    label: "Creacion Comentario"
  }

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

  dimension_group: caso_fecha_recepcion_src {
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
    sql: ${TABLE}.CasoFechaRecepcionSRC ;;
    datatype: timestamp
    group_label: "Fecha Recepcion"
    label: "Recepcion"
  }

  dimension_group: caso_fecha_unica_vencimiento_src {
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
    sql: ${TABLE}.CasoFechaUnicaVencimientoSRC ;;
    datatype: timestamp
    group_label: "Fecha Unico Vencimiento"
    label: "Unico Vencimiento"
  }

  ## Flags

  dimension: caso_comprobantes_adjuntos {
    type: yesno
    sql: ${TABLE}.Marcas.CasoComprobantesAdjuntos ;;
    view_label: "Otros"
    group_label: "Marcas"
    group_item_label: "Comprobantes Adjuntos"
    label: "Es Comprobantes Adjuntos"
  }

  dimension: caso_marca_cambio_garantia {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaCambioGarantia ;;
    view_label: "Otros"
    group_label: "Marcas"
    group_item_label: "Cambio Garantia"
    label: "Es Cambio Garantia"
  }

  dimension: caso_marca_cambio_placa {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaCambioPlaca ;;
    view_label: "Otros"
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
    view_label: "Otros"
    group_label: "Marcas"
    group_item_label: "Derivado Reparacion"
    label: "Es Derivado Reparacion"
  }

  dimension: caso_marca_en_garantia {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaEnGarantia ;;
    view_label: "Otros"
    group_label: "Marcas"
    group_item_label: "En Garantia"
    label: "Es En Garantia"
  }

  dimension: caso_marca_equipo_reparado {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaEquipoReparado ;;
    view_label: "Otros"
    group_label: "Marcas"
    group_item_label: "Equipo Reparado"
    label: "Es Equipo Reparado"
  }

  dimension: caso_marca_escalado {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaEscalado ;;
    view_label: "Otros"
    group_label: "Marcas"
    group_item_label: "Escalado"
    label: "Es Escalado"
  }

  dimension: caso_marca_excepcion {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaExcepcion ;;
    view_label: "Otros"
    group_label: "Marcas"
    group_item_label: "Excepcion"
    label: "Es Excepcion"
  }

  dimension: caso_marca_garantia_reparacion {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaGarantiaReparacion ;;
    view_label: "Otros"
    group_label: "Marcas"
    group_item_label: "Garantia Reparacion"
    label: "Es Garantia Reparacion"
  }

  dimension: caso_marca_gestion_muleto {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaGestionMuleto ;;
    view_label: "Otros"
    group_label: "Marcas"
    group_item_label: "Gestion Muleto"
    label: "Es Gestion Muleto"
  }

  dimension: caso_marca_muleto_completo {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaMuletoCompleto ;;
    view_label: "Otros"
    group_label: "Marcas"
    group_item_label: "Muleto Completo"
    label: "Es Muleto Completo"
  }

  dimension: caso_marca_nace_cerrado {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaNaceCerrado ;;
    view_label: "Otros"
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
    view_label: "Otros"
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
    view_label: "Otros"
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

  dimension: es_demanda_retencion {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaEsDemandaRetencion ;;
    group_label: "Marcas"
    group_item_label: "Demanda Retencion"
    label: "Es Demanda Retencion"
  }

  dimension: es_fidelizacion  {
    type: yesno
    sql: ${TABLE}.Marcas.CasoMarcaEsFidelizacion ;;
    group_label: "Marcas"
    group_item_label: "Fidelizacion"
    label: "Es Fidelizacion"
  }

  dimension: caso_desistible  {
    type: yesno
    sql: ${TABLE}.CasoDesistible ;;
    group_label: "Marcas"
    group_item_label: "Desistible"
    label: "Es Desistible"
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

  dimension: caso_srcid {
    type: string
    sql: ${TABLE}.CasoSRCId ;;
    view_label: "Caso"
    label: "Caso ID"
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
    view_label: "Otros"
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
    view_label: "Otros"
    label: "Motivo Contacto ID"
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
    view_label: "Caso"
    label: "Asignacion Atributo ID"
    description: "Corresponde a gestion de marcas"
  }

  dimension: caso_asistencia_tecnica_ya_tiene {
    type: string
    sql: ${TABLE}.CasoAsistenciaTecnicaYaTiene ;;
    view_label: "Caso"
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
    view_label: "Caso"
    label: "Cambio Aplicado Factura"
    description: "Es el cambio en la recepcion de la FT."
  }

  dimension: caso_cargos_operacion {
    type: string
    sql: ${TABLE}.CasoCargosOperacion ;;
    view_label: "Caso"
    label: "Cargos Cambio Numero"
    description: "Corresponde a los cargos de la operacion de cambio de numero."
  }

  dimension: caso_caso_externo_funcional_srcid {
    type: string
    sql: ${TABLE}.CasoCasoExternoFuncionalSRCId ;;
    view_label: "Otros"
    label: "Externo Funcional ID"
  }

  dimension: caso_caso_externo_srcid {
    type: string
    sql: ${TABLE}.CasoCasoExternoSRCId ;;
    view_label: "Caso"
    label: "Externo ID"
    description: "Codigo correspondiente a la funcionalidad de portabilidad"
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
    view_label: "Caso"
    label: "CBU Alias"
  }

  dimension: caso_ciudad {
    type: string
    sql: ${TABLE}.CasoCiudad ;;
    label: "Ciudad"
  }

  dimension: caso_cod_servicio {
    type: string
    sql: ${TABLE}.CasoCodServicio ;;
    label: "Codigo Servicio"
  }

  dimension: caso_codigo_error {
    type: string
    sql: ${TABLE}.CasoCodigoError ;;
    view_label: "Otros"
    label: "Codigo Error"
  }
  dimension: caso_cuenta_destino_srcid {
    type: string
    sql: ${TABLE}.CasoCuentaDestinoSRCId ;;
    view_label: "Caso"
    label: "Cuenta Destino ID"
    description: "Corresponde a cambios de titularidad."
  }

  dimension: caso_cuenta_facturacion_srcid {
    type: string
    sql: ${TABLE}.CasoCuentaFacturacionSRCId ;;
    view_label: "Cliente"
    label: "Cuenta Facturacion ID"
  }

  dimension: caso_cuenta_servicio_srcid {
    type: string
    sql: ${TABLE}.CasoCuentaServicioSRCId ;;
    view_label: "Cliente"
    label: "Cuenta Servicio ID"
  }

  dimension: caso_cupon_tarjeta {
    type: string
    sql: ${TABLE}.CasoCuponTarjeta ;;
    view_label: "Caso"
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
    view_label: "Caso"
    label: "Problema Muleto Detalle"
    description: "Detalle en funcionalidad Gestion de muletos"
  }

  dimension: caso_diagnostico_tecnico {
    type: string
    sql: ${TABLE}.CasoDiagnosticoTecnico ;;
    view_label: "Caso"
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
    view_label: "Caso"
    label: "Siniestro Direccion ID"
    description: "Corresponde al ID de Addres2"
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
    view_label: "Usuario"
    label: "Equipo Iniciador ID"
  }

  dimension: caso_equipo_propietario_srcid {
    type: string
    sql: ${TABLE}.CasoEquipoPropietarioSRCId ;;
    view_label: "Otros"
    label: "Equipo Propietario ID"
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
    view_label: "Caso"
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
    view_label: "Caso"
    label: "Gestion Muleto ID"
  }

  dimension: caso_gravedad {
    type: string
    sql: ${TABLE}.CasoGravedad ;;
    view_label: "Otros"
    label: "Gravedad"
  }

  dimension: caso_hito_estado {
    type: string
    sql: ${TABLE}.CasoHitoEstado ;;
    view_label: "Hitos"
    label: "Estado Hito"
  }

  dimension: caso_imeianterior {
    type: string
    sql: ${TABLE}.CasoIMEIAnterior ;;
    view_label: "Caso"
    label: "IMEI Anterior"
  }

  dimension: caso_imeiservicio_tecnico {
    type: string
    sql: ${TABLE}.CasoIMEIServicioTecnico ;;
    view_label: "Caso"
    label: "IMEI Servicio Tecnico"
  }

  dimension: caso_impacto {
    type: string
    sql: ${TABLE}.CasoImpacto ;;
    view_label: "Otros"
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
    view_label: "Otros"
    label: "Informacion Inventario"
  }

  dimension: caso_lista_plazos {
    type: string
    sql: ${TABLE}.CasoListaPlazos ;;
    view_label: "Otros"
    label: "Lista Plazos"
  }

  dimension: caso_llamada_padre_srcid {
    type: string
    sql: ${TABLE}.CasoLlamadaPadreSRCId ;;
    view_label: "Otros"
    label: "Llamada Padre ID"
    description: "Integracion con PIC - Call Parent ID"
  }

  dimension: caso_llamada_srcid {
    type: string
    sql: ${TABLE}.CasoLlamadaSRCId ;;
    view_label: "Otros"
    label: "Llamada ID"
    description: "Integracion con PIC - Call ID"
  }

  dimension: caso_marca_servicio_tecnico {
    type: string
    sql: ${TABLE}.CasoMarcaServicioTecnico ;;
    view_label: "Caso"
    label: "Marca Servicio Tecnico"
  }

  dimension: caso_medio_pago {
    type: string
    sql: ${TABLE}.CasoMedioPago ;;
    label: "Medio Pago ID"
  }

  dimension: caso_medio_pago_srcid {
    type: string
    sql: ${TABLE}.CasoMedioPagoSRCId ;;
    view_label: "Otros"
    label: "Medio Pago ID"
  }

  dimension: caso_mercado_donante_portacion {
    type: string
    sql: ${TABLE}.CasoMercadoDonantePortacion ;;
    label: "Mercado Donante Portacion"
  }

  dimension: caso_mercado_donante_portacion_srcid {
    type: string
    sql: ${TABLE}.CasoMercadoDonantePortacionSRCId ;;
    view_label: "Caso"
    label: "Mercado Donante Portacion ID"
  }

  dimension: caso_modalidad_recupero {
    type: string
    sql: ${TABLE}.CasoModalidadRecupero ;;
    view_label: "Caso"
    label: "Modalidad Recupero"
    description: "Modalidad de recupero del equipo."
  }

  dimension: caso_modelo_servicio_tecnico {
    type: string
    sql: ${TABLE}.CasoModeloServicioTecnico ;;
    view_label: "Caso"
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
    view_label: "Otros"
    label: "Nivel Servicio ID"
  }

  dimension: caso_nrnportacion_srcid {
    type: string
    sql: ${TABLE}.CasoNRNPortacionSRCId ;;
    view_label: "Caso"
    label: "Numero Portacion ID"
  }

  dimension: caso_nro_tarjeta {
    type: string
    sql: ${TABLE}.CasoNroTarjeta ;;
    view_label: "Caso"
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
    view_label: "Caso"
    label: "Numero Comprobante"
    description: "Comprobante del Detalle de Consumos"
  }

  dimension: caso_numero_estado {
    type: string
    sql: ${TABLE}.CasoNumeroEstado ;;
    label: "Numero Estado"
  }

  dimension: caso_numero_factura {
    type: string
    sql: ${TABLE}.CasoNumeroFactura ;;
    view_label: "Caso"
    label: "Numero Factura"
    description: "Comprobante para anulacion e inconvenientes con cargos y puntos"
  }

  dimension: caso_numero_linea {
    type: string
    sql: ${TABLE}.CasoNumeroLinea ;;
    label: "Numero Linea"
  }

  dimension: caso_numero_lote {
    type: string
    sql: ${TABLE}.CasoNumeroLote ;;
    view_label: "Otros"
    label: "Numero Lote"
  }

  dimension: caso_numero_referente_pago {
    type: string
    sql: ${TABLE}.CasoNumeroReferentePago ;;
    view_label: "Cliente"
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
    view_label: "Caso"
    label: "Operadora Receptora ID"
  }

  dimension: caso_origen {
    type: string
    sql: ${TABLE}.CasoOrigen ;;
    label: "Canal Origen"
    description: "Canal de origen del caso"
  }

  dimension: caso_padre_srcid {
    type: string
    sql: ${TABLE}.CasoPadreSRCId ;;
    label: "Caso Padre ID"
  }

  dimension: caso_pinportabilidad {
    type: string
    sql: ${TABLE}.CasoPINPortabilidad ;;
    label: "Pin Portabilidad"
  }

  dimension: caso_pintarjeta_prepago {
    type: string
    sql: ${TABLE}.CasoPINTarjetaPrepago ;;
    view_label: "Otros"
    label: "Pin Tarjeta Prepago"
  }

  dimension: caso_plazo_vencido_recepcion_factura {
    type: string
    sql: ${TABLE}.CasoPlazoVencidoRecepcionFactura ;;
    view_label: "Caso"
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
    view_label: "Caso"
    label: "Tipo de Marca"
    description: "Marca asignada al cliente en funcionalidad de Gestion de Marcas"
  }

  dimension: caso_producto_adquirido_proteccion_srcid {
    type: string
    sql: ${TABLE}.CasoProductoAdquiridoProteccionSRCId ;;
    view_label: "Producto Adquirido"
    label: "Proteccion ID"
  }

  dimension: caso_provincia {
    type: string
    sql: ${TABLE}.CasoProvincia ;;
    label: "Provincia"
  }

  dimension: caso_punto_venta_usuario_nombre {
    type: string
    sql: ${TABLE}.CasoPuntoVentaUsuarioNombre ;;
    view_label: "Otros"
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
    view_label: "Caso"
    label: "Resolucion Incidente"
    description: "Comentario que amplia informacion acerca de la resolucion del caso"
  }

  dimension: caso_seriales_recupero {
    type: string
    sql: ${TABLE}.CasoSerialesRecupero ;;
    view_label: "Caso"
    label: "Seriales Recupero"
  }

  dimension: caso_servicio_tecnico_sintoma {
    type: string
    sql: ${TABLE}.CasoServicioTecnicoSintoma ;;
    view_label: "Caso"
    label: "Servicio Tecnico Sintoma"
    description: "Diagnostico informado por el servicio tecnico"
  }

  dimension: caso_sub_area_atencion_nombre {
    type: string
    sql: ${TABLE}.CasoSubAreaAtencionNombre ;;
    view_label: "Otros"
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

  dimension: caso_tipo_registro {
    type: string
    sql: ${TABLE}.CasoTipoRegistro ;;
    view_label: "Caso"
    label: "Tipo Motivo Contacto"
    description: "Corresponde al record type, tipo de registro de caso"
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
    view_label: "Otros"
    label: "Tipo Proceso"
  }

  dimension: caso_tipo_recurrencia_srcid {
    type: string
    sql: ${TABLE}.CasoTipoRecurrenciaSRCId ;;
    view_label: "Otros"
    label: "Tipo Recurrencia ID"
  }

  dimension: caso_tipo_registro_nombre {
    type: string
    sql: ${TABLE}.CasoTipoRegistroNombre ;;
    view_label: "Otros"
    label: "Tipo Registro"
  }

  dimension: caso_tipo_seleccion {
    type: string
    sql: ${TABLE}.CasoTipoSeleccion ;;
    view_label: "Otros"
    label: "Tipo Seleccion"
  }

  dimension: caso_tipo_vencimiento {
    type: string
    sql: ${TABLE}.CasoTipoVencimiento ;;
    view_label: "Caso"
    label: "Tipo Vencimiento Acuerdo"
    description: "Tipo de vencimiento del acuerdo de pago"
  }

  dimension: caso_unidad_medida_nombre {
    type: string
    sql: ${TABLE}.CasoUnidadMedidaNombre ;;
    view_label: "Caso"
    label: "Unidad de Medida"
    description: "Corresponde a funcionalidad de inconvenientes con cargos"
  }

  dimension: caso_propietario_srcid {
    type: string
    sql: ${TABLE}.CasoPropietarioSRCId ;;
    view_label: "Usuario"
    label: "Usuario Asignado ID"
  }

  dimension: caso_usuario_modificacion_srcid {
    type: string
    sql: ${TABLE}.CasoUsuarioModificacionSRCId ;;
    view_label: "Usuario"
    label: "Modificacion ID"
  }

  dimension: caso_valores_pago {
    type: string
    sql: ${TABLE}.CasoValoresPago ;;
    view_label: "Caso"
    label: "Valores Pago"
  }

  dimension: grupo_trabajo_srcid {
    type: string
    sql: ${TABLE}.GrupoTrabajoSRCId ;;
    view_label: "Usuario"
    label: "Grupo Trabajo ID"
  }

  dimension: caso_cantidad_ajuste {
    type: string
    sql: ${TABLE}.CasoCantidadAjuste ;;
    label: "Ajuste Cantidad"
  }

  dimension: persona_srcid {
    type: string
    sql: ${TABLE}.PersonaSRCId ;;
    view_label: "Otros"
    label: "Persona ID"
  }

  dimension: producto_srcid {
    type: string
    sql: ${TABLE}.ProductoSRCId ;;
    view_label: "Producto"
    label: "Producto ID"
  }

  dimension: usuario_srcid {
    type: string
    sql: ${TABLE}.UsuarioSRCId ;;
    view_label: "Usuario"
    label: "Usuario ID"
  }

  dimension: caso_comentario_srcid {
    type: string
    sql: ${TABLE}.CasoComentarios.CasoComentarioSRCId ;;
    view_label: "Otros"
    label: "Comentario ID"
  }

  dimension: ultimo_comentario {
    type: string
    sql: ${TABLE}.CasoComentarios.UltimoComentario ;;
    label: "Ultimo Comentario"
  }

  dimension: caso_acuerdo_servicio_srcid {
    type: string
    sql: ${TABLE}.CasoAcuerdoServicioSRCId ;;
    view_label: "Otros"
    label: "Acuerdo Servicio ID"
  }

  dimension:  caso_reclamo_motivo {
    type: string
    sql: ${TABLE}.CasoReclamoMotivo ;;
    label: "Motivo Reclamo "
  }

  dimension:  caso_reclamo_submotivo {
    type: string
    sql: ${TABLE}.CasoReclamoSubmotivo ;;
    label: "Submotivo Reclamo"
  }

  dimension:  caso_dato_contacto {
    type: string
    sql: ${TABLE}.CasoDatoContacto ;;
    label: "Dato Contacto"
  }

  dimension:  caso_lineas_afectadas {
    type: string
    sql: ${TABLE}.CasoLineasAfectadas ;;
    label: "Lineas Afectadas"
  }

  dimension:  caso_instancia {
    type: string
    sql: ${TABLE}.CasoInstancia ;;
    label: "Instancia"
  }

  dimension:  caso_motivo_derivacion {
    type: string
    sql: ${TABLE}.CasoMotivoDerivacion ;;
    label: "Motivo Derivacion"
  }

  dimension:  caso_motivo_no_desistimiento {
    type: string
    sql: ${TABLE}.CasoMotivoNoDesistimiento ;;
    label: "Motivo No Desistimiento"
  }

  dimension:  caso_numero_expediente {
    type: string
    sql: ${TABLE}.CasoNumeroExpediente ;;
    label: "Numero Expediente"
  }

  dimension:  caso_respuesta {
    type: string
    sql: ${TABLE}.CasoRespuesta ;;
    label: "Respuesta"
  }

  dimension:  caso_solucion {
    type: string
    sql: ${TABLE}.CasoSolucion ;;
    label: "Solucion"
  }

  dimension:  caso_unidad_negocio {
    type: string
    sql: ${TABLE}.CasoUnidadNegocio ;;
    label: "Unidad Negocio"
  }

  dimension:  caso_localidad_reclamo_defensa {
    type: string
    sql: ${TABLE}.CasoLocalidadReclamoDefensa ;;
    label: "Localidad Reclamo Defensa"
  }

  dimension:  caso_localidad_reclamo_enacom {
    type: string
    sql: ${TABLE}.CasoLocalidadReclamoEnacom ;;
    label: "Localidad Reclamo ENACOM"
  }

  dimension:  caso_organismo_defensa_consumidor {
    type: string
    sql: ${TABLE}.CasoOrganismoDefensaConsumidor ;;
    label: "Organismo Defensa Consumidor"
  }

  dimension:  caso_provincia_reclamo_defensa {
    type: string
    sql: ${TABLE}.CasoProvinciaReclamoDefensa ;;
    label: "Provincia Reclamo Defensa"
  }

  dimension:  caso_motivo_no_desistible {
    type: string
    sql: ${TABLE}.CasoMotivoNoDesistible ;;
    label: "Motivo No Desistible"
  }

  dimension:  caso_delegacion_enacom {
    type: string
    sql: ${TABLE}.CasoDelegacionENACOM ;;
    label: "Delegacion ENACOM"
  }

  dimension:  caso_motivo_respuesta {
    type: string
    sql: ${TABLE}.CasoMotivoRespuesta ;;
    label: "Motivo Respuesta"
  }

  dimension:  caso_motivo_respuesta_enacom {
    type: string
    sql: ${TABLE}.CasoMotivoRespuestaENACOM ;;
    label: "Motivo Respuesta ENACOM"
  }

  dimension:  caso_verificador {
    type: string
    sql: ${TABLE}.CasoVerificador ;;
    label: "Verificador"
  }

  dimension:  caso_respuesta_tad {
    type: string
    sql: ${TABLE}.CasoRespuestaTAD ;;
    label: "Respuesta TAD"
  }

  dimension:  caso_numero_comprobante_tad {
    type: string
    sql: ${TABLE}.CasoNumeroComprobanteTAD ;;
    label: "Numero Comprobante TAD"
  }

  dimension:  caso_motivo_denuncia_cierre {
    type: string
    sql: ${TABLE}.CasoMotivoDenunciaCierre ;;
    label: "Motivo Cierre Denuncia"
  }

  dimension:  caso_subestado_nombre {
    type: string
    sql: ${TABLE}.CasoSubestadoNombre ;;
    label: "Subestado"
    description: "Detalla los motivos del estado de portabilidad"
  }

  dimension:  caso_operador_rechazo_portacion_nombre {
    type: string
    sql: ${TABLE}.CasoOperadorRechazoPortacionNombre ;;
    label: "Speech"
    description: "Indica el operador que rechazó la portación"
  }

  dimension:  caso_motivo_ajuste {
    type: string
    sql: ${TABLE}.CasoMotivoAjuste ;;
    label: "Motivo Adicional"
    description: "Indica el motivo complementario en algunas funcionalidades"
  }



  ## Numbers

  dimension: caso_cantidad_cuotas {
    type: number
    sql: ${TABLE}.CasoCantidadCuotas ;;
    view_label: "Caso"
    label: "Cantidad de Cuotas"
    description: "Cantidad de cuotas de acuerdo de pago y pago con tarjeta."
  }

  dimension: caso_porcentaje_proteccion {
    type: number
    sql: ${TABLE}.CasoPorcentajeProteccion ;;
    view_label: "Caso"
    label: "Porcentaje Proteccion"
    description: "Porcentaje de Proteccion Personal"
  }

  dimension: caso_numero_documento_portacion {
    type: number
    sql: ${TABLE}.CasoNumeroDocumentoPortacion ;;
  }

  dimension: caso_cantidad_casos_afectados {
    type: number
    sql: ${TABLE}.Numericos.CasoCantidadCasosAfectados ;;
    view_label: "Otros"
  }

  dimension: caso_cantidad_lineas_portacion {
    type: number
    sql: ${TABLE}.Numericos.CasoCantidadLineasPortacion ;;
  }

  dimension: caso_cantidad_re_llamados {
    type: number
    sql: ${TABLE}.Numericos.CasoCantidadReLlamados ;;
  }

  dimension: caso_importe_pago_areclamar {
    type: number
    sql: ${TABLE}.Numericos.CasoImportePagoAReclamar ;;
    value_format_name: decimal_2
    view_label: "Caso"
    label: "Importe Pago a Reclamar"
  }

  dimension: caso_limite_compra_actual {
    type: number
    sql: ${TABLE}.Numericos.CasoLimiteCompraActual ;;
    value_format_name: decimal_2
    view_label: "Caso"
    label: "Limite Compra Actual"
  }

  dimension: caso_limite_compra_aprobado {
    type: number
    sql: ${TABLE}.Numericos.CasoLimiteCompraAprobado ;;
    value_format_name: decimal_2
    view_label: "Caso"
    label: "Limite Compra Aprobado"
  }

  dimension: caso_limite_compra_solicitado {
    type: number
    sql: ${TABLE}.Numericos.CasoLimiteCompraSolicitado ;;
    value_format_name: decimal_2
    view_label: "Caso"
    label: "Limite Compra Solicitado"
  }

  dimension: caso_limite_consumo_actual {
    type: number
    sql: ${TABLE}.Numericos.CasoLimiteConsumoActual ;;
    view_label: "Otros"
  }

  dimension: caso_limite_consumo_aprobado {
    type: number
    sql: ${TABLE}.Numericos.CasoLimiteConsumoAprobado ;;
    view_label: "Otros"
  }

  dimension: caso_limite_consumo_solicitado {
    type: number
    sql: ${TABLE}.Numericos.CasoLimiteConsumoSolicitado ;;
    view_label: "Otros"
  }

  dimension: caso_llamadas_repetidas {
    type: number
    sql: ${TABLE}.Numericos.CasoLlamadasRepetidas ;;
    view_label: "Otros"
  }

  dimension: caso_monto_ajuste {
    type: number
    sql: ${TABLE}.Numericos.CasoMontoAjuste ;;
  }

  dimension: caso_saldo_vencido {
    type: number
    sql: ${TABLE}.Numericos.CasoSaldoVencido ;;
    view_label: "Caso"
    label: "Saldo Vencido de Acuerdo de Pago"
    description: "Saldo vencido de acuerdo de pago"
  }

  dimension: caso_importe_aplicado {
    type: number
    sql: ${TABLE}.CasoImporteAplicado ;;
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

  dimension: nomina_usr_creacion_fk {
    hidden: yes
    type: string
    sql: ${TABLE}.CasoNominaPeriodoCreacionUsuarioFK ;;
  }

#########################
## Acuerdo de Servicio ##
#########################

  ## Dates

  dimension_group: acuerdo_servicio_fecha_creacion_src {
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
    sql: ${TABLE}.AcuerdoServicio.AcuerdoServicioFechaCreacionSRC ;;
    datatype: timestamp
    view_label: "Acuerdo Servicio"
    group_label: "Fecha de Creacion"
    label: "Creacion"
  }

  dimension_group: acuerdo_servicio_fecha_desde_src {
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
    sql: ${TABLE}.AcuerdoServicio.AcuerdoServicioFechaDesdeSRC ;;
    datatype: date
    convert_tz: no
    view_label: "Acuerdo Servicio"
    group_label: "Fecha Desde"
    label: "Desde"
  }

  dimension_group: acuerdo_servicio_fecha_hasta_src {
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
    sql: ${TABLE}.AcuerdoServicio.AcuerdoServicioFechaHastaSRC ;;
    datatype: date
    convert_tz: no
    view_label: "Acuerdo Servicio"
    group_label: "Fecha Hasta"
    label: "Hasta"
  }

  dimension_group: acuerdo_servicio_fecha_reinicio_src {
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
    sql: ${TABLE}.AcuerdoServicio.AcuerdoServicioFechaReinicioSRC ;;
    datatype: date
    convert_tz: no
    view_label: "Acuerdo Servicio"
    group_label: "Fecha Reinicio"
    label: "Reinicio"
  }

  dimension_group: acuerdo_servicio_ult_mod_src {
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
    sql: ${TABLE}.AcuerdoServicio.AcuerdoServicioUltModSRC ;;
    datatype: timestamp
    view_label: "Acuerdo Servicio"
    group_label: "Fecha Ultima Modificacion"
    label: "Ultima Modificacion"
  }

  ## Flags

  dimension: acuerdo_servicio_marca_incidente {
    type: yesno
    sql: ${TABLE}.AcuerdoServicio.AcuerdoServicioMarcaIncidente ;;
    view_label: "Acuerdo Servicio"
    label: "Es Incidente"
  }

  ## Srings

  dimension: acuerdo_servicio_estado_acuerdo {
    type: string
    sql: ${TABLE}.AcuerdoServicio.AcuerdoServicioEstadoAcuerdo ;;
    view_label: "Acuerdo Servicio"
    label: "Estado"
  }

  dimension: acuerdo_servicio_nombre {
    type: string
    sql: ${TABLE}.AcuerdoServicio.AcuerdoServicioNombre ;;
    view_label: "Acuerdo Servicio"
    label: "Nombre"
  }

  dimension: acuerdo_servicio_tipo_acuerdo {
    type: string
    sql: ${TABLE}.AcuerdoServicio.AcuerdoServicioTipoAcuerdo ;;
    view_label: "Acuerdo Servicio"
    label: "Tipo"
  }

  dimension: as_caso_acuerdo_servicio_srcid {
    type: string
    sql: ${TABLE}.AcuerdoServicio.CasoAcuerdoServicioSRCId ;;
    view_label: "Acuerdo Servicio"
    label: "Acuerdo Servicio ID"
  }

  dimension: cuenta_srcid {
    type: string
    sql: ${TABLE}.AcuerdoServicio.CuentaSRCId ;;
    view_label: "Acuerdo Servicio"
    label: "Cuenta ID"
  }

  dimension: acuerdo_producto_adquirido_srcid {
    type: string
    sql: ${TABLE}.AcuerdoServicio.ProductoAdquiridoSRCId ;;
    view_label: "Acuerdo Servicio"
    label: "Producto Adquirido ID"
  }

  dimension: usuario_creacion_srcid {
    type: string
    sql: ${TABLE}.AcuerdoServicio.UsuarioCreacionSRCId ;;
    view_label: "Acuerdo Servicio"
    label: "Usuario Creacion ID"
  }

  dimension: usuario_modificacion_srcid {
    type: string
    sql: ${TABLE}.AcuerdoServicio.UsuarioModificacionSRCId ;;
    view_label: "Acuerdo Servicio"
    label: "Usuario Modificacion ID"
  }

  ## Hidden

  dimension: acuerdo_servicio_cant_casos {
    hidden: yes
    type: number
    sql: ${TABLE}.AcuerdoServicio.AcuerdoServicioCantCasos ;;
  }

  dimension: acuerdo_servicio_total_usos_destruccion {
    hidden: yes
    type: number
    sql: ${TABLE}.AcuerdoServicio.AcuerdoServicioTotalUsosDestruccion ;;
  }

  dimension: acuerdo_servicio_total_usos_servicio_tecnico {
    hidden: yes
    type: number
    sql: ${TABLE}.AcuerdoServicio.AcuerdoServicioTotalUsosServicioTecnico ;;
  }

  dimension: acuerdo_servicio_total_usos_siniestro {
    hidden: yes
    type: number
    sql: ${TABLE}.AcuerdoServicio.AcuerdoServicioTotalUsosSiniestro ;;
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
    view_label: "Otros"
    label: "Cliente ID"
  }

  dimension: cuenta_cliente_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaClienteSRCId ;;
    view_label: "Cliente"
    label: "Cuenta ID"
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
    view_label: "Otros"
    label: "Cliente Documento Tipo ID"
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
    label: "Orden ID"
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

##############
## Producto ##
##############

  ## Dates

  dimension_group: producto_vigencia_desde_src {
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
    sql: ${TABLE}.Producto.ProductoVigenciaDesdeSRC ;;
    datatype: date
    convert_tz: no
    view_label: "Producto"
    group_label: "Fecha Vigencia Desde"
    label: "Vigencia Desde"
  }

  dimension_group: producto_vigencia_hasta_src {
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
    sql: ${TABLE}.Producto.ProductoVigenciaHastaSRC ;;
    datatype: date
    convert_tz: no
    view_label: "Producto"
    group_label: "Fecha Vigencia Hasta"
    label: "Vigencia Hasta"
  }

  dimension_group: producto_fecha_creacion_src {
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
    sql: ${TABLE}.Producto.ProductoFechaCreacionSRC ;;
    datatype: timestamp
    view_label: "Producto"
    group_label: "Fecha Creacion"
    label: "Creacion"
  }

  dimension_group: producto_fecha_modificacion_src {
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
    sql: ${TABLE}.Producto.ProductoFechaModificacionSRC ;;
    datatype: timestamp
    view_label: "Producto"
    label: "Fecha Modificacion"
  }

  ## Flags

  dimension: producto_marca_activo {
    type: yesno
    sql: ${TABLE}.Producto.ProductoMarcaActivo ;;
    view_label: "Producto"
    group_label: "Marca"
    group_item_label: "Activo"
    label: "Es Activo"
  }

  dimension: producto_marca_orderable {
    type: yesno
    sql: ${TABLE}.Producto.ProductoMarcaOrderable ;;
    view_label: "Producto"
    group_label: "Marca"
    group_item_label: "Ordenable"
    label: "Es Ordenable"
  }

  dimension: producto_marca_no_assetizable {
    type: yesno
    sql: ${TABLE}.Producto.ProductoMarcaNoAssetizable ;;
    view_label: "Producto"
    group_label: "Marca"
    group_item_label: "No Assetizable"
    label: "No es Assetizable"
  }

  dimension: producto_marca_configurable {
    type: yesno
    sql: ${TABLE}.Producto.ProductoMarcaConfigurable ;;
    view_label: "Producto"
    group_label: "Marca"
    group_item_label: "Configurable"
    label: "Es Configurable"
  }

  dimension: producto_marca_tangible {
    type: yesno
    sql: ${TABLE}.Producto.ProductoMarcaTangible ;;
    view_label: "Producto"
    group_label: "Marca"
    group_item_label: "Tangible"
    label: "Es Tangible"
  }

  dimension: producto_marca_principal {
    type: yesno
    sql: ${TABLE}.Producto.ProductoMarcaPrincipal ;;
    view_label: "Producto"
    group_label: "Marca"
    group_item_label: "Principal"
    label: "Es Principal"
  }

  ## Srings

  dimension: producto_familia_srcid {
    type: string
    sql: ${TABLE}.Producto.ProductoFamiliaSRCId ;;
    view_label: "Producto"
    label: "Familia ID"
  }

  dimension: producto_familia_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoFamiliaNombre ;;
    view_label: "Producto"
    label: "Familia"
  }

  dimension: producto_estado_srcid {
    type: string
    sql: ${TABLE}.Producto.ProductoEstadoSRCId ;;
    view_label: "Producto"
    label: "Estado ID"
  }

  dimension: producto_estado_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoEstadoNombre ;;
    view_label: "Producto"
    label: "Estado"
  }

  dimension: producto_tipo_srcid {
    type: string
    sql: ${TABLE}.Producto.ProductoTipoSRCId ;;
    view_label: "Producto"
    label: "Tipo ID"
  }

  dimension: producto_tipo_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoTipoNombre ;;
    view_label: "Producto"
    label: "Tipo"
  }

  dimension: producto_subtipo_srcid {
    type: string
    sql: ${TABLE}.Producto.ProductoSubTipoSRCId ;;
    view_label: "Producto"
    label: "Subtipo ID"
  }

  dimension: producto_subtipo_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoSubTipoNombre ;;
    view_label: "Producto"
    label: "Subtipo"
  }

  dimension: producto_mercado_srcid {
    type: string
    sql: ${TABLE}.Producto.ProductoMercadoSRCId ;;
    view_label: "Producto"
    label: "Mercado ID"
  }

  dimension: producto_mercado_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoMercadoNombre ;;
    view_label: "Producto"
    label: "Mercado"
  }

  dimension: producto_codigo {
    type: string
    sql: ${TABLE}.Producto.ProductoCodigo ;;
    view_label: "Producto"
    label: "Codigo"
  }

  dimension: producto_sistema_origen_codigo {
    type: string
    sql: ${TABLE}.Producto.ProductoSistemaOrigenCodigo ;;
    view_label: "Producto"
    label: "Sistema Origen Codigo"
  }

  dimension: producto_descripcion {
    type: string
    sql: ${TABLE}.Producto.ProductoDescripcion ;;
    view_label: "Producto"
    label: "Descripcion"
  }

  dimension: producto_nmu {
    type: string
    sql: ${TABLE}.Producto.ProductoNmu ;;
    view_label: "Producto"
    label: "Nmu"
  }

  dimension: producto_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoNombre ;;
    view_label: "Producto"
    label: "Nombre"
  }

  dimension: producto_sistema_origen_intid {
    type: string
    sql: ${TABLE}.Producto.ProductoSistemaOrigenINTId ;;
    view_label: "Producto"
    label: "Sistema Origen ID"
  }

  dimension: producto_sistema_origen_descripcion {
    type: string
    sql: ${TABLE}.Producto.ProductoSistemaOrigenDescripcion ;;
    view_label: "Producto"
    label: "Sistema Origen Descripcion"
  }

  dimension: producto_segmento_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoSegmentoNombre ;;
    view_label: "Producto"
    label: "Segmento"
  }

  dimension: producto_tipo_especificacion {
    type: string
    sql: ${TABLE}.Producto.ProductoTipoEspecificacion ;;
    view_label: "Producto"
    label: "Tipo Especificacion"
  }

  dimension: producto_tipo_objeto_descripcion {
    type: string
    sql: ${TABLE}.Producto.ProductoTipoObjetoDescripcion ;;
    view_label: "Producto"
    label: "Tipo Objeto"
  }

  dimension: producto_segmento_srcid {
    type: string
    sql: ${TABLE}.Producto.ProductoSegmentoSRCId ;;
    view_label: "Producto"
    label: "Segmento ID"
  }

  ## Hidden

  dimension: producto_familia_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto.ProductoFamiliaSK ;;
  }

  dimension: producto_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto.ProductoEstadoSK ;;
  }

  dimension: producto_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto.ProductoTipoSK ;;
  }

  dimension: producto_subtipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto.ProductoSubTipoSK ;;
  }

  dimension: producto_mercado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto.ProductoMercadoSK ;;
  }

  dimension: producto_segmento_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto.ProductoSegmentoSK ;;
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
    label: "Producto Adquirido ID"
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

  dimension: usuario_empresa_modificacion {
    type: string
    sql: ${TABLE}.Usuario.UsuarioEmpresaModificacion ;;
    view_label: "Usuario"
    label: "Empresa Alta Modificacion"
  }

  dimension: usuario_empresa_propietario {
    type: string
    sql: ${TABLE}.Usuario.UsuarioEmpresaPropietario ;;
    view_label: "Usuario"
    label: "Empresa Asignacion"
  }

  dimension: usuario_equipo_iniciador {
    type: string
    sql: ${TABLE}.Usuario.UsuarioEquipoIniciador ;;
    view_label: "Usuario"
    label: "Equipo Iniciador"
  }

  dimension: usuario_equipo_propietario {
    type: string
    sql: ${TABLE}.Usuario.UsuarioEquipoPropietario ;;
    view_label: "Usuario"
    label: "Equipo Propietario"
  }

  dimension: usuario_grupo_trabajo_modificacion {
    type: string
    sql: ${TABLE}.Usuario.UsuarioGrupoTrabajoModificacion ;;
    view_label: "Usuario"
    label: "Grupo de Trabajo Modificacion"
  }

  dimension: usuario_alias_alta {
    type: string
    sql: ${TABLE}.Usuario.UsuarioAliasAlta ;;
    view_label: "Usuario"
    label: "Alias Alta"
  }

  dimension: usuario_alias_propietario {
    type: string
    sql: ${TABLE}.Usuario.UsuarioAliasPropietario ;;
    view_label: "Usuario"
    label: "Alias Asignacion"
  }

  dimension: usuario_alias_modificacion {
    type: string
    sql: ${TABLE}.Usuario.UsuarioAliasModificacion ;;
    view_label: "Usuario"
    label: "Alias Modificacion"
  }

  dimension: usuario_legajo_alta {
    type: string
    sql: ${TABLE}.Usuario.UsuarioLegajoAlta ;;
    view_label: "Usuario"
    label: "Legajo Alta"
  }

  dimension: usuario_legajo_propietario {
    type: string
    sql: ${TABLE}.Usuario.UsuarioLegajoPropietario ;;
    view_label: "Usuario"
    label: "Legajo Asignacion"
  }

  dimension: usuario_legajo_modificacion {
    type: string
    sql: ${TABLE}.Usuario.UsuarioLegajoModificacion ;;
    view_label: "Usuario"
    label: "Legajo Modificacion"
  }

  dimension: usuario_empresa_alta {
    type: string
    sql: ${TABLE}.Usuario.UsuarioEmpresaAlta ;;
    view_label: "Usuario"
    label: "Empresa Alta"
  }

## Measures

  measure: count_caso {
    type: count
    label: "Casos"
  }

  measure: total_acuerdo_servicio_cant_casos {
    type: sum
    sql: ${TABLE}.AcuerdoServicio.AcuerdoServicioCantCasos ;;
    view_label: "Acuerdo Servicio"
    label: "Cantidad Casos"
  }

  measure: total_acuerdo_servicio_total_usos_destruccion {
    type: sum
    sql: ${TABLE}.AcuerdoServicio.AcuerdoServicioTotalUsosDestruccion ;;
    view_label: "Acuerdo Servicio"
    label: "Cantidad Usos Destruccion"
  }

  measure: total_acuerdo_servicio_total_usos_servicio_tecnico {
    type: sum
    sql: ${TABLE}.AcuerdoServicio.AcuerdoServicioTotalUsosServicioTecnico ;;
    view_label: "Acuerdo Servicio"
    label: "Cantidad Usos Servicio Tecnico"
  }

  measure: total_acuerdo_servicio_total_usos_siniestro {
    type: sum
    sql: ${TABLE}.AcuerdoServicio.AcuerdoServicioTotalUsosSiniestro ;;
    view_label: "Acuerdo Servicio"
    label: "Cantidad Usos Siniestro"
  }

  measure: count_alta_debito_autom{
    type: count
    label: "Alta DA"
    description: "Casos de adhesion al debito automatico."
    filters: [
      caso_tipo_nombre: "DEBITO AUTOMATICO"
      , caso_estado_nombre: "RESUELTA EXITOSA"
      , caso_sub_tipo_nombre: "ADHESION"
    ]
  }

  measure: count_baja_debito_autom{
    type: count
    label: "Baja DA"
    description: "Casos de baja al debito automatico."
    filters: [
      caso_tipo_nombre: "DEBITO AUTOMATICO"
      , caso_estado_nombre: "RESUELTA EXITOSA"
      , caso_sub_tipo_nombre: "BAJA"
    ]
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
    view_label: "Hitos"
    label: "Caso Hito ID"
  }

  ## Dates

  dimension: caso_hito_fecha_creacion_src {
    type: date_time
    sql: ${TABLE}.CasoHitoFechaCreacionSRC ;;
    datatype: timestamp
    view_label: "Hitos"
    label: "Fecha Creacion"
  }

  dimension: caso_hito_fecha_cumplido_src {
    type: date_time
    sql: ${TABLE}.CasoHitoFechaCumplidoSRC ;;
    datatype: timestamp
    view_label: "Hitos"
    label: "Fecha Cumplido"
  }

  dimension: caso_hito_fecha_mod_src {
    type: date_time
    sql: ${TABLE}.CasoHitoFechaModSRC ;;
    datatype: timestamp
    view_label: "Hitos"
    label: "Fecha Modificacion"
  }

  dimension: caso_hito_fecha_objetivo_src {
    type: date_time
    sql: ${TABLE}.CasoHitoFechaObjetivoSRC ;;
    datatype: timestamp
    view_label: "Hitos"
    label: "Fecha Objetivo"
  }

  ## Strings

  dimension: caso_hito_tiempo_excedido_minutos {
    type: string
    sql: ${TABLE}.CasoHitoTiempoExcedidoMinutos ;;
    view_label: "Hitos"
    label: "Tiempo Exedido Minutos"
  }

  dimension: caso_hito_tiempo_restante_minutos {
    type: string
    sql: ${TABLE}.CasoHitoTiempoRestanteMinutos ;;
    view_label: "Hitos"
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
    value_format_name: id
    view_label: "Otros"
    label: "Origen ID"
  }

  dimension: caso_hito_tiempo_objetivo_dias {
    type: number
    sql: ${TABLE}.CasoHitoTiempoObjetivoDias ;;
    view_label: "Hitos"
    label: "Tiempo Objetivo Dias"
  }

  dimension: caso_hito_tiempo_objetivo_horas {
    type: number
    sql: ${TABLE}.CasoHitoTiempoObjetivoHoras ;;
    view_label: "Hitos"
    label: "Tiempo Objetivo Horas"
  }

  dimension: caso_hito_tiempo_objetivo_minutos {
    type: number
    sql: ${TABLE}.CasoHitoTiempoObjetivoMinutos ;;
    view_label: "Hitos"
    label: "Tiempo Objetivo Minutos"
  }

  dimension: caso_hito_tiempo_transcurrido_dias {
    type: number
    sql: ${TABLE}.CasoHitoTiempoTranscurridoDias ;;
    view_label: "Hitos"
    label: "Tiempo Transcurrido Dias"
  }

  dimension: caso_hito_tiempo_transcurrido_horas {
    type: number
    sql: ${TABLE}.CasoHitoTiempoTranscurridoHoras ;;
    view_label: "Hitos"
    label: "Tiempo Transcurrido Horas"
  }

  dimension: caso_hito_tiempo_transcurrido_minutos {
    type: number
    sql: ${TABLE}.CasoHitoTiempoTranscurridoMinutos ;;
    view_label: "Hitos"
    label: "Tiempo Transcurrido Minutos"
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
    label: "Comentario ID"
  }

  ## Dates

  dimension: caso_comentario_fecha_creacion_src {
    type: date_time
    sql: ${TABLE}.CasoComentarioFechaCreacionSRC ;;
    datatype: timestamp
    label: "Fecha Creacion"
  }

  ## Strings

  dimension: caso_comentario_cuerpo {
    type: string
    sql: ${TABLE}.CasoComentarioCuerpo ;;
    label: "Comentario Cuerpo"
  }
}
