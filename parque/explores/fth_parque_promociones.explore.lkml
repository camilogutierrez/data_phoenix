include: "/parque/views/fth_parque_promociones.view.lkml"
include: "/aleph/views/*.view.lkml"
include: "/parque/views/lk_cierres_parque_promociones.view.lkml"
include: "/global/views/lk_promocion.view.lkml"

explore: fth_parque_promociones {
  label: "Promociones"
  group_label: "Parque"

  always_filter: {
    filters: [fth_parque_promociones.fecha_entidad: "today"]
  }

  ## For Filter Suggestions

  join: lk_cierres_parque_promociones {
    view_label: "Cierres"
    relationship: many_to_one
    sql_on: ${fth_parque_promociones.fecha_entidad} = ${lk_cierres_parque_promociones.fecha_entidad} ;;
    type: inner
  }

  join: lk_caso_sub_tipo {
    relationship: many_to_one
    sql_on: ${fth_parque_promociones.caso_sub_tipo_sk} = ${lk_caso_sub_tipo.caso_sub_tipo_sk} ;;
    type: inner
  }

  join: lk_caso_tipo {
    relationship: many_to_one
    sql_on: ${fth_parque_promociones.caso_tipo_sk} = ${lk_caso_tipo.caso_tipo_sk} ;;
    type: inner
  }

  join: lk_orden_canal_origen {
    relationship: many_to_one
    sql_on: ${fth_parque_promociones.orden_canal_origen_sk} = ${lk_orden_canal_origen.orden_canal_origen_sk} ;;
    type: inner
  }

  join: lk_orden_tipo_cambio_plan {
    relationship: many_to_one
    sql_on: ${fth_parque_promociones.orden_tipo_cambio_plan_sk} = ${lk_orden_tipo_cambio_plan.orden_tipo_cambio_plan_sk} ;;
    type: inner
  }

  join: lk_orden_tipo_gestion {
    relationship: many_to_one
    sql_on: ${fth_parque_promociones.orden_tipo_gestion_sk} = ${lk_orden_tipo_gestion.orden_tipo_gestion_sk} ;;
    type: inner
  }

  join: lk_orden_tipo_sub_gestion {
    relationship: many_to_one
    sql_on: ${fth_parque_promociones.orden_tipo_sub_gestion_sk} = ${lk_orden_tipo_sub_gestion.orden_tipo_sub_gestion_sk} ;;
    type: inner
  }

  join: lk_persona_tipo_documento {
    relationship: many_to_one
    sql_on: ${fth_parque_promociones.persona_tipo_documento_sk} = ${lk_persona_tipo_documento.persona_tipo_documento_sk} ;;
    type: inner
  }

  join: lk_pago_ajuste_precio_origen {
    relationship: many_to_one
    sql_on: ${fth_parque_promociones.pago_ajuste_precio_origen_sk} = ${lk_pago_ajuste_precio_origen.pago_ajuste_precio_origen_sk} ;;
    type: inner
  }

  join: lk_promocion {
    relationship: many_to_one
    sql_on: ${fth_parque_promociones.promocion_srcid} = ${lk_promocion.promocion_srcid} ;;
    type: inner
  }
}
