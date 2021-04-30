view: dm_producto_adquirido {
  view_label: "Producto Adquirido"
  sql_table_name: `ue4_dev_edw_pub_vw_gcp.DM_ProductoAdquirido`
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

  dimension: cuenta_facturacion_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.CuentaFacturacionSRCId ;;
  }

  dimension: cuenta_propiedad_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.CuentaPropiedadSRCId ;;
  }

  dimension_group: fecha_entidad {
    type: time
    label: "Fecha Foto"
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

  dimension: geografia {
    hidden: yes
    sql: ${TABLE}.Geografia ;;
  }

  dimension: origen_srcid {
    type: number
    hidden: yes
    value_format_name: id
    sql: ${TABLE}.OrigenSRCId ;;
  }

  dimension: producto_accesorio_id {
    type: string
    hidden: yes
    sql: ${TABLE}.ProductoAccesorioId ;;
  }

  dimension: producto_adquirido_calgrupo_producto {
    type: number
    sql: ${TABLE}.ProductoAdquiridoCALGrupoProducto ;;
  }

  dimension: producto_adquirido_cant_unidades {
    type: number
    sql: ${TABLE}.ProductoAdquiridoCantUnidades ;;
  }

  dimension: producto_adquirido_codigo_padre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoCodigoPadre ;;
  }

  dimension: producto_adquirido_codigo_raiz {
    type: string
    sql: ${TABLE}.ProductoAdquiridoCodigoRaiz ;;
  }

  dimension: producto_adquirido_codigo_suscripcion {
    type: string
    sql: ${TABLE}.ProductoAdquiridoCodigoSuscripcion ;;
  }

  dimension: producto_adquirido_es_destruccion_total {
    type: number
    sql: ${TABLE}.ProductoAdquiridoEsDestruccionTotal ;;
  }

  dimension: producto_adquirido_es_leasing {
    type: number
    sql: ${TABLE}.ProductoAdquiridoEsLeasing ;;
  }

  dimension: producto_adquirido_es_migrado {
    type: string
    label: "Producto Migrado"
    sql: ${TABLE}.ProductoAdquiridoEsMigrado ;;
  }

  dimension: producto_adquirido_es_port_out {
    type: number
    sql: ${TABLE}.ProductoAdquiridoEsPortOut ;;
  }

  dimension: producto_adquirido_estado_leasing_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoLeasingNombre ;;
  }

  dimension: producto_adquirido_estado_leasing_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.ProductoAdquiridoEstadoLeasingSK ;;
  }

  dimension: producto_adquirido_estado_leasing_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.ProductoAdquiridoEstadoLeasingSRCId ;;
  }

  dimension: producto_adquirido_estado_nombre {
    type: string
    label: "Estado"
    sql: ${TABLE}.ProductoAdquiridoEstadoNombre ;;
  }

  dimension: producto_adquirido_estado_provisionamiento_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoProvisionamientoNombre ;;
  }

  dimension: producto_adquirido_estado_provisionamiento_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.ProductoAdquiridoEstadoProvisionamientoSK ;;
  }

  dimension: producto_adquirido_estado_provisionamiento_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.ProductoAdquiridoEstadoProvisionamientoSRCId ;;
  }

  dimension: producto_adquirido_estado_red_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoRedNombre ;;
  }

  dimension: producto_adquirido_estado_red_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.ProductoAdquiridoEstadoRedSK ;;
  }

  dimension: producto_adquirido_estado_red_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.ProductoAdquiridoEstadoRedSRCId ;;
  }

  dimension: producto_adquirido_estado_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.ProductoAdquiridoEstadoSK ;;
  }

  dimension: producto_adquirido_estado_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.ProductoAdquiridoEstadoSRCId ;;
  }

  dimension: producto_adquirido_familia_producto {
    type: string
    label: "Familia de Producto"
    sql: ${TABLE}.ProductoAdquiridoFamiliaProducto ;;
  }

  dimension_group: producto_adquirido_fecha_activacion {
    type: time
    label: "Fecha de Activacion"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ProductoAdquiridoFechaActivacion ;;
  }

  dimension_group: producto_adquirido_fecha_baja {
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
    sql: ${TABLE}.ProductoAdquiridoFechaBaja ;;
  }

  dimension_group: producto_adquirido_fecha_compra {
    type: time
    label: "Fecha de Compra"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ProductoAdquiridoFechaCompra ;;
  }

  dimension_group: producto_adquirido_fecha_creacion {
    type: time
    label: "Fecha de Creacion"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ProductoAdquiridoFechaCreacion ;;
  }

  dimension_group: producto_adquirido_fecha_fin_leasing {
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
    sql: ${TABLE}.ProductoAdquiridoFechaFinLeasing ;;
  }

  dimension_group: producto_adquirido_fecha_inicio_leasing {
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
    sql: ${TABLE}.ProductoAdquiridoFechaInicioLeasing ;;
  }

  dimension_group: producto_adquirido_fecha_modificacion {
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
    sql: ${TABLE}.ProductoAdquiridoFechaModificacion ;;
  }

  dimension_group: producto_adquirido_fecha_modificacion_src {
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
    sql: ${TABLE}.ProductoAdquiridoFechaModificacionSRC ;;
  }

  dimension: producto_adquirido_garantia_invalida {
    type: string
    sql: ${TABLE}.ProductoAdquiridoGarantiaInvalida ;;
  }

  dimension: producto_adquirido_iccid {
    type: string
    label: "ICCID"
    sql: ${TABLE}.ProductoAdquiridoICCID ;;
  }

  dimension: producto_adquirido_id_referente {
    type: string
    sql: ${TABLE}.ProductoAdquiridoIdReferente ;;
  }

  dimension: producto_adquirido_imei {
    type: string
    sql: ${TABLE}.ProductoAdquiridoIMEI ;;
  }

  dimension: producto_adquirido_leasing_id {
    type: string
    hidden: yes
    sql: ${TABLE}.ProductoAdquiridoLeasingId ;;
  }

  dimension: producto_adquirido_localidad_srcid {
    type: string
     label: "Id Producto"
    sql: ${TABLE}.ProductoAdquiridoLocalidadSRCId ;;
  }

  dimension: producto_adquirido_marca_prod_competencia {
    type: number

    sql: ${TABLE}.ProductoAdquiridoMarcaProdCompetencia ;;
  }

  dimension: producto_adquirido_nivel_jerarquia {
    type: string
    sql: ${TABLE}.ProductoAdquiridoNivelJerarquia ;;
  }

  dimension: producto_adquirido_nombre {
    type: string
    label: "Nombre de Producto"
    sql: ${TABLE}.ProductoAdquiridoNombre ;;
  }

  dimension: producto_adquirido_numero_linea {
    type: string
    label: "Numero de Linea"
    sql: ${TABLE}.ProductoAdquiridoNumeroLinea ;;
  }

  dimension: producto_adquirido_numero_serie {
    type: string
    sql: ${TABLE}.ProductoAdquiridoNumeroSerie ;;
  }

  dimension: producto_adquirido_orden_item_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.ProductoAdquiridoOrdenItemSRCId ;;
  }

  dimension: producto_adquirido_origen_intid {
    type: number
    value_format_name: id
    hidden: yes
    sql: ${TABLE}.ProductoAdquiridoOrigenINTId ;;
  }

  dimension: producto_adquirido_precio {
    type: number
    sql: ${TABLE}.ProductoAdquiridoPrecio ;;
  }

  dimension: producto_adquirido_producto_srccodigo {
    type: string
    sql: ${TABLE}.ProductoAdquiridoProductoSRCCodigo ;;
  }

  dimension: producto_adquirido_srccodigo {
    type: string
    label: "Codigo de Producto"
    sql: ${TABLE}.ProductoAdquiridoSRCCodigo ;;
  }

  dimension: producto_adquirido_srcid {
    type: string
    primary_key: yes
    sql: ${TABLE}.ProductoAdquiridoSRCId ;;
  }

  dimension: producto_adquirido_sub_estado_nombre {
    type: string
   label: "Sub Estado"
    sql: ${TABLE}.ProductoAdquiridoSubEstadoNombre ;;
  }

  dimension: producto_adquirido_sub_estado_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.ProductoAdquiridoSubEstadoSK ;;
  }

  dimension: producto_adquirido_sub_estado_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.ProductoAdquiridoSubEstadoSRCId ;;
  }

  dimension: producto_adquirido_usuario_creacion_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.ProductoAdquiridoUsuarioCreacionSRCId ;;
  }

  dimension: producto_adquirido_usuario_modificacion_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.ProductoAdquiridoUsuarioModificacionSRCId ;;
  }

  dimension: producto_familia_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.ProductoFamiliaSK ;;
  }

  dimension: producto_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.ProductoSRCId ;;
  }

  dimension: productoadquirido_srcid_anterior {
    type: string
    sql: ${TABLE}.productoadquiridoSRCIdAnterior ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: dm_producto_adquirido__geografia {
  view_label: "Producto Adquirido Geografia"
  dimension: localidad_es_municipio {
    type: yesno
    sql: ${TABLE}.LocalidadEsMunicipio ;;
  }

  dimension: localidad_nombre {
    type: string
    label: "Localidad Producto Adquirido"
    sql: ${TABLE}.LocalidadNombre ;;
  }

  dimension: localidad_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.LocalidadSK ;;
  }

  dimension: localidad_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.LocalidadSRCId ;;
  }

  dimension: provincia_nombre {
    type: string
    sql: ${TABLE}.ProvinciaNombre ;;
  }

  dimension: provincia_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.ProvinciaSK ;;
  }

  dimension: provincia_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.ProvinciaSRCId ;;
  }
}
