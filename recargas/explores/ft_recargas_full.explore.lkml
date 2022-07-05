include: "/recargas/views/ft_recargas_full.view.lkml"
include: "/aleph/views/*.view.lkml"

explore: ft_recargas_full {
  label: "Recargas"

  join: lk_producto_adquirido_estado {
    relationship: many_to_one
    sql_on: ${producto_adquirido_estado_sk} = ${lk_producto_adquirido_estado.producto_adquirido_estado_sk} ;;
    type: inner
  }
}
