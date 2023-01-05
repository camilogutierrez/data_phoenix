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
    sql: ${TABLE}._auditoria._fechaCreacion ;;
    view_label: "Auditoria"
    label: "Fecha Creacion"
  }

  dimension: _fecha_ultima_actualizacion {
    type: date_time
    datatype: timestamp
    sql: ${TABLE}._auditoria._fechaUltimaActualizacion ;;
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
    group_label: "Fecha Modificacion Padre Porta"
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
    suggest_dimension: lk_rango_numeracion_departamento.rango_numeracion_departamento_nombre
    view_label: "Geografia"
    label: "Rango Numeracion Departamento"
    description: "Grupo de Localidad del Prefijo de la Línea que es cliente."
  }

  dimension: geografia_rango_numeracion_localidad_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionLocalidadNombre ;;
    suggest_dimension: lk_rango_numeracion_localidad.rango_numeracion_localidad_nombre
    view_label: "Geografia"
    label: "Rango Numeracion Localidad"
    description: "Localidad del Prefijo de la Línea que es cliente."
  }

  dimension: geografia_rango_numeracion_provincia_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionProvinciaNombre ;;
    suggest_dimension: lk_rango_numeracion_provincia.rango_numeracion_provincia_nombre
    view_label: "Geografia"
    label: "Rango Numeracion Provincia"
    description: "Provincia del Prefijo de la Línea que es cliente."
  }

  dimension: geografia_rango_numeracion_prefijo_interurbano {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionPrefijoInterurbano ;;
    suggest_dimension: lk_rango_numeracion_prefijo_interurbano.rango_numeracion_prefijo_interurbano
    view_label: "Geografia"
    label: "Rango Numeracion Prefijo Interurbano"
    description: "Prefijo Interurbano de la Línea que es cliente."
  }

  dimension: geografia_rango_numeracion_prefijos {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionPrefijos ;;
    suggest_dimension: lk_rango_numeracion_prefijos.rango_numeracion_prefijos
    view_label: "Geografia"
    label: "Rango Numeracion Prefijos"
    description: "Prefijo Urbano + Interurbano de la Línea que es cliente."
  }

  dimension: hijo_porta_caso_estado_nombre {
    type: string
    sql: ${TABLE}.HijoPorta.CasoEstadoNombre ;;
    view_label: "Caso"
    group_label: "Hijo Porta"
    label: "Estado"
    description: "Estado del Caso Hijo asociado a la Portabilidad."
  }

  dimension: hijo_porta_caso_mercado_donante_portacion {
    type: string
    sql: ${TABLE}.HijoPorta.CasoMercadoDonantePortacion ;;
    view_label: "Caso"
    group_label: "Hijo Porta"
    label: "Mercado Donante Portacion"
  }

  dimension: hijo_porta_caso_msisdn_lista_portout {
    type: string
    sql: ${TABLE}.HijoPorta.CasoMsisdnListaPortout ;;
    view_label: "Caso"
    group_label: "Hijo Porta"
    label: "Numero Linea"
    description: "Corresponde al Número de Línea del movimiento de portación, informado por el Ente regulador."
  }

  dimension: hijo_porta_caso_numero {
    type: string
    sql: ${TABLE}.HijoPorta.CasoNumero ;;
    view_label: "Caso"
    group_label: "Hijo Porta"
    label: "Numero"
    description: "Número de Caso Hijo que genera la Portabilidad."
  }

  dimension: hijo_porta_caso_tipo_nombre {
    type: string
    sql: ${TABLE}.HijoPorta.CasoTipoNombre ;;
    view_label: "Caso"
    group_label: "Hijo Porta"
    label: "Tipo"
    description: "Tipo de Caso Hijo que genera la Portabilidad."
  }

  dimension: hijo_porta_orden_estado_nombre {
    type: string
    sql: ${TABLE}.HijoPorta.OrdenEstadoNombre ;;
    view_label: "Orden"
    group_label: "Hijo Porta"
    label: "Estado"
    description: "Estado de la Orden generada en la Portabilidad."
  }

  dimension: hijo_porta_orden_item_accion_nombre {
    type: string
    sql: ${TABLE}.HijoPorta.OrdenItemAccionNombre ;;
    view_label: "Orden"
    group_label: "Hijo Porta"
    label: "Accion"
    description: "Acción de provisión de la Orden de CRM asociada a la Portabilidad."
  }

  dimension: hijo_porta_orden_numero {
    type: string
    sql: ${TABLE}.HijoPorta.OrdenNumero ;;
    view_label: "Orden"
    group_label: "Hijo Porta"
    label: "Numero"
    description: "Número de Orden de CRM asociada a la Portabilidad."
  }

  dimension: hijo_porta_orden_srcid {
    type: string
    sql: ${TABLE}.HijoPorta.OrdenSRCId ;;
    view_label: "Orden"
    group_label: "Hijo Porta"
    label: "Orden ID"
    description: "ID que permite identificar a la Orden de CRM asociada a la Portabilidad."
  }

  dimension: hijo_porta_orden_tipo_gestion_nombre {
    type: string
    sql: ${TABLE}.HijoPorta.OrdenTipoGestionNombre ;;
    view_label: "Orden"
    group_label: "Hijo Porta"
    label: "Tipo Gestion"
    description: "Tipo de gestión de la Orden de CRM asociada a la Portabilidad."
  }

  dimension: hijo_porta_orden_tipo_sub_gestion_nombre {
    type: string
    sql: ${TABLE}.HijoPorta.OrdenTipoSubGestionNombre ;;
    view_label: "Orden"
    group_label: "Hijo Porta"
    label: "Tipo Sub Gestion"
    description: "Tipo de subgestión de la Orden de CRM asociada a la Portabilidad."
  }

  dimension: padre_porta_caso_estado_nombre {
    type: string
    sql: ${TABLE}.PadrePorta.CasoEstadoNombre ;;
    view_label: "Caso"
    group_label: "Padre Porta"
    label: "Estado"
    description: "Estado del Caso Padre asociado a la Portabilidad."
  }

  dimension: padre_porta_caso_estado_proceso_portacion {
    type: string
    sql: ${TABLE}.PadrePorta.CasoEstadoProcesoPortacion ;;
    view_label: "Caso"
    group_label: "Padre Porta"
    label: "Proceso Portacion Estado"
    description: "Estado del Proceso de Portacion del Caso Padre asociado a la Portabilidad."
  }

  dimension: padre_porta_caso_mercado_donante_portacion {
    type: string
    sql: ${TABLE}.PadrePorta.CasoMercadoDonantePortacion ;;
    view_label: "Caso"
    group_label: "Padre Porta"
    label: "Mercado Donante Portacion"
  }

  dimension: padre_porta_caso_mercado_donante_portacion_srcid {
    type: string
    sql: ${TABLE}.PadrePorta.CasoMercadoDonantePortacionSRCId ;;
    view_label: "Caso"
    group_label: "Padre Porta"
    label: "Mercado Donante Portacion ID"
  }

  dimension: padre_porta_caso_motivo_nombre {
    type: string
    sql: ${TABLE}.PadrePorta.CasoMotivoNombre ;;
    view_label: "Caso"
    group_label: "Padre Porta"
    label: "Motivo"
    description: "Motivo del Caso Padre asociado a la Portabilidad."
  }

  dimension: padre_porta_caso_numero {
    type: string
    sql: ${TABLE}.PadrePorta.CasoNumero ;;
    view_label: "Caso"
    group_label: "Padre Porta"
    label: "Numero"
    description: "Número de Caso Padre que genera la Portabilidad."
  }

  dimension: padre_porta_caso_tipo_nombre {
    type: string
    sql: ${TABLE}.PadrePorta.CasoTipoNombre ;;
    view_label: "Caso"
    group_label: "Padre Porta"
    label: "Tipo"
    description: "Tipo de Caso Padre que genera la Portabilidad."
  }

  dimension: padre_porta_grupo_trabajo_nombre {
    type: string
    sql: ${TABLE}.PadrePorta.GrupoTrabajoNombre ;;
    view_label: "Caso"
    group_label: "Padre Porta"
    label: "Grupo Trabajo Nombre"
    description: "Grupo de Trabajo asociado al Caso Padre de Portabilidad."
  }

  dimension: padre_porta_orden_srcid {
    type: string
    sql: ${TABLE}.PadrePorta.OrdenSRCId ;;
    view_label: "Orden"
    group_label: "Padre Porta"
    label: "Orden ID"
    description: "ID que permite identificar a la Orden de CRM asociada a la Venta Portin."
  }

  dimension: padre_porta_usuario_legajo {
    type: string
    sql: ${TABLE}.PadrePorta.UsuarioLegajo ;;
    view_label: "Caso"
    group_label: "Padre Porta"
    label: "Usuario Legajo"
    description: "Usuario creador del Caso Padre asociado a la Portabilidad."
  }

  dimension: padre_porta_usuario_nombre_completo {
    type: string
    sql: ${TABLE}.PadrePorta.UsuarioNombreCompleto ;;
    view_label: "Caso"
    group_label: "Padre Porta"
    label: "Usuario Nombre"
    description: "Nombre del usuario creador del Caso Padre asociado a la Portabilidad."
  }

  dimension: producto_adquirido_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoNombre ;;
    group_label: "Producto Adquirido"
    label: "Nombre"
    description: "Nombre en Parque del Producto Adquirido  asociado a la Orden de la Venta Portin."
  }

  dimension: producto_adquirido_producto_codigo {
    type: string
    sql: ${TABLE}.ProductoAdquiridoProductoCodigo ;;
    group_label: "Producto Adquirido"
    label: "Codigo"
    description: "Código de producto en Parque del ProductoAdquirido asociado a la Orden de la Venta Portin."

  }

  dimension: producto_tipo_nombre {
    type: string
    sql: ${TABLE}.ProductoTipoNombre ;;
    view_label: "Orden"
    label: "Producto Tipo Nombre"
    description: "Tipo de Producto informado en la Orden de CRM asociada a la Venta Portin."
  }

  dimension: promocion_promocion_codigo {
    type: string
    sql: ${TABLE}.Promocion.PromocionCodigo ;;
    group_label: "Promocion"
    label: "Codigo"
    description: "Código de la promoción informado en la Orden de CRM asociada a la Venta Portin."
  }

  dimension: promocion__promocion_nombre {
    type: string
    sql: ${TABLE}.Promocion.PromocionNombre ;;
    group_label: "Promocion"
    label: "Nombre"
    description: "Nombre de la promoción informada en la Orden de CRM asociada a la Venta Portin."
  }

  dimension: venta_master_caso_estado_nombre {
    type: string
    sql: ${TABLE}.VentaMaster.CasoEstadoNombre ;;
    view_label: "Caso"
    group_label: "Venta Master"
    label: "Estado"
    description: "Estado del Caso asociado a la Venta Master."
  }

  dimension: venta_master_caso_llamada_padre_srcid {
    type: string
    sql: ${TABLE}.VentaMaster.CasoLlamadaPadreSRCId ;;
      view_label: "Caso"
      group_label: "Venta Master"
      label: "Llamada Padre"
      description: "Valor alfanúmerico que permite trazar la integración del CRM con la llamada registrada en PIC."
  }

  dimension: venta_master_caso_numero {
    type: string
    sql: ${TABLE}.VentaMaster.CasoNumero ;;
    view_label: "Caso"
    group_label: "Venta Master"
    label: "Numero"
    description: "Número de Caso que genera la Venta Master."
  }

  dimension: venta_master_caso_tipo_nombre {
    type: string
    sql: ${TABLE}.VentaMaster.CasoTipoNombre ;;
    view_label: "Caso"
    group_label: "Venta Master"
    label: "Tipo"
    description: "Tipo de Caso que genera la Venta Master."
  }

  dimension: venta_master_grupo_trabajo_nombre {
    type: string
    sql: ${TABLE}.VentaMaster.GrupoTrabajoNombre ;;
    view_label: "Caso"
    group_label: "Venta Master"
    label: "Grupo Trabajo Nombre"
    description: "Grupo de Trabajo asociado al Caso de Venta Master de CRM."
  }

  dimension: venta_master_punto_venta_nombre {
    type: string
    sql: ${TABLE}.VentaMaster.PuntoVentaNombre ;;
    group_label: "Punto de Venta"
    label: "Nombre"
    description: "Punto de Venta asociado al Caso de Venta Master de CRM."
  }

  dimension: venta_master_punto_venta_tipo_canal_nombre {
    type: string
    sql: ${TABLE}.VentaMaster.PuntoVentaTipoCanalNombre ;;
    group_label: "Punto de Venta"
    label: "Canal Nombre"
    description: "Canal del Punto de Venta asociado al Caso de Venta Master de CRM."
  }

  dimension: venta_master_usuario_legajo {
    type: string
    sql: ${TABLE}.VentaMaster.UsuarioLegajo ;;
    view_label: "Caso"
    group_label: "Venta Master"
    label: "Usuario Legajo"
    description: "Usuario creador del Caso de Venta Master en el CRM."
  }

  dimension: venta_master_usuario_nombre_completo {
    type: string
    sql: ${TABLE}.VentaMaster.UsuarioNombreCompleto ;;
    view_label: "Caso"
    group_label: "Venta Master"
    label: "Usuario Nombre"
    description: "Nombre del usuario creador del Caso de Venta Master en el CRM."
  }

  dimension: venta_portin_caso_llamada_padre_srcid {
    type: string
    sql: ${TABLE}.VentaPortin.CasoLlamadaPadreSRCId ;;
    view_label: "Caso"
    group_label: "Venta Portin"
    label: "Llamada Padre"
    description: "Valor alfanúmerico que permite trazar la integración del CRM con la llamada registrada en PIC."
  }

  dimension: venta_portin_caso_numero {
    type: string
    sql: ${TABLE}.VentaPortin.CasoNumero ;;
    view_label: "Caso"
    group_label: "Venta Portin"
    label: "Numero"
    description: "Número de Caso que genera la Venta Portin."
  }

  dimension: venta_portin_caso_tipo_nombre {
    type: string
    sql: ${TABLE}.VentaPortin.CasoTipoNombre ;;
    view_label: "Caso"
    group_label: "Venta Portin"
    label: "Tipo Nombre"
    description: "Tipo de Caso que genera la Venta Portin."
  }

  dimension: venta_portin_orden_grupo_trabajo_nombre {
    type: string
    sql: ${TABLE}.VentaPortin.OrdenGrupoTrabajoNombre ;;
    view_label: "Orden"
    label: "Grupo Trabajo Nombre"
    description: "Grupo de Trabajo de la Orden generada en la Venta Portin."
  }

  dimension: venta_portin_orden_item_accion_nombre {
    type: string
    sql: ${TABLE}.VentaPortin.OrdenItemAccionNombre ;;
    view_label: "Orden"
    label: "Accion"
    description: "Acción de provisión de la Orden de CRM asociada a la Venta Portin."
  }

  dimension: venta_portin_orden_llamada_padre_srcid {
    type: string
    sql: ${TABLE}.VentaPortin.OrdenLlamadaPadreSRCId ;;
    view_label: "Orden"
    label: "Llamada Padre"
    description: "Valor alfanúmerico que permite trazar la integración del CRM con la llamada registrada en PIC."
  }

  dimension: venta_portin_orden_numero {
    type: string
    sql: ${TABLE}.VentaPortin.OrdenNumero ;;
    view_label: "Orden"
    label: "Numero"
    description: "Número de Orden de CRM asociada a la Venta Portin."
  }

  dimension: venta_portin_orden_tipo_gestion_nombre {
    type: string
    sql: ${TABLE}.VentaPortin.OrdenTipoGestionNombre ;;
    view_label: "Orden"
    label: "Tipo Gestion"
    description: "Tipo de gestión de la Orden de CRM asociada a la Venta Portin."
  }

  dimension: venta_portin_orden_tipo_sub_gestion_nombre {
    type: string
    sql: ${TABLE}.VentaPortin.OrdenTipoSubGestionNombre ;;
    view_label: "Orden"
    label: "Tipo Sub Gestion"
    description: "Tipo de subgestión de la Orden de CRM asociada a la Venta Portin."
  }


