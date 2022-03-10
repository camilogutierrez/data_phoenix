include: "/orden/views/fth_orden.view.lkml"
include: "/aleph/views/*.view.lkml"
include: "/orden/others/orden_datagroups.lkml"
include: "/orden/views/dm_cuenta_cliente.view.lkml"

explore: fth_orden {
  label: "Orden"
  group_label: "Orden"

  always_filter: {
    filters: [fth_orden.fecha_entidad: "today"]
  }

  persist_with: orden_default_dg

  join: fth_orden_medio_pago {
    view_label: "Medio de Pago"
    sql: LEFT JOIN UNNEST(${fth_orden.medio_pago}) as fth_orden_medio_pago_view ;;
    relationship: one_to_many
  }

  join: lk_orden_item_estado_provisionamiento {
    relationship: many_to_one
    sql_on: ${fth_orden.orden_item_estado_provisionamiento_sk} = ${lk_orden_item_estado_provisionamiento.orden_item_estado_provisionamiento_sk} ;;
    type: inner
  }

  join: lk_orden_item_estado {
    relationship: many_to_one
    sql_on: ${fth_orden.orden_item_estado_sk} = ${lk_orden_item_estado.orden_item_estado_sk} ;;
    type: inner
  }

  join: lk_orden_item_accion {
    relationship: many_to_one
    sql_on: ${fth_orden.orden_item_accion_sk} = ${lk_orden_item_accion.orden_item_accion_sk} ;;
    type: inner
  }

  join: lk_orden_item_sub_motivo_baja {
    relationship: many_to_one
    sql_on: ${fth_orden.orden_item_sub_motivo_baja_sk} = ${lk_orden_item_sub_motivo_baja.orden_item_sub_motivo_baja_sk} ;;
    type: inner
  }

  join: lk_caso_tipo {
    relationship: many_to_one
    sql_on: ${fth_orden.caso_tipo_sk} = ${lk_caso_tipo.caso_tipo_sk} ;;
    type: inner
  }

  join: lk_caso_sub_tipo {
    relationship: many_to_one
    sql_on: ${fth_orden.caso_sub_tipo_sk} = ${lk_caso_sub_tipo.caso_sub_tipo_sk} ;;
    type: inner
  }

  join: lk_caso_estado {
    relationship: many_to_one
    sql_on: ${fth_orden.caso_estado_sk} = ${lk_caso_estado.caso_estado_sk} ;;
    type: inner
  }

  join: lk_cliente_segmento1 {
    relationship: many_to_one
    sql_on: ${fth_orden.cliente_segmento1_sk} = ${lk_cliente_segmento1.cliente_segmento1_sk} ;;
    type: inner
  }

  join: lk_cliente_segmento2 {
    relationship: many_to_one
    sql_on: ${fth_orden.cliente_segmento2_sk} = ${lk_cliente_segmento2.cliente_segmento2_sk} ;;
    type: inner
  }

  join: lk_persona_tipo_documento {
    relationship: many_to_one
    sql_on: ${fth_orden.persona_tipo_documento_sk} = ${lk_persona_tipo_documento.persona_tipo_documento_sk} ;;
    type: inner
  }

  join: lk_orden_item_sub_accion {
    relationship: many_to_one
    sql_on: ${fth_orden.orden_item_sub_accion_sk} = ${lk_orden_item_sub_accion.orden_item_sub_accion_sk} ;;
    type: inner
  }

  join: lk_cuenta_tipo {
    relationship: many_to_one
    sql_on: ${fth_orden.cuenta_tipo_sk} = ${lk_cuenta_tipo.cuenta_tipo_sk} ;;
    type: inner
  }

  join: lk_cliente_tipo {
    relationship: many_to_one
    sql_on: ${fth_orden.cliente_tipo_sk} = ${lk_cliente_tipo.cliente_tipo_sk} ;;
    type: inner
  }

  join: lk_orden_tipo_gestion {
    relationship: many_to_one
    sql_on: ${fth_orden.orden_tipo_gestion_sk} = ${lk_orden_tipo_gestion.orden_tipo_gestion_sk} ;;
    type: inner
  }

  join: lk_orden_tipo_sub_gestion {
    relationship: many_to_one
    sql_on: ${fth_orden.orden_tipo_sub_gestion_sk} = ${lk_orden_tipo_sub_gestion.orden_tipo_sub_gestion_sk} ;;
    type: inner
  }

  join: lk_orden_tipo_cambio_plan {
    relationship: many_to_one
    sql_on: ${fth_orden.orden_tipo_cambio_plan_sk} = ${lk_orden_tipo_cambio_plan.orden_tipo_cambio_plan_sk} ;;
    type: inner
  }

  join: lk_orden_servicio_entrega {
    relationship: many_to_one
    sql_on: ${fth_orden.orden_servicio_entrega_sk} = ${lk_orden_servicio_entrega.orden_servicio_entrega_sk} ;;
    type: inner
  }

  join: lk_orden_metodo_entrega {
    relationship: many_to_one
    sql_on: ${fth_orden.orden_metodo_entrega_sk} = ${lk_orden_metodo_entrega.orden_metodo_entrega_sk} ;;
    type: inner
  }

  join: lk_orden_canal_origen {
    relationship: many_to_one
    sql_on: ${fth_orden.orden_canal_origen_sk} = ${lk_orden_canal_origen.orden_canal_origen_sk} ;;
    type: inner
  }

  join: lk_orden_estado_aprobacion {
    relationship: many_to_one
    sql_on: ${fth_orden.orden_estado_aprobacion_sk} = ${lk_orden_estado_aprobacion.orden_estado_aprobacion_sk} ;;
    type: inner
  }

  join: lk_orden_estado_provisionamiento {
    relationship: many_to_one
    sql_on: ${fth_orden.orden_estado_provisionamiento_sk} = ${lk_orden_estado_provisionamiento.orden_estado_provisionamiento_sk} ;;
    type: inner
  }

  join: lk_orden_estado {
    relationship: many_to_one
    sql_on: ${fth_orden.orden_estado_sk} = ${lk_orden_estado.orden_estado_sk} ;;
    type: inner
  }

  join: lk_orden_estado_trackeo {
    relationship: many_to_one
    sql_on: ${fth_orden.orden_estado_trackeo_sk} = ${lk_orden_estado_trackeo.orden_estado_trackeo_sk} ;;
    type: inner
  }

  join: lk_producto_mercado {
    relationship: many_to_one
    sql_on: ${fth_orden.producto_mercado_sk} = ${lk_producto_mercado.producto_mercado_sk} ;;
    type: inner
  }

  join: lk_producto_tipo {
    relationship: many_to_one
    sql_on: ${fth_orden.producto_tipo_sk} = ${lk_producto_tipo.producto_tipo_sk} ;;
    type: inner
  }

  join: lk_producto_estado {
    relationship: many_to_one
    sql_on: ${fth_orden.producto_adquirido_estado_sk} = ${lk_producto_estado.producto_estado_sk} ;;
    type: inner
  }

  join: lk_producto_familia {
    relationship: many_to_one
    sql_on: ${fth_orden.producto_familia_sk} = ${lk_producto_familia.producto_familia_sk} ;;
    type: inner
  }

  join: lk_producto_sub_tipo {
    relationship: many_to_one
    sql_on: ${fth_orden.producto_sub_tipo_sk} = ${lk_producto_sub_tipo.producto_sub_tipo_sk} ;;
    type: inner
  }

  join: lk_producto_adquirido_estado {
    relationship: many_to_one
    sql_on: ${fth_orden.producto_adquirido_estado_sk} = ${lk_producto_adquirido_estado.producto_adquirido_estado_sk} ;;
    type: inner
  }

  join: lk_producto_adquirido_sub_estado {
    relationship: many_to_one
    sql_on: ${fth_orden.producto_adquirido_sub_estado_sk} = ${lk_producto_adquirido_sub_estado.producto_adquirido_sub_estado_sk} ;;
    type: inner
  }

  join: lk_producto_sub_tipo_opa {
    from: lk_producto_sub_tipo
    relationship: many_to_one
    sql_on: ${fth_orden.opa_producto_sub_tipo_sk} = ${lk_producto_sub_tipo_opa.producto_sub_tipo_sk} ;;
    type: inner
  }

  join: lk_orden_estado_opa {
    from: lk_orden_estado
    relationship: many_to_one
    sql_on: ${fth_orden.opa_orden_estado_sk} = ${lk_orden_estado_opa.orden_estado_sk} ;;
    type: inner
  }

  join: lk_orden_item_accion_opa {
    from: lk_orden_item_accion
    relationship: many_to_one
    sql_on: ${fth_orden.opa_orden_item_accion_sk} = ${lk_orden_item_accion_opa.orden_item_accion_sk} ;;
    type: inner
  }

  join: lk_producto_tipo_opa {
    from: lk_producto_tipo
    relationship: many_to_one
    sql_on: ${fth_orden.opa_producto_tipo_sk} = ${lk_producto_tipo_opa.producto_tipo_sk} ;;
    type: inner
  }

  join: lk_punto_venta_tipo_canal {
    relationship: many_to_one
    sql_on: ${fth_orden.punto_venta_tipo_canal_sk} = ${lk_punto_venta_tipo_canal.punto_venta_tipo_canal_sk} ;;
    type: inner
  }

  join: lk_punto_venta_tipo_contacto {
    relationship: many_to_one
    sql_on: ${fth_orden.punto_venta_tipo_contacto_sk} = ${lk_punto_venta_tipo_contacto.punto_venta_tipo_contacto_sk} ;;
    type: inner
  }

  join: lk_punto_venta_tipo {
    relationship: many_to_one
    sql_on: ${fth_orden.punto_venta_tipo_sk} = ${lk_punto_venta_tipo.punto_venta_tipo_sk} ;;
    type: inner
  }

  join: lk_punto_venta_canalidad2 {
    relationship: many_to_one
    sql_on: ${fth_orden.punto_venta_canalidad2_sk} = ${lk_punto_venta_canalidad2.punto_venta_canalidad2_sk} ;;
    type: inner
  }

  join: dm_cuenta_cliente {
    relationship: many_to_one
    sql_on: (${fth_orden.cuenta_srcid} = ${dm_cuenta_cliente.cuenta_srcid}) AND (${fth_orden.cliente_srcid} = ${dm_cuenta_cliente.cliente_srcid}) ;;
    type: left_outer
  }

























}
