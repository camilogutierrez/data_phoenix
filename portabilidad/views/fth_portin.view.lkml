view: fth_portin {
  label: "Portin"
  sql_table_name: @{gcp_ambiente}.FTH_Portin` ;;
  suggestions: no


## Dimensions

  ## Primary Key
  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.PortinPK ;;
  }

  ## Dates

  dimension: fecha_entidad {
    type: date
    datatype: date
    sql: ${TABLE}.FechaEntidad ;;
    label: "Fecha Entidad"
    description: "Indica la Fecha de Foto seleccionada"
  }

  dimension: _fecha_creacion {
    type: date_time
    datatype: timestamp
    sql: ${TABLE}._fechaCreacion ;;
    view_label: "Auditoria"
    label: "Fecha Creacion"
  }

  dimension: _fecha_ultima_actualizacion {
    type: date_time
    datatype: timestamp
    sql: ${TABLE}._fechaUltimaActualizacion ;;
    view_label: "Auditoria"
    label: "Fecha Ultima Actualizacion"
  }

  dimension_group: venta_master_caso_fecha_creacion_src {
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
    sql: ${TABLE}.VentaMaster.CasoFechaCreacionSRC ;;
    view_label: "Caso"
    group_label: "Fecha Creacion Venta Master"
    label: "Creacion Venta Master"
    description: "Fecha de creación del Caso de Venta Master en el CRM."
  }

  dimension_group: padre_porta_caso_fecha_creacion_src {
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
    sql: ${TABLE}.PadrePorta.CasoFechaCreacionSRC ;;
    view_label: "Caso"
    group_label: "Fecha Creacion Padre Porta"
    label: "Creacion Padre Porta"
    description: "Fecha de creación del Caso Padre asociado a la Portabilidad."
  }

  dimension_group: padre_porta_caso_fecha_mod_src {
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
    sql: ${TABLE}.PadrePorta.CasoFechaModSRC ;;
    view_label: "Caso"
    group_label: "Fecha Modificacion"
    label: "Modificacion"
    description: "Fecha de modificación del Caso Padre asociado a la Portabilidad."
  }

  dimension_group: hijo_porta_orden_fecha_activacion_src {
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
    sql: ${TABLE}.HijoPorta.OrdenFechaActivacionSRC ;;
    view_label: "Orden"
    group_label: "Fecha Activacion"
    label: "Activacion"
    description: "Fecha de activación de la Orden de CRM asociada a la Portabilidad."
  }

  dimension_group: hijo_porta_orden_fecha_fin_src {
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
    datatype: date
    sql: ${TABLE}.HijoPorta.OrdenFechaFinSRC ;;
    view_label: "Orden"
    group_label: "Fecha Fin"
    label: "Fin"
    description: "Fecha de fin de la Orden de CRM asociada a la Portabilidad."
  }

  ## Strings
  dimension: cliente_razon_social {
    type: string
    sql: ${TABLE}.Cliente.ClienteRazonSocial ;;
    view_label: "Cliente"
    label: "Razon Social"
    description: "Razón social del Cliente asociado a la Orden de Venta Portin del CRM."
  }

  dimension: cliente_segmento1_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento1Nombre ;;
    view_label: "Cliente"
    label: "Segmento 1"
    description: "Segmento Nivel 1 del Cliente asociado a la Orden de Venta Portin del CRM."
  }

  dimension: cliente_segmento2_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento2Nombre ;;
    view_label: "Cliente"
    label: "Segmento 2"
    description: "Segmento Nivel 2 del Cliente asociado a la Orden de Venta Portin del CRM."
  }

  dimension: cliente_cuenta_codigo {
    type: string
    sql: ${TABLE}.Cliente.CuentaCodigo ;;
    view_label: "Cliente"
    label: "Cuenta Codigo"
    description: "Código de integración con HW de la cuenta asociada a la Orden de Venta Portin del CRM."
  }

  dimension: cliente_cuenta_tipo_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaTipoSRCId ;;
    view_label: "Cliente"
    label: "Cuenta Tipo"
    description: "Tipo de cuenta asociada a la Orden de Venta Portin del CRM."
  }

  dimension: cliente_persona_documento_numero {
    type: string
    sql: ${TABLE}.Cliente.PersonaDocumentoNumero ;;
    view_label: "Cliente"
    label: "Documento Numero"
    description: "N° de documento del Cliente asociado a la Orden de Venta Portin del CRM."
  }

  dimension: cliente_persona_tipo_documento_srcid {
    type: string
    sql: ${TABLE}.Cliente.PersonaTipoDocumentoSRCId ;;
    view_label: "Cliente"
    label: "Tipo Documento"
    description: "Tipo de documento del Cliente asociado a la Orden de Venta Portin del CRM."
  }

  dimension: geografia_rango_numeracion_departamento_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionDepartamentoNombre ;;
    view_label: "Geografia"
    label: "Rango Numeracion Departamento"
    description: "Grupo de Localidad del Prefijo de la Línea que es cliente."
  }

  dimension: geografia_rango_numeracion_localidad_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionLocalidadNombre ;;
    view_label: "Geografia"
    label: "Rango Numeracion Localidad"
    description: "Localidad del Prefijo de la Línea que es cliente."
  }

  dimension: geografia_rango_numeracion_provincia_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionProvinciaNombre ;;
    view_label: "Geografia"
    label: "Rango Numeracion Provincia"
    description: "Provincia del Prefijo de la Línea que es cliente."
  }

  dimension: geografia_rango_numeracion_prefijo_interurbano {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionPrefijoInterurbano ;;
    view_label: "Geografia"
    label: "Rango Numeracion Prefijo Interurbano"
    description: "Prefijo Interurbano de la Línea que es cliente."
  }

  dimension: geografia_rango_numeracion_prefijos {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionPrefijos ;;
    view_label: "Geografia"
    label: "Rango Numeracion Prefijos"
    description: "Prefijo Urbano + Interurbano de la Línea que es cliente."
  }

  dimension: hijo_porta__caso_estado_nombre {
    type: string
    sql: ${TABLE}.HijoPorta.CasoEstadoNombre ;;
    view_label: "Hijo Porta"
    label: "Caso Estado Nombre"
  }

  dimension: hijo_porta__caso_mercado_donante_portacion {
    type: string
    sql: ${TABLE}.HijoPorta.CasoMercadoDonantePortacion ;;
    view_label: "Hijo Porta"
    label: "Caso Mercado Donante Portacion"
  }

  dimension: hijo_porta__caso_msisdn_lista_portout {
    type: string
    sql: ${TABLE}.HijoPorta.CasoMsisdnListaPortout ;;
    view_label: "Hijo Porta"
    label: "Caso Msisdn Lista Portout"
  }

  dimension: hijo_porta__caso_numero {
    type: string
    sql: ${TABLE}.HijoPorta.CasoNumero ;;
    view_label: "Hijo Porta"
    label: "Caso Numero"
  }

  dimension: hijo_porta__caso_tipo_nombre {
    type: string
    sql: ${TABLE}.HijoPorta.CasoTipoNombre ;;
    view_label: "Hijo Porta"
    label: "Caso Tipo Nombre"
  }

  dimension: hijo_porta__orden_estado_nombre {
    type: string
    sql: ${TABLE}.HijoPorta.OrdenEstadoNombre ;;
    view_label: "Hijo Porta"
    label: "Orden Estado Nombre"
  }

  dimension: hijo_porta__orden_item_accion_nombre {
    type: string
    sql: ${TABLE}.HijoPorta.OrdenItemAccionNombre ;;
    view_label: "Hijo Porta"
    label: "Orden Item Accion Nombre"
  }

  dimension: hijo_porta__orden_numero {
    type: string
    sql: ${TABLE}.HijoPorta.OrdenNumero ;;
    view_label: "Hijo Porta"
    label: "Orden Numero"
  }

  dimension: hijo_porta__orden_srcid {
    type: string
    sql: ${TABLE}.HijoPorta.OrdenSRCId ;;
    view_label: "Hijo Porta"
    label: "Orden Srcid"
  }

  dimension: hijo_porta__orden_tipo_gestion_nombre {
    type: string
    sql: ${TABLE}.HijoPorta.OrdenTipoGestionNombre ;;
    view_label: "Hijo Porta"
    label: "Orden Tipo Gestion Nombre"
  }

  dimension: hijo_porta__orden_tipo_sub_gestion_nombre {
    type: string
    sql: ${TABLE}.HijoPorta.OrdenTipoSubGestionNombre ;;
    view_label: "Hijo Porta"
    label: "Orden Tipo Sub Gestion Nombre"
  }

  dimension: metricas__portin_cantida_neta {
    type: number
    sql: ${TABLE}.Metricas.PortinCantidaNeta ;;
    view_label: "Metricas"
    label: "Portin Cantida Neta"
  }

  dimension: metricas__portin_cantidad_porta_unica {
    type: number
    sql: ${TABLE}.Metricas.PortinCantidadPortaUnica ;;
    view_label: "Metricas"
    label: "Portin Cantidad Porta Unica"
  }

  dimension: metricas__portin_cantidad_pre_neta {
    type: number
    sql: ${TABLE}.Metricas.PortinCantidadPreNeta ;;
    view_label: "Metricas"
    label: "Portin Cantidad Pre Neta"
  }

  dimension: padre_porta__caso_cantidad_lineas_portacion {
    type: number
    sql: ${TABLE}.PadrePorta.CasoCantidadLineasPortacion ;;
    view_label: "Padre Porta"
    label: "Caso Cantidad Lineas Portacion"
  }

  dimension: padre_porta__caso_estado_nombre {
    type: string
    sql: ${TABLE}.PadrePorta.CasoEstadoNombre ;;
    view_label: "Padre Porta"
    label: "Caso Estado Nombre"
  }

  dimension: padre_porta__caso_estado_proceso_portacion {
    type: string
    sql: ${TABLE}.PadrePorta.CasoEstadoProcesoPortacion ;;
    view_label: "Padre Porta"
    label: "Caso Estado Proceso Portacion"
  }

  dimension: padre_porta__caso_mercado_donante_portacion {
    type: string
    sql: ${TABLE}.PadrePorta.CasoMercadoDonantePortacion ;;
    view_label: "Padre Porta"
    label: "Caso Mercado Donante Portacion"
  }

  dimension: padre_porta__caso_mercado_donante_portacion_srcid {
    type: string
    sql: ${TABLE}.PadrePorta.CasoMercadoDonantePortacionSRCId ;;
    view_label: "Padre Porta"
    label: "Caso Mercado Donante Portacion Srcid"
  }

  dimension: padre_porta__caso_motivo_nombre {
    type: string
    sql: ${TABLE}.PadrePorta.CasoMotivoNombre ;;
    view_label: "Padre Porta"
    label: "Caso Motivo Nombre"
  }

  dimension: padre_porta__caso_numero {
    type: string
    sql: ${TABLE}.PadrePorta.CasoNumero ;;
    view_label: "Padre Porta"
    label: "Caso Numero"
  }

  dimension: padre_porta__caso_tipo_nombre {
    type: string
    sql: ${TABLE}.PadrePorta.CasoTipoNombre ;;
    view_label: "Padre Porta"
    label: "Caso Tipo Nombre"
  }

  dimension: padre_porta__grupo_trabajo_nombre {
    type: string
    sql: ${TABLE}.PadrePorta.GrupoTrabajoNombre ;;
    view_label: "Padre Porta"
    label: "Grupo Trabajo Nombre"
  }

  dimension: padre_porta__orden_srcid {
    type: string
    sql: ${TABLE}.PadrePorta.OrdenSRCId ;;
    view_label: "Padre Porta"
    label: "Orden Srcid"
  }

  dimension: padre_porta__usuario_legajo {
    type: string
    sql: ${TABLE}.PadrePorta.UsuarioLegajo ;;
    view_label: "Padre Porta"
    label: "Usuario Legajo"
  }

  dimension: padre_porta__usuario_nombre_completo {
    type: string
    sql: ${TABLE}.PadrePorta.UsuarioNombreCompleto ;;
    view_label: "Padre Porta"
    label: "Usuario Nombre Completo"
  }

  dimension: portin_nomina_periodo_creacion_usuario_fk {
    type: string
    sql: ${TABLE}.PortinNominaPeriodoCreacionUsuarioFK ;;
  }

  dimension: portin_pk {
    type: string
    sql: ${TABLE}.PortinPK ;;
  }

  dimension: producto_adquirido_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoNombre ;;
  }

  dimension: producto_adquirido_producto_codigo {
    type: string
    sql: ${TABLE}.ProductoAdquiridoProductoCodigo ;;
  }

  dimension: producto_tipo_nombre {
    type: string
    sql: ${TABLE}.ProductoTipoNombre ;;
  }

  dimension: promocion__orden_precio_valor_ajuste {
    type: number
    sql: ${TABLE}.Promocion.OrdenPrecioValorAjuste ;;
    view_label: "Promocion"
    label: "Orden Precio Valor Ajuste"
  }

  dimension: promocion__promocion_codigo {
    type: string
    sql: ${TABLE}.Promocion.PromocionCodigo ;;
    view_label: "Promocion"
    label: "Promocion Codigo"
  }

  dimension: promocion__promocion_nombre {
    type: string
    sql: ${TABLE}.Promocion.PromocionNombre ;;
    view_label: "Promocion"
    label: "Promocion Nombre"
  }

  dimension: venta_master__caso_estado_nombre {
    type: string
    sql: ${TABLE}.VentaMaster.CasoEstadoNombre ;;
    view_label: "Venta Master"
    label: "Caso Estado Nombre"
  }

  dimension: venta_master__caso_llamada_padre_srcid {
    type: string
    sql: ${TABLE}.VentaMaster.CasoLlamadaPadreSRCId ;;
    view_label: "Venta Master"
    label: "Caso Llamada Padre Srcid"
  }

  dimension: venta_master__caso_numero {
    type: string
    sql: ${TABLE}.VentaMaster.CasoNumero ;;
    view_label: "Venta Master"
    label: "Caso Numero"
  }

  dimension: venta_master__caso_tipo_nombre {
    type: string
    sql: ${TABLE}.VentaMaster.CasoTipoNombre ;;
    view_label: "Venta Master"
    label: "Caso Tipo Nombre"
  }

  dimension: venta_master__grupo_trabajo_nombre {
    type: string
    sql: ${TABLE}.VentaMaster.GrupoTrabajoNombre ;;
    view_label: "Venta Master"
    label: "Grupo Trabajo Nombre"
  }

  dimension: venta_master__punto_venta_nombre {
    type: string
    sql: ${TABLE}.VentaMaster.PuntoVentaNombre ;;
    view_label: "Venta Master"
    label: "Punto Venta Nombre"
  }

  dimension: venta_master__punto_venta_tipo_canal_nombre {
    type: string
    sql: ${TABLE}.VentaMaster.PuntoVentaTipoCanalNombre ;;
    view_label: "Venta Master"
    label: "Punto Venta Tipo Canal Nombre"
  }

  dimension: venta_master__usuario_legajo {
    type: string
    sql: ${TABLE}.VentaMaster.UsuarioLegajo ;;
    view_label: "Venta Master"
    label: "Usuario Legajo"
  }

  dimension: venta_master__usuario_nombre_completo {
    type: string
    sql: ${TABLE}.VentaMaster.UsuarioNombreCompleto ;;
    view_label: "Venta Master"
    label: "Usuario Nombre Completo"
  }

  dimension: venta_portin__caso_llamada_padre_srcid {
    type: string
    sql: ${TABLE}.VentaPortin.CasoLlamadaPadreSRCId ;;
    view_label: "Venta Portin"
    label: "Caso Llamada Padre Srcid"
  }

  dimension: venta_portin__caso_numero {
    type: string
    sql: ${TABLE}.VentaPortin.CasoNumero ;;
    view_label: "Venta Portin"
    label: "Caso Numero"
  }

  dimension: venta_portin__caso_tipo_nombre {
    type: string
    sql: ${TABLE}.VentaPortin.CasoTipoNombre ;;
    view_label: "Venta Portin"
    label: "Caso Tipo Nombre"
  }

  dimension: venta_portin__orden_grupo_trabajo_nombre {
    type: string
    sql: ${TABLE}.VentaPortin.OrdenGrupoTrabajoNombre ;;
    view_label: "Venta Portin"
    label: "Orden Grupo Trabajo Nombre"
  }

  dimension: venta_portin__orden_item_accion_nombre {
    type: string
    sql: ${TABLE}.VentaPortin.OrdenItemAccionNombre ;;
    view_label: "Venta Portin"
    label: "Orden Item Accion Nombre"
  }

  dimension: venta_portin__orden_llamada_padre_srcid {
    type: string
    sql: ${TABLE}.VentaPortin.OrdenLlamadaPadreSRCId ;;
    view_label: "Venta Portin"
    label: "Orden Llamada Padre Srcid"
  }

  dimension: venta_portin__orden_numero {
    type: string
    sql: ${TABLE}.VentaPortin.OrdenNumero ;;
    view_label: "Venta Portin"
    label: "Orden Numero"
  }

  dimension: venta_portin__orden_tipo_gestion_nombre {
    type: string
    sql: ${TABLE}.VentaPortin.OrdenTipoGestionNombre ;;
    view_label: "Venta Portin"
    label: "Orden Tipo Gestion Nombre"
  }

  dimension: venta_portin__orden_tipo_sub_gestion_nombre {
    type: string
    sql: ${TABLE}.VentaPortin.OrdenTipoSubGestionNombre ;;
    view_label: "Venta Portin"
    label: "Orden Tipo Sub Gestion Nombre"
  }

  ## Hidden

  dimension: geografia_rango_numeracion_localidad_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionLocalidadSRCId ;;
  }

  dimension: geografia__rango_numeracion_departamento_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionDepartamentoSRCId ;;
  }

  dimension: geografia__rango_numeracion_provincia_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionProvinciaSRCId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