## Numbers
  dimension: padre_porta_caso_cantidad_lineas_portacion {
    type: number
    sql: ${TABLE}.PadrePorta.CasoCantidadLineasPortacion ;;
    view_label: "Caso"
    label: "Cantidad Lineas Portacion"
    description: "Indica la cantidad de líneas a portar."
  }

  dimension: promocion_orden_precio_valor_ajuste {
    type: number
    sql: ${TABLE}.Promocion.OrdenPrecioValorAjuste ;;
    group_label: "Promocion"
    label: "Valor Ajuste"
    description: "Valor Ajuste de la promoción informada en la Orden de CRM asociada a la Venta Portin."
  }

  ## Hidden
  dimension: geografia_rango_numeracion_localidad_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionLocalidadSRCId ;;
  }

  dimension: geografia_rango_numeracion_departamento_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionDepartamentoSRCId ;;
  }

  dimension: geografia_rango_numeracion_provincia_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionProvinciaSRCId ;;
  }

  dimension: portin_nomina_periodo_creacion_usuario_fk {
    hidden: yes
    type: string
    sql: ${TABLE}.PortinNominaPeriodoCreacionUsuarioFK ;;
  }

  dimension: portin_cantidad_neta {
    hidden: yes
    type: number
    sql: ${TABLE}.Metricas.PortinCantidadNeta ;;
  }

  dimension: portin_cantidad_porta_unica {
    hidden: yes
    type: number
    sql: ${TABLE}.Metricas.PortinCantidadPortaUnica ;;
  }

  dimension: portin_cantidad_pre_neta {
    hidden: yes
    type: number
    sql: ${TABLE}.Metricas.PortinCantidadPreNeta ;;
  }

## Measures

  measure: count_portin {
    type: count
    label: "Cantidad Portin"
  }

  measure: total_portin_cantidad_neta {
    type: sum
    sql: ${portin_cantidad_neta} ;;
    label: "Cantidad Neta"
    description: "Cantidad de ordenes Portin Activar cuyo Estado=ACTIVADA"
  }

  measure: total_portin_cantidad_porta_unica {
    type: sum
    sql: ${portin_cantidad_porta_unica} ;;
    label: "Cantidad Unica"
    description: "Cantidad de casos hijos sin duplicados de Numero Linea"
  }

  measure: total_cantidad_pre_neta {
    type: sum
    sql: ${portin_cantidad_pre_neta} ;;
    label: "Cantidad Pre Neta"
    description: "Cantidad de casos padres cuyo Proceso Portacion Estado=AACE "
  }
}
