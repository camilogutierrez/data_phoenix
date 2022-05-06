view: dm_orden_precio_promocion {
  sql_table_name: @{gcp_ambiente}.DM_OrdenPrecioPromocion` ;;
  suggestions: no
  label: "Orden Item Precio Promocion"

## Dimensions

  ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.OrdenItemFK ;;
  }

  ## Dates

  dimension: fecha_entidad {
    type: date
    sql: ${TABLE}.FechaEntidad ;;
    datatype: date
    label: "Fecha Entidad"
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
    label: "Creacion"
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
    label: "Desde"
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
    label: "Estimada"
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
    label: "Modificacion Sistema"
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
    label: "Modificacion"
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
    label: "Promocion Creacion"
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
    label: "Promocion Efectiva Fin"
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
    label: "Promocion Efectiva Inicio"
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
    label: "Promocion Modificacion"
  }

  ## Strings

  dimension: lista_precio_srcid {
    type: string
    sql: ${TABLE}.ListaPrecioSRCId ;;
    label: "Lista Precio Id"
  }

  dimension: orden_item_srcid {
    type: string
    sql: ${TABLE}.OrdenItemSRCId ;;
    label: "Orden Item Id"
  }

  dimension: orden_precio_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenPrecioAccionNombre ;;
    label: "Accion Nombre"
  }

  dimension: orden_precio_aplicado_a {
    type: string
    sql: ${TABLE}.OrdenPrecioAplicadoA ;;
    label: "Aplicado"
  }

  dimension: orden_precio_elemento_srcid {
    type: string
    sql: ${TABLE}.OrdenPrecioElementoSRCId ;;
    label: "Elemento Id"
  }

  dimension: orden_precio_estado_nombre {
    type: string
    sql: ${TABLE}.OrdenPrecioEstadoNombre ;;
    label: "Estado Nombre"
  }

  dimension: orden_precio_fuente_nombre {
    type: string
    sql: ${TABLE}.OrdenPrecioFuenteNombre ;;
    label: "Fuente Nombre"
  }

  dimension: orden_precio_srcid {
    type: string
    sql: ${TABLE}.OrdenPrecioSRCId ;;
    label: "Id"
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
    label: "Promocion Id"
  }

  ## Number

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

  ## Flags

  dimension: promocion_marca_activa {
    type: yesno
    sql: ${TABLE}.PromocionMarcaActiva ;;
    label: "Promocion Marca Activa"
  }

  ## Hidden

  dimension: orden_precio_accion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenPrecioAccionSK ;;
  }

  dimension: orden_precio_accion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenPrecioAccionSRCId ;;
  }

  dimension: orden_precio_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenPrecioEstadoSK ;;
  }

  dimension: orden_precio_estado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenPrecioEstadoSRCId ;;
  }

  dimension: orden_precio_fuente_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenPrecioFuenteSK ;;
  }

  dimension: orden_precio_fuente_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenPrecioFuenteSRCId ;;
  }

## Measures

}
