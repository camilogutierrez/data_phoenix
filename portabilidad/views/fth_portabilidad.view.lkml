view: fth_portabilidad {
  label: "Cross Market"
  sql_table_name: @{gcp_ambiente}.FTH_Portabilidad`  ;;
  suggestions: no


## Dimensions

  ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.PortaMovPK ;;
  }

  ## Dates

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

  dimension: fecha_entidad {
    type: date
    datatype: date
    sql: ${TABLE}.FechaEntidad ;;
    label: "Fecha Entidad"
    description: "Indica la Fecha de Foto seleccionada"
  }

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
    sql: ${TABLE}.OrdenPortabilidad.OrdenFechaActivacionSRC ;;
    datatype: timestamp
    view_label: "Orden"
    group_label: "Fecha Activacion"
    label: "Orden Activacion"
    description: "Fecha de activacion de la Orden de CRM asociada al Movimiento de Portabilidad"
  }

  dimension_group: orden_fecha_creacion_src {
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
    sql: ${TABLE}.OrdenPortabilidad.OrdenFechaCreacionSRC ;;
    datatype: timestamp
    view_label: "Orden"
    group_label: "Fecha Creacion"
    label: "Orden Creacion"
    description: "Fecha de creacion de la Orden de CRM asociada al Movimiento de Portabilidad"
  }

  dimension_group: orden_fecha_fin_src {
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
    sql: ${TABLE}.OrdenPortabilidad.OrdenFechaFinSRC ;;
    datatype: date
    view_label: "Orden"
    group_label: "Fecha Fin"
    label: "Orden Fin"
    description: "Fecha de fin de la Orden de CRM asociada al Movimiento de Portabilidad"
  }

  dimension_group: orden_fecha_inicio_src {
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
    sql: ${TABLE}.OrdenPortabilidad.OrdenFechaInicioSRC ;;
    datatype: date
    view_label: "Orden"
    group_label: "Fecha Inicio"
    label: "Orden Inicio"
    description: "Fecha de inicio de la Orden de CRM asociada al Movimiento de Portabilidad"
  }

  dimension_group: porta_mov_fecha_hora_estado_src {
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
    sql: ${TABLE}.PortaMovFechaHoraEstadoSRC ;;
    datatype: timestamp
    group_label: "Fecha Movimiento"
    label: "Movimiento"
    description: "Fecha de Estado del Movimiento"
  }

  ## Strings

  dimension: caso_estado_nombre {
    type: string
    sql: ${TABLE}.Caso.CasoEstadoNombre ;;
    view_label: "Caso"
    label: "Estado"
    description: "Estado del Caso asociado a la Orden vinculada al movimiento de Portabilidad."
  }

  dimension: caso_grupo_trabajo_nombre {
    type: string
    sql: ${TABLE}.Caso.CasoGrupoTrabajoNombre ;;
    view_label: "Caso"
    label: "Grupo Trabajo Nombre"
    description: "Punto de Venta asociado al Caso de CRM relacionado al Movimiento de Portacion."
  }

  dimension: caso_llamada_padre_srcid {
    type: string
    sql: ${TABLE}.Caso.CasoLlamadaPadreSRCId ;;
    view_label: "Caso"
    label: "Llamada Padre"
    description: "Valor alfanumerico que permite trazar la integracion del CRM con el la llamadas registrada en PIC (plataforma de Conctacto)"
  }

  dimension: caso_llamada_srcid {
    type: string
    sql: ${TABLE}.Caso.CasoLlamadaSRCId ;;
    view_label: "Caso"
    label: "Llamada Padre ID"
    description: "Valor numerico que permite identificar juto con el la llamada id el place / sitio del agente qu registro el caso en el CRM."
  }

  dimension: caso_numero {
    type: string
    sql: ${TABLE}.Caso.CasoNumero ;;
    view_label: "Caso"
    label: "Numero"
    description: "Numero de Caso que genera la accion de portabilidad "
  }

  dimension: caso_tipo_nombre {
    type: string
    sql: ${TABLE}.Caso.CasoTipoNombre ;;
    view_label: "Caso"
    label: "Tipo"
    description: "Tipo del Caso asociado a la Orden vinculada al movimiento de Portabilidad."
  }

  dimension: caso_usuario_legajo {
    type: string
    sql: ${TABLE}.Caso.CasoUsuarioLegajo ;;
    view_label: "Caso"
    label: "Usuario Legajo"
    description: "Usuario Creador del Caso de portacion en el CRM"
  }

  dimension: caso_usuario_nombre_completo {
    type: string
    sql: ${TABLE}.Caso.CasoUsuarioNombreCompleto ;;
    view_label: "Caso"
    label: "Usuario Nombre"
    description: "Nombre del Usuario Creador del Caso de portacion en el CRM"
  }

  dimension: punto_venta_canal3 {
    type: string
    sql: ${TABLE}.Caso.PuntoVentaCanal3 ;;
    view_label: "Caso"
    group_label: "Punto Venta"
    label: "Canal3"
    description: "Tercer nivel de Canalidad asociado al Caso de CRM relacionado al Movimiento de Portacion."
  }

  dimension: punto_venta_canalidad2_nombre {
    type: string
    sql: ${TABLE}.Caso.PuntoVentaCanalidad2Nombre ;;
    view_label: "Caso"
    group_label: "Punto Venta"
    label: "Canalidad2"
    description: "Segundo nivel de Canalidad asociado al Caso de CRM relacionado al Movimiento de Portacion."
  }

  dimension: punto_venta_nombre {
    type: string
    sql: ${TABLE}.Caso.PuntoVentaNombre ;;
    view_label: "Caso"
    group_label: "Punto Venta"
    label: "Nombre"
    description: "Punto de Venta asociado al Caso de CRM relacionado al Movimiento de Portacion."
  }

  dimension: punto_venta_tipo_atencion {
    type: string
    sql: ${TABLE}.Caso.PuntoVentaTipoAtencion ;;
    view_label: "Caso"
    group_label: "Punto Venta"
    label: "Tipo Atencion"
    description: "Tipo de Atencion del Punto de Venta asociado al Caso de CRM relacionado al Movimiento de Portacion."
  }

  dimension: punto_venta_tipo_canal_nombre {
    type: string
    sql: ${TABLE}.Caso.PuntoVentaTipoCanalNombre ;;
    view_label: "Caso"
    group_label: "Punto Venta"
    label: "Canal Nombre"
    description: "Canal del Punto de Venta asociado al Caso de CRM relacionado al Movimiento de Portacion."
  }

  dimension: punto_venta_tipo_contacto_nombre {
    type: string
    sql: ${TABLE}.Caso.PuntoVentaTipoContactoNombre ;;
    view_label: "Caso"
    group_label: "Punto Venta"
    label: "Contacto Nombre"
    description: "Indica el tipo de Contacto IN, OUT, o IN-OUT asociado al Caso de CRM relacionado al Movimiento de Portacion."
  }

  dimension: punto_venta_tipo_nombre {
    type: string
    sql: ${TABLE}.Caso.PuntoVentaTipoNombre ;;
    view_label: "Caso"
    group_label: "Punto Venta"
    label: "Tipo Nombre"
    description: "Tipo de Punto de Venta asociado al Caso de CRM relacionado al Movimiento de Portacion."
  }

  dimension: cliente_razon_social {
    type: string
    sql: ${TABLE}.Cliente.ClienteRazonSocial ;;
    view_label: "Cliente"
    label: "Razon Social"
    description: "Razon social del Cliente asociado a la Orden de Portabilidad del CRM."
  }

  dimension: cliente_segmento1_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento1Nombre ;;
    view_label: "Cliente"
    label: "Segmento1"
    description: "Segmento Nivel 1 del Cliente asociado a la Orden de Portabilidad del CRM."
  }

  dimension: cliente_segmento2_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento2Nombre ;;
    view_label: "Cliente"
    label: "Segmento2"
    description: "Segmento Nivel 2 del Cliente asociado a la Orden de Portabilidad del CRM."
  }

  dimension: cliente__cliente_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteTipoNombre ;;
    view_label: "Cliente"
    label: "Tipo Nombre"
    description: "Tipo de Cliente asociado a la Orden de Portabilidad del CRM."
  }

  dimension: cuenta_ciclo_facturacion {
    type: string
    sql: ${TABLE}.Cliente.CuentaCicloFacturacion ;;
    view_label: "Cliente"
    label: "Ciclo Facturacion"
    description: "Ciclo de la Cuenta asociado al Cliente de la Orden de Portabilidad del CRM."
  }

  dimension: cuenta_codigo {
    type: string
    sql: ${TABLE}.Cliente.CuentaCodigo ;;
    view_label: "Cliente"
    label: "Cuenta Codigo"
    description: "Codigo de Integracion con HW de la Cuenta asociada a la Orden de Portabilidad del CRM."
  }

  dimension: cuenta_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.CuentaTipoNombre ;;
    view_label: "Cliente"
    label: "Cuenta Tipo Nombre"
    description: "Tipo de Cuenta asociado a la Orden de Portabilidad del CRM."
  }

  dimension: persona_documento_numero {
    type: string
    sql: ${TABLE}.Cliente.PersonaDocumentoNumero ;;
    view_label: "Cliente"
    label: "Documento Numero"
    description: "N° de Documento del Cliente de la Orden asociado al movimiento de Portabilidad."
  }

  dimension: persona_tipo_documento_srcid {
    type: string
    sql: ${TABLE}.Cliente.PersonaTipoDocumentoSRCId ;;
    view_label: "Cliente"
    label: "Documento Tipo"
    description: "Tipo de Documento del Cliente de la Orden asociado al movimiento de Portabilidad."
  }

  dimension: domicilio_calle_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioCalleFact ;;
    view_label: "Domicilio"
    label: "Calle"
    description: "Calle de Facturacion correspondiente a la Cuenta del Cliente relacionado al Movimiento de Portacion."
  }

  dimension: domicilio_codigo_postal {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioCodigoPostal ;;
    view_label: "Domicilio"
    label: "Codigo Postal"
    description: "CP del Domicilio de Facturacion correspondiente a la Cuenta del Cliente relacionado al Movimiento de Portacion."
  }

  dimension: domicilio_depto_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioDeptoFact ;;
    view_label: "Domicilio"
    label: "Unidad Habitacional"
    description: "Depto del Domicilio de Facturacion correspondiente a la Cuenta del Cliente relacionado al Movimiento de Portacion."
  }

  dimension: domicilio_piso_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPisoFact ;;
    view_label: "Domicilio"
    label: "Piso"
    description: "Piso del Domicilio de Facturacion correspondiente a la Cuenta del Cliente relacionado al Movimiento de Portacion."
  }

  dimension: localidad_nombre_fact {
    type: string
    sql: ${TABLE}.Domicilio.LocalidadNombreFact ;;
    view_label: "Domicilio"
    label: "Localidad"
    description: "Localidad del Domicilio de Facturacion correspondiente a la Cuenta del Cliente relacionado al Movimiento de Portacion."
  }

  dimension: localidad_provincia_nombre_fact {
    map_layer_name: arg_provinces
    type: string
    sql: ${TABLE}.Domicilio.LocalidadProvinciaNombreFact ;;
    view_label: "Domicilio"
    label: "Provincia"
    description: "Provincia del Domicilio de Facturacion correspondiente a la Cuenta del Cliente relacionado al Movimiento de Portacion."
  }

  dimension: localidad_region_nombre_fact {
    type: string
    sql: ${TABLE}.Domicilio.LocalidadRegionNombreFact ;;
    view_label: "Domicilio"
    label: "Region"
    description: "Region del Domicilio de Facturacion correspondiente a la Cuenta del Cliente relacionado al Movimiento de Portacion."
  }

  dimension: rango_numeracion_departamento_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionDepartamentoNombre ;;
    view_label: "Geografia"
    label: "Rango Numeracion Departamento"
    description: "Grupo de Localidad del Prefijo de la Linea"
  }

  dimension: rango_numeracion_localidad_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionLocalidadNombre ;;
    view_label: "Geografia"
    label: "Rango Numeracion Localidad"
    description: "Localidad del Prefijo de la Linea"
  }

  dimension: rango_numeracion_prefijo_interurbano {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionPrefijoInterurbano ;;
    suggest_dimension: lk_rango_numeracion_prefijo_interurbano.rango_numeracion_prefijo_interurbano
    view_label: "Geografia"
    label: "Rango Numeracion Prefijo Interurbano"
    description: "Prefijo Interurbano de la Linea"
  }

  dimension: rango_numeracion_prefijos {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionPrefijos ;;
    suggest_dimension: lk_rango_numeracion_prefijos.rango_numeracion_prefijos
    view_label: "Geografia"
    label: "Rango Numeracion Prefijos"
    description: "Prefijo Urbano+Interurbano de la Linea."
  }

  dimension: rango_numeracion_provincia_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionProvinciaNombre ;;
    view_label: "Geografia"
    label: "Rango Numeracion Provincia"
    description: "Provincia del Prefijo de la Linea"
  }

  dimension: orden_estado_nombre {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.OrdenEstadoNombre ;;
    view_label: "Orden"
    label: "Estado"
  }

  dimension: orden_item_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.OrdenItemAccionNombre ;;
    view_label: "Orden"
    label: "Accion"
    description: "Accion de Provision de la Orden de CRM asociada al Movimiento de Portabilidad"
  }

  dimension: orden_item_sub_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.OrdenItemSubAccionNombre ;;
    view_label: "Orden"
    label: "Sub Accion"
    description: "SubAccion de Provision de la Orden de CRM asociada al Movimiento de Portabilidad."
  }

  dimension: orden_numero {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.OrdenNumero ;;
    view_label: "Orden"
    label: "Orden Numero"
    description: "Numero de Orden de CRM asociado al Movimiento de Portabilidad"
  }

  dimension: orden_tipo_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.OrdenTipoGestionNombre ;;
    view_label: "Orden"
    label: "Tipo Gestion"
    description: "Tipo de Gestion de la Orden de CRM asociada al Movimiento de Portabilidad"
  }

  dimension: orden_tipo_sub_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.OrdenTipoSubGestionNombre ;;
    view_label: "Orden"
    label: "Tipo Sub Gestion"
    description: "Tipo de SubGestion de la Orden de CRM asociada al Movimiento de Portabilidad"
  }

  dimension: producto_codigo {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.ProductoCodigo ;;
    view_label: "Orden"
    label: "Codigo"
    description: "Codigo del Producto informado en la Orden de CRM asociada al movimiento de Portabilidad"
  }

  dimension: producto_nombre {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.ProductoNombre ;;
    view_label: "Orden"
    label: "Producto Nombre"
    description: "Nombre de Producto informado en la Orden de CRM asociada al movimiento de Portabilidad"
  }

  dimension: producto_tipo_nombre {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.ProductoTipoNombre ;;
    view_label: "Orden"
    label: "Producto Tipo Nombre"
    description: "Tipo de Producto informado en la Orden de CRM asociada al movimiento de Portabilidad"
  }

  dimension: promocion_codigo {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.PromocionCodigo ;;
    view_label: "Orden"
    label: "Promocion Codigo"
    description: "Codigo de la Promo informado en la Orden de CRM asociada al movimiento de Portabilidad"
  }

  dimension: promocion_descripcion {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.PromocionDescripcion ;;
    view_label: "Orden"
    label: "Promocion Descripcion"
    description: "Descripcion detallada de la Promo informado en la Orden de CRM asociada al movimiento de Portabilidad"
  }

  dimension: promocion_nombre {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.PromocionNombre ;;
    view_label: "Orden"
    label: "Promocion Nombre"
    description: "Nombre de la Promo informado en la Orden de CRM asociada al movimiento de Portabilidad"
  }

  dimension: porta_mov_estado_actual_nombre {
    type: string
    sql: ${TABLE}.PortaMovEstadoActualNombre ;;
    label: "Estado Actual"
    description: "Estado Actual informado por el ABD"
  }

  dimension: porta_mov_modalidad_srcid {
    type: string
    sql: ${TABLE}.PortaMovModalidadSRCId ;;
    label: "Mercado Donante"
    description: "Tipo de Producto origen de la portacion (Pos/Pre) informado por el ABD"
  }

  dimension: porta_mov_numero_linea {
    type: string
    sql: ${TABLE}.PortaMovNumeroLinea ;;
    label: "Numero Linea"
    description: "Corresponde al Numero de Linea del movimiento de portacion, informado por el Ente regulador."
  }

  dimension: porta_mov_operadora_donante_nombre {
    type: string
    sql: ${TABLE}.PortaMovOperadoraDonanteNombre ;;
    label: "Operadora Donante"
    description: "Empresa Donante -> Claro, Movistar, Imowi. Etc"
  }

  dimension: porta_mov_operadora_donante_srcid {
    type: string
    sql: ${TABLE}.PortaMovOperadoraDonanteSRCId ;;
    label: "Operadora Donante ID"
    description: "Numero asociado la la empresa Donante Ejemplo: 555-> Claro"
  }

  dimension: porta_mov_operadora_propietaria_nombre {
    type: string
    sql: ${TABLE}.PortaMovOperadoraPropietariaNombre ;;
    label: "Operadora Propietaria"
    description: "Empresa origen de la linea"
  }

  dimension: porta_mov_operadora_propietaria_srcid {
    type: string
    sql: ${TABLE}.PortaMovOperadoraPropietariaSRCId ;;
    label: "Operadora Propietaria ID"
    description: "Numero asociado a la empresa origen de de linea"
  }

  dimension: porta_mov_operadora_receptora_nombre {
    type: string
    sql: ${TABLE}.PortaMovOperadoraReceptoraNombre ;;
    label: "Operadora Receptora"
    description: "Empresa que recibe el cliente. -> Personal, Claro, Movistar, Nextel, etc."
  }

  dimension: porta_mov_operadora_receptora_srcid {
    type: string
    sql: ${TABLE}.PortaMovOperadoraReceptoraSRCId ;;
    label: "Operadora Receptora ID"
    description: "Numero asociado a la empresa que recibe el cliente. Ejemplo: 777 -> Personal"
  }

  dimension: porta_mov_tipo_portacion_nombre {
    type: string
    sql: ${TABLE}.PortaMovTipoPortacionNombre ;;
    suggest_dimension: lk_porta_mov_tipo_portacion.porta_mov_tipo_portacion_nombre
    label: "Tipo Movimiento"
    description: "Campo calculado que indica el tipo de Movimiento de Portacion que corresponde de acuerdo al informado por el ABD:
                  Port-Over (Portacion de numeros entre dos operadoras que no son TP)
                  TIPO_MOVIMIENTO_PORTABILIDAD: ALAJ COD_ESTADO_ACTUAL: ALAJ COD_SUBESTADO_ACTUAL: NULL o vacio
                  Port-In (Portacion de Numeros a TP)
                  TIPO_MOVIMIENTO_PORTABILIDAD: ALIM COD_ESTADO_ACTUAL: APOR COD_SUBESTADO_ACTUAL: NULL  o vacio
                  Port-Out (Portacion de Numeros desde TP)
                  TIPO_MOVIMIENTO_PORTABILIDAD: ALEX COD_ESTADO_ACTUAL: APOR COD_SUBESTADO_ACTUAL: NULL  o vacio"

  }

  dimension: producto_adquirido_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoNombre ;;
    label: "Producto Adquirido Estado"
    description: "Estado en Parque del Producto Adquirido asociado a la Orden vinculada al Movimiento de Portabilidad."
  }

  ## Numbers
  dimension: domicilio_numero_fact {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioNumeroFact ;;
    view_label: "Domicilio"
    label: "Numero"
    description: "Altura de Calle de Facturacion correspondiente a la Cuenta del Cliente relacionado al Movimiento de Portacion."
  }


  ## Hidden

  dimension: porta_mov_tipo_portacion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PortaMovTipoPortacionSK ;;
  }

  dimension: orden_precio_total {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenPortabilidad.OrdenPrecioTotal ;;
  }

  dimension: porta_mov_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.PortaMovTipoSRCId ;;
  }

## Measures

  ## Count
  measure: count_portabilidad {
    type: count
    label: "Cantidad Portabilidad"
  }

  ## Total
  measure: total_orden_precio_total {
    type: sum
    sql: ${orden_precio_total} ;;
    view_label: "Orden"
    label: "Precio Total"
    description: "Precio Total informado en la Orden de PortIn"
  }
}
