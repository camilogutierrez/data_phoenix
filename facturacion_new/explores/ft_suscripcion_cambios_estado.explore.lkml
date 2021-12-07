include: "/facturacion_new/views/ft_suscripcion_cambios_estado.view.lkml"

explore: ft_suscripcion_cambios_estado {
  from: ft_suscripcion_cambios_estado_view
  label: "Suscripcion Cambios Estado"
  group_label: "Phoenix"
}
