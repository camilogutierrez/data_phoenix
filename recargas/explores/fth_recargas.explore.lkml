include: "/recargas/views/fth_recargas.view.lkml"
include: "/aleph/views/*.view.lkml"

explore: fth_recargas {
  label: "Recargas"

  join: lk_producto_adquirido_estado {
    relationship: many_to_one
    sql_on: ${producto_adquirido_estado_sk} = ${lk_producto_adquirido_estado.producto_adquirido_estado_sk} ;;
    type: inner
  }
}
