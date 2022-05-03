view: dm_orden_precio_promocion {
  sql_table_name: @{gcp_ambiente}.DM_OrdenPrecioPromocion` ;;
  suggestions: no
  label: "Precio Promocion"


## Dimensions

  ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: CONCAT(CAST(${fecha_entidad_date} AS STRING FORMAT 'YYYYMMDD'), '-', ${orden_item_srcid}  ;;
  }

  ## Dates
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
    datatype: date
    sql: ${TABLE}.FechaEntidad ;;
    label: "Fecha Entidad"
  }

  dimension_group: orden_precio_fecha_creacion {
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
    sql: ${TABLE}.OrdenPrecioFechaCreacion ;;
    label: "Fecha Creacion"
  }

  dimension_group: orden_precio_fecha_creacion_src {
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
    sql: ${TABLE}.OrdenPrecioFechaCreacionSRC ;;
    label: "Fecha Creacion SRC"
  }

  dimension_group: orden_precio_fecha_desde {
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
    sql: ${TABLE}.OrdenPrecioFechaDesde ;;
    label: "Fecha Desde"
  }

  dimension_group: orden_precio_fecha_desde_src {
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
    sql: ${TABLE}.OrdenPrecioFechaDesdeSRC ;;
    label: "Fecha Desde SRC"
  }

  dimension_group: orden_precio_fecha_estimada {
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
    sql: ${TABLE}.OrdenPrecioFechaEstimada ;;
    label: "Fecha Estimada"
  }

  dimension_group: orden_precio_fecha_estimada_src {
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
    sql: ${TABLE}.OrdenPrecioFechaEstimadaSRC ;;
    label: "Fecha Estimada SRC"
  }

  dimension_group: orden_precio_fecha_modificacion {
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
    sql: ${TABLE}.OrdenPrecioFechaModificacion ;;
    label: "Fecha Modificacion"
  }

  dimension_group: orden_precio_fecha_modificacion_sistema {
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
    sql: ${TABLE}.OrdenPrecioFechaModificacionSistema ;;
    label: "Fecha Modificacion Sistema"
  }

  dimension_group: orden_precio_fecha_modificacion_sistema_src {
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
    sql: ${TABLE}.OrdenPrecioFechaModificacionSistemaSRC ;;
    label: "Fecha Modificacion Sistema SRC"
  }

  dimension_group: orden_precio_fecha_modificacion_src {
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
    sql: ${TABLE}.OrdenPrecioFechaModificacionSRC ;;
    label: "Fecha Modificacion SRC"
  }

  dimension_group: promocion_fecha_creacion {
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
    sql: ${TABLE}.PromocionFechaCreacion ;;
    label: "Promocion Fecha Creacion"
  }

  dimension_group: promocion_fecha_creacion_src {
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
    sql: ${TABLE}.PromocionFechaCreacionSRC ;;
    label: "Promocion Fecha Creacion SRC"
  }

  dimension_group: promocion_fecha_efectiva_fin {
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
    sql: ${TABLE}.PromocionFechaEfectivaFin ;;
    label: "Promocion Fecha Efectiva Fin"
  }

  dimension_group: promocion_fecha_efectiva_fin_src {
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
    sql: ${TABLE}.PromocionFechaEfectivaFinSRC ;;
    label: "Promocion Fecha Efectiva Fin SRC"
  }

  dimension_group: promocion_fecha_efectiva_inicio {
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
    sql: ${TABLE}.PromocionFechaEfectivaInicio ;;
    label: "Promocion Fecha Efectiva Inicio"
  }

  dimension_group: promocion_fecha_efectiva_inicio_src {
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
    sql: ${TABLE}.PromocionFechaEfectivaInicioSRC ;;
    label: "Promocion Fecha Efectiva Inicio SRC"
  }

  dimension_group: promocion_fecha_modificacion {
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
    sql: ${TABLE}.PromocionFechaModificacion ;;
    label: "Promocion Fecha Modificacion"
  }

  dimension_group: promocion_fecha_modificacion_src {
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
    sql: ${TABLE}.PromocionFechaModificacionSRC ;;
    label: "Promocion Fecha Modificación SRC"
  }

  ## Strings
  dimension: lista_precio_srcid {
    type: string
    sql: ${TABLE}.ListaPrecioSRCId ;;
    label: "Lista Precio SRCID"
  }

  dimension: orden_item_srcid {
    type: string
    sql: ${TABLE}.OrdenItemSRCId ;;
    label: "Orden Item SRCID"
  }

  dimension: orden_precio_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenPrecioAccionNombre ;;
    label: "Accion Nombre"
  }

  dimension: orden_precio_accion_srcid {
    type: string
    sql: ${TABLE}.OrdenPrecioAccionSRCId ;;
    label: "Accion SRCID"
  }

  dimension: orden_precio_aplicado_a {
    type: string
    sql: ${TABLE}.OrdenPrecioAplicadoA ;;
    label: "Aplicado"
  }

  dimension: orden_precio_elemento_srcid {
    type: string
    sql: ${TABLE}.OrdenPrecioElementoSRCId ;;
    label: "Elemento SRCID"
  }

  dimension: orden_precio_estado_nombre {
    type: string
    sql: ${TABLE}.OrdenPrecioEstadoNombre ;;
    label: "Estado Nombre"
  }


  dimension: orden_precio_estado_srcid {
    type: string
    sql: ${TABLE}.OrdenPrecioEstadoSRCId ;;
    label: "Estado SRCID"
  }

  dimension: orden_precio_fuente_nombre {
    type: string
    sql: ${TABLE}.OrdenPrecioFuenteNombre ;;
    label: "Fuente Nombre"
  }

  dimension: orden_precio_fuente_srcid {
    type: string
    sql: ${TABLE}.OrdenPrecioFuenteSRCId ;;
    label: "Fuente SRCID"
  }

  dimension: orden_precio_srcid {
    type: string
    sql: ${TABLE}.OrdenPrecioSRCId ;;
    label: "SRCID"
  }

  dimension: orden_precio_sub_accion {
    type: string
    sql: ${TABLE}.OrdenPrecioSubAccion ;;
    label: "Sub Accion"
  }

  dimension: promocion_codigo {
    type: string
    sql: ${TABLE}.PromocionCodigo ;;
    label: "Promocion Codigo"
  }

  dimension: promocion_descripcion {
    type: string
    sql: ${TABLE}.PromocionDescripcion ;;
    label: "Promocion Descripcion"
  }

  dimension: promocion_nombre {
    type: string
    sql: ${TABLE}.PromocionNombre ;;
    label: "Promocion Nombre"
  }

  dimension: promocion_srcid {
    type: string
    sql: ${TABLE}.PromocionSRCId ;;
    label: "Promocion SRCID"
  }

  ## Number
  dimension: orden_precio_accion_sk {
    type: number
    sql: ${TABLE}.OrdenPrecioAccionSK ;;
    label: "Accion SK"
  }

  dimension: orden_precio_estado_sk {
    type: number
    sql: ${TABLE}.OrdenPrecioEstadoSK ;;
    label: "Estado SK"
  }


  dimension: orden_precio_fuente_sk {
    type: number
    sql: ${TABLE}.OrdenPrecioFuenteSK ;;
    label: "Fuente SK"
  }

  dimension: orden_precio_monto {
    type: number
    sql: ${TABLE}.OrdenPrecioMonto ;;
    label: "Monto"
  }

  dimension: orden_precio_valor_ajuste {
    type: number
    sql: ${TABLE}.OrdenPrecioValorAjuste ;;
    label: "Valor Ajuste"
  }

  ## Yesno
  dimension: promocion_marca_activa {
    type: yesno
    sql: ${TABLE}.PromocionMarcaActiva ;;
    label: "Promocion Marca Activa"
  }

## Measures
}
