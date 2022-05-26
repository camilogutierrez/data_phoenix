include: "/parque/views/fth_parque.view.lkml"
include: "/parque/views/fth_parque__promocion.view.lkml"
include: "/aleph/views/*.view.lkml"

explore: fth_parque {
  label: "Parque"
  group_label: "Parque"

  always_filter: {
    filters: [fth_parque.fecha_entidad_date: "today"]
  }

  join: fth_parque__promocion {
    view_label: "Parque Promociones Vigentes"
    sql: LEFT JOIN UNNEST(${fth_parque.promocion}) as fth_parque__promocion ;;
    relationship: one_to_many
  }

  ## For Filter Suggestions
  join: lk_cliente_segmento1 {
    relationship: many_to_one
    sql_on: ${fth_parque.cliente__cliente_segmento1_sk} = ${lk_cliente_segmento1.cliente_segmento1_sk} ;;
    type: inner
  }

  join: lk_cliente_segmento2 {
    relationship: many_to_one
    sql_on: ${fth_parque.cliente__cliente_segmento2_sk} = ${lk_cliente_segmento2.cliente_segmento2_sk} ;;
    type: inner
  }

  join: lk_cliente_tipo {
    relationship: many_to_one
    sql_on: ${fth_parque.cliente__cliente_tipo_sk} = ${lk_cliente_tipo.cliente_tipo_sk} ;;
    type: inner
  }

  join: lk_cuenta_estado {
    relationship: many_to_one
    sql_on: ${fth_parque.cliente__cuenta_estado_sk} = ${lk_cuenta_estado.cuenta_estado_sk} ;;
    type: inner
  }

  join: lk_cuenta_tipo {
    relationship: many_to_one
    sql_on: ${fth_parque.cliente__cuenta_tipo_sk} = ${lk_cuenta_tipo.cuenta_tipo_sk} ;;
    type: inner
  }

  join: lk_medio_pago_cuenta_bancaria_tipo {
    relationship: many_to_one
    sql_on: ${fth_parque.cliente__medio_pago_cuenta_bancaria_tipo_sk} = ${lk_medio_pago_cuenta_bancaria_tipo.medio_pago_cuenta_bancaria_tipo_sk} ;;
    type: inner
  }

  join: lk_medio_pago_entidad_financiera {
    relationship: many_to_one
    sql_on: ${fth_parque.cliente__medio_pago_entidad_financiera_sk} = ${lk_medio_pago_entidad_financiera.medio_pago_entidad_financiera_sk} ;;
    type: inner
  }

  join: lk_medio_pago_tarjeta_tipo {
    relationship: many_to_one
    sql_on: ${fth_parque.cliente__medio_pago_tarjeta_tipo_sk} = ${lk_medio_pago_tarjeta_tipo.medio_pago_tarjeta_tipo_sk} ;;
    type: inner
  }

  join: lk_medio_pago_tipo {
    relationship: many_to_one
    sql_on: ${fth_parque.cliente__medio_pago_tipo_sk} = ${lk_medio_pago_tipo.medio_pago_tipo_sk} ;;
    type: inner
  }

  join: lk_persona_tipo_documento {
    relationship: many_to_one
    sql_on: ${fth_parque.cliente__persona_tipo_documento_sk} = ${lk_persona_tipo_documento.persona_tipo_documento_sk} ;;
    type: inner
  }

  join: lk_caso_sub_tipo {
    relationship: many_to_one
    sql_on: ${fth_parque.orden_alta__caso_sub_tipo_sk} = ${lk_caso_sub_tipo.caso_sub_tipo_sk} ;;
    type: inner
  }

  join: lk_caso_tipo {
    relationship: many_to_one
    sql_on: ${fth_parque.orden_alta__caso_tipo_sk} = ${lk_caso_tipo.caso_tipo_sk} ;;
    type: inner
  }

  join: lk_orden_canal_origen {
    relationship: many_to_one
    sql_on: ${fth_parque.orden_alta__orden_canal_origen_sk} = ${lk_orden_canal_origen.orden_canal_origen_sk} ;;
    type: inner
  }

  join: lk_orden_item_accion {
    relationship: many_to_one
    sql_on: ${fth_parque.orden_alta__orden_item_accion_sk} = ${lk_orden_item_accion.orden_item_accion_sk} ;;
    type: inner
  }

  join: lk_orden_item_estado_provisionamiento {
    relationship: many_to_one
    sql_on: ${fth_parque.orden_alta__orden_item_estado_provisionamiento_sk} = ${lk_orden_item_estado_provisionamiento.orden_item_estado_provisionamiento_sk} ;;
    type: inner
  }

  join: lk_orden_item_sub_accion {
    relationship: many_to_one
    sql_on: ${fth_parque.orden_alta__orden_item_sub_accion_sk} = ${lk_orden_item_sub_accion.orden_item_sub_accion_sk} ;;
    type: inner
  }

  join: lk_orden_tipo_cambio_plan {
    relationship: many_to_one
    sql_on: ${fth_parque.orden_alta__orden_tipo_cambio_plan_sk} = ${lk_orden_tipo_cambio_plan.orden_tipo_cambio_plan_sk} ;;
    type: inner
  }

  join: lk_orden_tipo_gestion {
    relationship: many_to_one
    sql_on: ${fth_parque.orden_alta__orden_tipo_gestion_sk} = ${lk_orden_tipo_gestion.orden_tipo_gestion_sk} ;;
    type: inner
  }

  join: lk_orden_tipo_sub_gestion {
    relationship: many_to_one
    sql_on: ${fth_parque.orden_alta__orden_tipo_sub_gestion_sk} = ${lk_orden_tipo_sub_gestion.orden_tipo_sub_gestion_sk} ;;
    type: inner
  }

  join: lk_caso_estado {
    relationship: many_to_one
    sql_on: ${fth_parque.orden_baja__caso_estado_sk} = ${lk_caso_estado.caso_estado_sk} ;;
    type: inner
  }

  join: lk_caso_motivo_baja {
    relationship: many_to_one
    sql_on: ${fth_parque.orden_baja__caso_motivo_baja_sk} = ${lk_caso_motivo_baja.caso_motivo_baja_sk} ;;
    type: inner
  }

  join: lk_caso_motivo {
    relationship: many_to_one
    sql_on: ${fth_parque.orden_baja__caso_motivo_sk} = ${lk_caso_motivo_baja.caso_motivo_baja_sk} ;;
    type: inner
  }

  join: lk_caso_sub_motivo_baja {
    relationship: many_to_one
    sql_on: ${fth_parque.orden_baja__caso_sub_motivo_baja_sk} = ${lk_caso_sub_motivo_baja.caso_sub_motivo_baja_sk} ;;
    type: inner
  }

  join: lk_producto_tipo {
    relationship: many_to_one
    sql_on: ${fth_parque.plan_anterior__producto_tipo_sk} = ${lk_producto_tipo.producto_tipo_sk} ;;
    type: inner
  }

  join: lk_producto_familia {
    relationship: many_to_one
    sql_on: ${fth_parque.producto__producto_familia_sk} = ${lk_producto_familia.producto_familia_sk} ;;
    type: inner
  }

  join: lk_producto_mercado {
    relationship: many_to_one
    sql_on: ${fth_parque.producto__producto_mercado_sk} = ${lk_producto_mercado.producto_mercado_sk} ;;
    type: inner
  }

  join: lk_producto_sub_tipo {
    relationship: many_to_one
    sql_on: ${fth_parque.producto__producto_sub_tipo_sk} = ${lk_producto_sub_tipo.producto_sub_tipo_sk} ;;
    type: inner
  }

  join: lk_producto_adquirido_estado_provisionamiento {
    relationship: many_to_one
    sql_on: ${fth_parque.producto_adquirido_estado_provisionamiento_sk} = ${lk_producto_adquirido_estado_provisionamiento.producto_adquirido_estado_provisionamiento_sk} ;;
    type: inner
  }

  join: lk_producto_adquirido_estado_red {
    relationship: many_to_one
    sql_on: ${fth_parque.producto_adquirido_estado_red_sk} = ${lk_producto_adquirido_estado_red.producto_adquirido_estado_red_sk} ;;
    type: inner
  }

  join: lk_producto_adquirido_estado {
    relationship: many_to_one
    sql_on: ${fth_parque.producto_adquirido_estado_sk} = ${lk_producto_adquirido_estado.producto_adquirido_estado_sk} ;;
    type: inner
  }

  join: lk_producto_adquirido_sub_estado {
    relationship: many_to_one
    sql_on: ${fth_parque.producto_adquirido_sub_estado_sk} = ${lk_producto_adquirido_sub_estado.producto_adquirido_sub_estado_sk} ;;
    type: inner
  }

  join: lk_punto_venta_canalidad2 {
    relationship: many_to_one
    sql_on: ${fth_parque.punto_venta__punto_venta_canalidad2_sk} = ${lk_punto_venta_canalidad2.punto_venta_canalidad2_sk} ;;
    type: inner
  }

  join: lk_punto_venta_tipo_canal {
    relationship: many_to_one
    sql_on: ${fth_parque.punto_venta__punto_venta_tipo_canal_sk} = ${lk_punto_venta_tipo_canal.punto_venta_tipo_canal_sk} ;;
    type: inner
  }

  join: lk_punto_venta_tipo_contacto {
    relationship: many_to_one
    sql_on: ${fth_parque.punto_venta__punto_venta_tipo_contacto_sk} = ${lk_punto_venta_tipo_contacto.punto_venta_tipo_contacto_sk} ;;
    type: inner
  }

}
