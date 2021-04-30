view: dm_producto {
  view_label: "Producto"
  sql_table_name: `ue4_dev_edw_pub_vw_gcp.DM_Producto`
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

  dimension: origen_intid {
    type: string
    hidden: yes
    sql: ${TABLE}.OrigenINTId ;;
  }

  dimension: origen_srcid {
    type: number
    hidden: yes
    value_format_name: id
    sql: ${TABLE}.OrigenSRCId ;;
  }

  dimension: producto_atributo {
    hidden: yes
    sql: ${TABLE}.ProductoAtributo ;;
  }

  dimension: producto_descripcion {
    type: string
    sql: ${TABLE}.ProductoDescripcion ;;
  }

  dimension: producto_es_activo {
    type: string
    sql: ${TABLE}.ProductoEsActivo ;;
  }

  dimension: producto_es_assetizable {
    type: string
    sql: ${TABLE}.ProductoEsAssetizable ;;
  }

  dimension: producto_es_configurable {
    type: string
    sql: ${TABLE}.ProductoEsConfigurable ;;
  }

  dimension: producto_es_orderable {
    type: string
    sql: ${TABLE}.ProductoEsOrderable ;;
  }

  dimension: producto_es_tangible {
    type: string
    sql: ${TABLE}.ProductoEsTangible ;;
  }

  dimension: producto_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoEstadoNombre ;;
  }

  dimension: producto_estado_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.ProductoEstadoSK ;;
  }

  dimension: producto_estado_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.ProductoEstadoSRCId ;;
  }

  dimension: producto_familia_nombre {
    type: string
    sql: ${TABLE}.ProductoFamiliaNombre ;;
  }

  dimension: producto_familia_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.ProductoFamiliaSK ;;
  }

  dimension: producto_familia_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.ProductoFamiliaSRCId ;;
  }

  dimension_group: producto_fecha_creacion {
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
    sql: ${TABLE}.ProductoFechaCreacion ;;
  }

  dimension_group: producto_fecha_creacion_src {
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
    sql: ${TABLE}.ProductoFechaCreacionSRC ;;
  }

  dimension_group: producto_fecha_modificacion {
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
    sql: ${TABLE}.ProductoFechaModificacion ;;
  }

  dimension_group: producto_fecha_modificacion_src {
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
    sql: ${TABLE}.ProductoFechaModificacionSRC ;;
  }

  dimension: producto_intcodigo {
    type: string
    hidden: yes
    sql: ${TABLE}.ProductoINTCodigo ;;
  }

  dimension: producto_intid {
    type: string
    hidden: yes
    sql: ${TABLE}.ProductoINTId ;;
  }

  dimension: producto_mercado_nombre {
    type: string
    sql: ${TABLE}.ProductoMercadoNombre ;;
  }

  dimension: producto_mercado_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.ProductoMercadoSK ;;
  }

  dimension: producto_mercado_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.ProductoMercadoSRCId ;;
  }

  dimension: producto_nmu {
    type: string
    sql: ${TABLE}.ProductoNmu ;;
  }

  dimension: producto_nombre {
    type: string
    sql: ${TABLE}.ProductoNombre ;;
  }

  dimension: producto_sistema_origen_descripcion {
    type: string
    sql: ${TABLE}.ProductoSistemaOrigenDescripcion ;;
  }

  dimension: producto_srccodigo {
    type: string
    sql: ${TABLE}.ProductoSRCCodigo ;;
  }

  dimension: producto_srcid {
    type: string
    hidden: yes
    primary_key:yes
    sql: ${TABLE}.ProductoSRCId ;;
  }

  dimension: producto_sub_tipo_nombre {
    type: string
    sql: ${TABLE}.ProductoSubTipoNombre ;;
  }

  dimension: producto_sub_tipo_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.ProductoSubTipoSK ;;
  }

  dimension: producto_sub_tipo_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.ProductoSubTipoSRCId ;;
  }

  dimension: producto_tipo_nombre {
    type: string
    label: "Tipo Producto"
    sql: ${TABLE}.ProductoTipoNombre ;;
  }

  dimension: producto_tipo_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.ProductoTipoSK ;;
  }

  dimension: producto_tipo_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.ProductoTipoSRCId ;;
  }

  dimension: producto_usuario_creacion_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.ProductoUsuarioCreacionSRCId ;;
  }

  dimension: producto_usuario_modificacion_srcid {
    type: string
    hidden: yes
    sql: ${TABLE}.ProductoUsuarioModificacionSRCId ;;
  }

  dimension_group: producto_vigencia_desde {
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
    sql: ${TABLE}.ProductoVigenciaDesde ;;
  }

  dimension_group: producto_vigencia_desde_src {
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
    sql: ${TABLE}.ProductoVigenciaDesdeSRC ;;
  }

  dimension_group: producto_vigencia_hasta {
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
    sql: ${TABLE}.ProductoVigenciaHasta ;;
  }

  dimension_group: producto_vigencia_hasta_src {
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
    sql: ${TABLE}.ProductoVigenciaHastaSRC ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: dm_producto__producto_atributo {
  dimension: producto_atributo_nombre {
    type: string
    sql: ${TABLE}.ProductoAtributoNombre ;;
  }

  dimension: producto_atributo_valor {
    type: string
    sql: ${TABLE}.ProductoAtributoValor ;;
  }

  dimension_group: producto_fecha_modificacion {
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
    sql: ${TABLE}.ProductoFechaModificacion ;;
  }

  dimension_group: producto_fecha_modificacion_src {
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
    sql: ${TABLE}.ProductoFechaModificacionSRC ;;
  }
}
