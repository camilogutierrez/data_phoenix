include: "/caso/views/fth_caso.view.lkml"
include: "/aleph/views/*.view.lkml"
include: "/global/views/dm_nomina.view.lkml"
include: "/caso/others/caso_datagroups.lkml"
include: "/caso/views/lk_cierres_caso.view.lkml"

explore: fth_caso {
  label: "Caso"
  group_label: "Caso"

  always_filter: {
    filters: [fth_caso.fecha_entidad: "today"]
  }

  persist_with: caso_default_dg

  join: fth_caso_caso_hito {
    view_label: "Hitos"
    sql: LEFT JOIN UNNEST(${fth_caso.caso_hito}) as fth_caso_caso_hito ;;
    relationship: one_to_many
  }

  join: fth_caso_comentarios {
    view_label: "Comentarios"
    sql: LEFT JOIN UNNEST(${fth_caso.comentarios}) as fth_caso_comentarios;;
    relationship: one_to_many
  }

  join: dm_nomina {
    view_label: "Nomina"
    relationship: many_to_one
    sql_on: ${fth_caso.nomina_usr_creacion_fk} = ${dm_nomina.pk} ;;
    type: left_outer
    #sql_where: ${dm_nomina.nomina_usuario_teco} != '' ;;
  }

  ## For Filter Suggestions

  join: lk_cierres_caso {
    view_label: "Cierres"
    relationship: many_to_one
    sql_on: ${fth_caso.fecha_entidad} = ${lk_cierres_caso.fecha_entidad} ;;
    type: inner
  }

  join: lk_caso_estado {
    sql_on: ${fth_caso.caso_estado_sk} = ${lk_caso_estado.caso_estado_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_caso_horas_negocio {
    sql_on: ${fth_caso.caso_horas_negocio_sk} = ${lk_caso_horas_negocio.caso_horas_negocio_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_caso_motivo_baja {
    sql_on: ${fth_caso.caso_motivo_baja_sk} = ${lk_caso_motivo_baja.caso_motivo_baja_sk} ;;
    relationship: many_to_one
    type: inner
  }

  join: lk_caso_motivo {
    sql_on: ${fth_caso.caso_motivo_sk} = ${lk_caso_motivo.caso_motivo_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_caso_canal_cierre {
    sql_on: ${fth_caso.caso_canal_cierre_sk} = ${lk_caso_canal_cierre.caso_canal_cierre_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_caso_tipo {
    sql_on: ${fth_caso.caso_tipo_sk} = ${lk_caso_tipo.caso_tipo_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_caso_tipo_item {
    sql_on: ${fth_caso.caso_tipo_item_sk} = ${lk_caso_tipo_item.caso_tipo_item_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_caso_subtipo_movimiento_portacion {
    sql_on: ${fth_caso.caso_subtipo_movimiento_portacion_sk} = ${lk_caso_subtipo_movimiento_portacion.caso_subtipo_movimiento_portacion_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_caso_sub_tipo {
    sql_on: ${fth_caso.caso_sub_tipo_sk} = ${lk_caso_sub_tipo.caso_sub_tipo_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_caso_sub_motivo_baja {
    sql_on: ${fth_caso.caso_sub_motivo_baja_sk} = ${lk_caso_sub_motivo_baja.caso_sub_motivo_baja_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_caso_prioridad {
    sql_on: ${fth_caso.caso_prioridad_sk} = ${lk_caso_prioridad.caso_prioridad_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_caso_resultado_retencion {
    sql_on: ${fth_caso.caso_resultado_retencion_sk} = ${lk_caso_resultado_retencion.caso_resultado_retencion_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_cliente_segmento1 {
    sql_on: ${fth_caso.cliente_segmento1_sk} = ${lk_cliente_segmento1.cliente_segmento1_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_cliente_segmento2 {
    sql_on: ${fth_caso.cliente_segmento2_sk} = ${lk_cliente_segmento2.cliente_segmento2_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_cuenta_tipo {
    sql_on: ${fth_caso.cuenta_tipo_sk} = ${lk_cuenta_tipo.cuenta_tipo_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_orden_estado_provisionamiento {
    sql_on: ${fth_caso.orden_estado_provisionamiento_sk} = ${lk_orden_estado_provisionamiento.orden_estado_provisionamiento_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_orden_estado {
    sql_on: ${fth_caso.orden_estado_sk} = ${lk_orden_estado.orden_estado_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_orden_estado_trackeo {
    sql_on: ${fth_caso.orden_estado_trackeo_sk} = ${lk_orden_estado_trackeo.orden_estado_trackeo_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_orden_metodo_entrega {
    sql_on: ${fth_caso.orden_metodo_entrega_sk} = ${lk_orden_metodo_entrega.orden_metodo_entrega_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_orden_servicio_entrega {
    sql_on: ${fth_caso.orden_servicio_entrega_sk} = ${lk_orden_servicio_entrega.orden_servicio_entrega_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_orden_canal_origen {
    sql_on: ${fth_caso.orden_canal_origen_sk} = ${lk_orden_canal_origen.orden_canal_origen_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_orden_estado_aprobacion {
    sql_on: ${fth_caso.orden_estado_aprobacion_sk} = ${lk_orden_estado_aprobacion.orden_estado_aprobacion_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_orden_tipo_sub_gestion {
    sql_on: ${fth_caso.orden_tipo_sub_gestion_sk} = ${lk_orden_tipo_sub_gestion.orden_tipo_sub_gestion_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_orden_tipo_gestion {
    sql_on: ${fth_caso.orden_tipo_gestion_sk} = ${lk_orden_tipo_gestion.orden_tipo_gestion_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_producto_adquirido_estado_provisionamiento {
    sql_on: ${fth_caso.producto_adquirido_estado_provisionamiento_sk} = ${lk_producto_adquirido_estado_provisionamiento.producto_adquirido_estado_provisionamiento_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_producto_adquirido_sub_estado {
    sql_on: ${fth_caso.producto_adquirido_sub_estado_sk} = ${lk_producto_adquirido_sub_estado.producto_adquirido_sub_estado_sk};;
    relationship: many_to_one
    type: inner
  }

  join: lk_producto_adquirido_estado {
    sql_on: ${fth_caso.producto_adquirido_estado_sk} = ${lk_producto_adquirido_estado.producto_adquirido_estado_sk};;
    relationship: many_to_one
    type: inner
  }
}

## Quick Starts

explore: +fth_caso {
  query: ev_anual_casos_creados_tipo {
    dimensions: [caso_fecha_creacion_src_month, caso_tipo_nombre]
    measures: [count_caso]
    pivots: [caso_tipo_nombre]
    filters: [
      fth_caso.caso_fecha_creacion_src_month: "12 months",
      fth_caso.caso_tipo_nombre: "-(no informado)",
      fth_caso.fecha_entidad: "yesterday"
    ]
    label: "Evolutivo Anual Casos Creados x Tipo."
  }
}

explore: +fth_caso {
  query: ev_anual_casos_cerrados_tipo {
    dimensions: [caso_fecha_cierre_src_month, caso_tipo_nombre]
    measures: [count_caso]
    pivots: [caso_tipo_nombre]
    filters: [
      fth_caso.caso_fecha_cierre_src_month: "12 months",
      fth_caso.caso_tipo_nombre: "-(no informado)",
      fth_caso.fecha_entidad: "yesterday"
    ]
    label: "Evolutivo Anual Casos Cerrados x Tipo."
  }
}
