include: "/facturacion/views/ft_suscripcion_cambios_estado.view.lkml"

explore: suscripcion_cambios_estado {
  from: ft_suscripcion_cambios_estado_view
  group_label: "Phoenix"
}
