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
    description: "Fecha de activación de la Orden de CRM asociada al Movimiento de Portabilidad"
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

  dimension_group: porta_mov_fecha_hora_estado_solic_abdsrc {
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
    sql: ${TABLE}.PortaMovFechaHoraEstadoSolicABDSRC ;;
    datatype: timestamp
    group_label: "Fecha Estado Solicitud ABD"
    label: "Estado Solicitud ABD"
    description: "Fecha Estado de Solicitud informada por el ABD"

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
    group_label: "Fecha Estado"
    label: "Estado"
    description: "Fecha de Estado del Movimiento"
  }

  dimension_group: porta_mov_fecha_hora_ventana_cambio_src {
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
    sql: ${TABLE}.PortaMovFechaHoraVentanaCambioSRC ;;
    datatype: timestamp
    group_label: "Fecha Ventana Cambio"
    label: "Ventana Cambio"
    description: "Fecha considerada como la de Portacion Efectiva"
  }


  ## Strings

  dimension: caso__caso_estado_nombre {
    type: string
    sql: ${TABLE}.Caso.CasoEstadoNombre ;;
    group_label: "Caso"
    group_item_label: "Caso Estado Nombre"
  }

  dimension: caso__caso_grupo_trabajo_nombre {
    type: string
    sql: ${TABLE}.Caso.CasoGrupoTrabajoNombre ;;
    group_label: "Caso"
    group_item_label: "Caso Grupo Trabajo Nombre"
  }

  dimension: caso__caso_llamada_padre_srcid {
    type: string
    sql: ${TABLE}.Caso.CasoLlamadaPadreSRCId ;;
    group_label: "Caso"
    group_item_label: "Caso Llamada Padre Srcid"
  }

  dimension: caso__caso_llamada_srcid {
    type: string
    sql: ${TABLE}.Caso.CasoLlamadaSRCId ;;
    group_label: "Caso"
    group_item_label: "Caso Llamada Srcid"
  }

  dimension: caso__caso_mercado_donante_portacion_srcid {
    type: string
    sql: ${TABLE}.Caso.CasoMercadoDonantePortacionSRCId ;;
    group_label: "Caso"
    group_item_label: "Caso Mercado Donante Portacion Srcid"
  }

  dimension: caso__caso_numero {
    type: string
    sql: ${TABLE}.Caso.CasoNumero ;;
    group_label: "Caso"
    group_item_label: "Caso Numero"
  }

  dimension: caso__caso_operadora_receptora_srcid {
    type: string
    sql: ${TABLE}.Caso.CasoOperadoraReceptoraSRCId ;;
    group_label: "Caso"
    group_item_label: "Caso Operadora Receptora Srcid"
  }

  dimension: caso__caso_srcid {
    type: string
    sql: ${TABLE}.Caso.CasoSRCId ;;
    group_label: "Caso"
    group_item_label: "Caso Srcid"
  }

  dimension: caso__caso_tipo_nombre {
    type: string
    sql: ${TABLE}.Caso.CasoTipoNombre ;;
    group_label: "Caso"
    group_item_label: "Caso Tipo Nombre"
  }

  dimension: caso__caso_usuario_creacion_srcid {
    type: string
    sql: ${TABLE}.Caso.CasoUsuarioCreacionSRCId ;;
    group_label: "Caso"
    group_item_label: "Caso Usuario Creacion Srcid"
  }

  dimension: caso__caso_usuario_legajo {
    type: string
    sql: ${TABLE}.Caso.CasoUsuarioLegajo ;;
    group_label: "Caso"
    group_item_label: "Caso Usuario Legajo"
  }

  dimension: caso__caso_usuario_nombre_completo {
    type: string
    sql: ${TABLE}.Caso.CasoUsuarioNombreCompleto ;;
    group_label: "Caso"
    group_item_label: "Caso Usuario Nombre Completo"
  }

  dimension: caso__punto_venta_canal3 {
    type: string
    sql: ${TABLE}.Caso.PuntoVentaCanal3 ;;
    group_label: "Caso"
    group_item_label: "Punto Venta Canal3"
  }

  dimension: caso__punto_venta_canalidad2_nombre {
    type: string
    sql: ${TABLE}.Caso.PuntoVentaCanalidad2Nombre ;;
    group_label: "Caso"
    group_item_label: "Punto Venta Canalidad2 Nombre"
  }

  dimension: caso__punto_venta_nombre {
    type: string
    sql: ${TABLE}.Caso.PuntoVentaNombre ;;
    group_label: "Caso"
    group_item_label: "Punto Venta Nombre"
  }

  dimension: caso__punto_venta_srcid {
    type: string
    sql: ${TABLE}.Caso.PuntoVentaSRCId ;;
    group_label: "Caso"
    group_item_label: "Punto Venta Srcid"
  }

  dimension: caso__punto_venta_tipo_atencion {
    type: string
    sql: ${TABLE}.Caso.PuntoVentaTipoAtencion ;;
    group_label: "Caso"
    group_item_label: "Punto Venta Tipo Atencion"
  }

  dimension: caso__punto_venta_tipo_canal_nombre {
    type: string
    sql: ${TABLE}.Caso.PuntoVentaTipoCanalNombre ;;
    group_label: "Caso"
    group_item_label: "Punto Venta Tipo Canal Nombre"
  }

  dimension: caso__punto_venta_tipo_contacto_nombre {
    type: string
    sql: ${TABLE}.Caso.PuntoVentaTipoContactoNombre ;;
    group_label: "Caso"
    group_item_label: "Punto Venta Tipo Contacto Nombre"
  }

  dimension: caso__punto_venta_tipo_nombre {
    type: string
    sql: ${TABLE}.Caso.PuntoVentaTipoNombre ;;
    group_label: "Caso"
    group_item_label: "Punto Venta Tipo Nombre"
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

  dimension: cliente__cliente_segmento2_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento2Nombre ;;
    group_label: "Cliente"
    group_item_label: "Cliente Segmento2 Nombre"
  }

  dimension: cliente__cliente_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteTipoNombre ;;
    group_label: "Cliente"
    group_item_label: "Cliente Tipo Nombre"
  }

  dimension: cliente__cuenta_ciclo_facturacion {
    type: string
    sql: ${TABLE}.Cliente.CuentaCicloFacturacion ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Ciclo Facturacion"
  }

  dimension: cliente__cuenta_cliente_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaClienteSRCId ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Cliente Srcid"
  }

  dimension: cliente__cuenta_codigo {
    type: string
    sql: ${TABLE}.Cliente.CuentaCodigo ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Codigo"
  }

  dimension: cliente__cuenta_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaSRCId ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Srcid"
  }

  dimension: cliente__cuenta_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.CuentaTipoNombre ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Tipo Nombre"
  }

  dimension: cliente__persona_documento_numero {
    type: string
    sql: ${TABLE}.Cliente.PersonaDocumentoNumero ;;
    group_label: "Cliente"
    group_item_label: "Persona Documento Numero"
  }

  dimension: cliente__persona_srcid {
    type: string
    sql: ${TABLE}.Cliente.PersonaSRCId ;;
    group_label: "Cliente"
    group_item_label: "Persona Srcid"
  }

  dimension: cliente__persona_tipo_documento_srcid {
    type: string
    sql: ${TABLE}.Cliente.PersonaTipoDocumentoSRCId ;;
    group_label: "Cliente"
    group_item_label: "Persona Tipo Documento Srcid"
  }

  dimension: domicilio__domicilio_calle_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioCalleFact ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Calle Fact"
  }

  dimension: domicilio__domicilio_codigo_postal {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioCodigoPostal ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Codigo Postal"
  }

  dimension: domicilio__domicilio_depto_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioDeptoFact ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Depto Fact"
  }

  dimension: domicilio__domicilio_numero_fact {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioNumeroFact ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Numero Fact"
  }

  dimension: domicilio__domicilio_piso_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPisoFact ;;
    group_label: "Domicilio"
    group_item_label: "Domicilio Piso Fact"
  }

  dimension: domicilio__localidad_nombre_fact {
    type: string
    sql: ${TABLE}.Domicilio.LocalidadNombreFact ;;
    group_label: "Domicilio"
    group_item_label: "Localidad Nombre Fact"
  }

  dimension: domicilio__localidad_provincia_nombre_fact {
    type: string
    sql: ${TABLE}.Domicilio.LocalidadProvinciaNombreFact ;;
    group_label: "Domicilio"
    group_item_label: "Localidad Provincia Nombre Fact"
  }

  dimension: domicilio__localidad_region_nombre_fact {
    type: string
    sql: ${TABLE}.Domicilio.LocalidadRegionNombreFact ;;
    group_label: "Domicilio"
    group_item_label: "Localidad Region Nombre Fact"
  }



  dimension: geografia__rango_numeracion_departamento_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionDepartamentoNombre ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Departamento Nombre"
  }

  dimension: geografia__rango_numeracion_localidad_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionLocalidadNombre ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Localidad Nombre"
  }

  dimension: geografia__rango_numeracion_prefijo_interurbano {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionPrefijoInterurbano ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Prefijo Interurbano"
  }

  dimension: geografia__rango_numeracion_prefijos {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionPrefijos ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Prefijos"
  }

  dimension: geografia__rango_numeracion_provincia_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionProvinciaNombre ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Provincia Nombre"
  }

  dimension: orden_portabilidad__orden_cuenta_facturacion_srcid {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.OrdenCuentaFacturacionSRCId ;;
    group_label: "Orden Portabilidad"
    group_item_label: "Orden Cuenta Facturacion Srcid"
  }

  dimension: orden_portabilidad__orden_estado_nombre {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.OrdenEstadoNombre ;;
    group_label: "Orden Portabilidad"
    group_item_label: "Orden Estado Nombre"
  }



  dimension: orden_portabilidad__orden_item_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.OrdenItemAccionNombre ;;
    group_label: "Orden Portabilidad"
    group_item_label: "Orden Item Accion Nombre"
  }

  dimension: orden_portabilidad__orden_item_srcid {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.OrdenItemSRCId ;;
    group_label: "Orden Portabilidad"
    group_item_label: "Orden Item Srcid"
  }

  dimension: orden_portabilidad__orden_item_sub_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.OrdenItemSubAccionNombre ;;
    group_label: "Orden Portabilidad"
    group_item_label: "Orden Item Sub Accion Nombre"
  }

  dimension: orden_portabilidad__orden_numero {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.OrdenNumero ;;
    group_label: "Orden Portabilidad"
    group_item_label: "Orden Numero"
  }

  dimension: orden_portabilidad__orden_precio_total {
    type: number
    sql: ${TABLE}.OrdenPortabilidad.OrdenPrecioTotal ;;
    group_label: "Orden Portabilidad"
    group_item_label: "Orden Precio Total"
  }

  dimension: orden_portabilidad__orden_srcid {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.OrdenSRCId ;;
    group_label: "Orden Portabilidad"
    group_item_label: "Orden Srcid"
  }

  dimension: orden_portabilidad__orden_tipo_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.OrdenTipoGestionNombre ;;
    group_label: "Orden Portabilidad"
    group_item_label: "Orden Tipo Gestion Nombre"
  }

  dimension: orden_portabilidad__orden_tipo_sub_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.OrdenTipoSubGestionNombre ;;
    group_label: "Orden Portabilidad"
    group_item_label: "Orden Tipo Sub Gestion Nombre"
  }

  dimension: orden_portabilidad__producto_codigo {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.ProductoCodigo ;;
    group_label: "Orden Portabilidad"
    group_item_label: "Producto Codigo"
  }

  dimension: orden_portabilidad__producto_nombre {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.ProductoNombre ;;
    group_label: "Orden Portabilidad"
    group_item_label: "Producto Nombre"
  }

  dimension: orden_portabilidad__producto_srcid {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.ProductoSRCId ;;
    group_label: "Orden Portabilidad"
    group_item_label: "Producto Srcid"
  }

  dimension: orden_portabilidad__producto_tipo_nombre {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.ProductoTipoNombre ;;
    group_label: "Orden Portabilidad"
    group_item_label: "Producto Tipo Nombre"
  }

  dimension: orden_portabilidad__promocion_codigo {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.PromocionCodigo ;;
    group_label: "Orden Portabilidad"
    group_item_label: "Promocion Codigo"
  }

  dimension: orden_portabilidad__promocion_descripcion {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.PromocionDescripcion ;;
    group_label: "Orden Portabilidad"
    group_item_label: "Promocion Descripcion"
  }

  dimension: orden_portabilidad__promocion_nombre {
    type: string
    sql: ${TABLE}.OrdenPortabilidad.PromocionNombre ;;
    group_label: "Orden Portabilidad"
    group_item_label: "Promocion Nombre"
  }

  dimension: porta_mov_estado_actual_nombre {
    type: string
    sql: ${TABLE}.PortaMovEstadoActualNombre ;;
  }

  dimension: porta_mov_modalidad_srcid {
    type: string
    sql: ${TABLE}.PortaMovModalidadSRCId ;;
  }

  dimension: porta_mov_numero_linea {
    type: string
    sql: ${TABLE}.PortaMovNumeroLinea ;;
  }

  dimension: porta_mov_operadora_donante_nombre {
    type: string
    sql: ${TABLE}.PortaMovOperadoraDonanteNombre ;;
  }

  dimension: porta_mov_operadora_donante_srcid {
    type: string
    sql: ${TABLE}.PortaMovOperadoraDonanteSRCId ;;
  }

  dimension: porta_mov_operadora_propietaria_nombre {
    type: string
    sql: ${TABLE}.PortaMovOperadoraPropietariaNombre ;;
  }

  dimension: porta_mov_operadora_propietaria_srcid {
    type: string
    sql: ${TABLE}.PortaMovOperadoraPropietariaSRCId ;;
  }

  dimension: porta_mov_operadora_receptora_nombre {
    type: string
    sql: ${TABLE}.PortaMovOperadoraReceptoraNombre ;;
  }

  dimension: porta_mov_operadora_receptora_srcid {
    type: string
    sql: ${TABLE}.PortaMovOperadoraReceptoraSRCId ;;
  }

  dimension: porta_mov_tipo_portacion_nombre {
    type: string
    sql: ${TABLE}.PortaMovTipoPortacionNombre ;;
  }


  ## Hidden
  dimension: porta_mov_tipo_portacion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PortaMovTipoPortacionSK ;;
  }

  dimension: porta_mov_tipo_srcid {
    type: string
    sql: ${TABLE}.PortaMovTipoSRCId ;;
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

  dimension: producto_adquirido__producto_adquirido_referente_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoReferenteSRCId ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Referente Srcid"
  }

  dimension: producto_adquirido__producto_adquirido_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSRCId ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Srcid"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
